namespace AL_TNL.AL_TNL;
using Microsoft.Sales.History;

codeunit 50002 "FIRS e-Invoice Handler"
{
    SingleInstance = true;
    Subtype = Normal;

    procedure SubmitInvoiceToFIRS(SalesInv: Record "Sales Invoice Header"): Text;
    var
        JsonBuilder: Codeunit "FIRS JSON Builder";
        HttpClient: HttpClient;
        HttpRequestMessage: HttpRequestMessage;
        Response: HttpResponseMessage;
        Content: HttpContent;
        ResponseText: Text;
        EncryptedJson: Text;
        Token: Text;
        SEK: Text;
        Headers: HttpHeaders;
        ContentHeaders: HttpHeaders;
        Client: HttpClient;


    begin
        // Step 1: Build the JSON invoice
        EncryptedJson := EncryptPayloadViaAzure(JsonBuilder.BuildInvoiceJson(SalesInv), SEK);

        // Step 2: Get Auth Token - Replace with your logic or hardcoded token
        Token := 'REPLACE_WITH_BEARER_TOKEN';

        // Step 3: Send to FIRS

        HttpRequestMessage.Method := 'POST';
        HttpRequestMessage.SetRequestUri('https://einvoice.firs.gov.ng/api/generate-irn');
        HttpRequestMessage.GetHeaders(Headers);
        Headers.Add('Authorization', 'Bearer ' + Token);
        Headers.Add('Content-Type', 'application/json');
        Headers.Add('client_id', 'your_client_id');
        Headers.Add('subscription-key', 'your_subscription_key');

        Content.WriteFrom(EncryptedJson);
        Content.GetHeaders(ContentHeaders);
        ContentHeaders.Add('Content-Type', 'application/json');
        HttpRequestMessage.Content := Content;
        Client.Send(HttpRequestMessage, Response);
        Response.Content.ReadAs(ResponseText);
        exit(ResponseText); // This includes IRN, QR

        Content.WriteFrom(EncryptedJson);
        HttpRequestMessage.Content := Content;

        HttpClient.Send(HttpRequestMessage, Response);
        Response.Content.ReadAs(ResponseText);

        // Step 4: Parse response
        ParseAndStoreIRN(ResponseText, SalesInv);
    end;

    procedure EncryptPayloadViaAzure(PlainText: Text; SEKBase64: Text): Text
    var

        HttpClient: HttpClient;
        HttpContent: HttpContent;
        HttpResponseMessage: HttpResponseMessage;
        HttpHeaders: HttpHeaders;
        HttpRequestMessage: HttpRequestMessage;
        APIUrl: Text;
        JsonPayload: Text;
        ResultText: Text;
    begin
        // Your Azure Function endpoint
        APIUrl := 'https://<your-function-app>.azurewebsites.net/api/EncryptPayload?code=<your-function-key>';

        // Format the JSON payload
        JsonPayload := GetEncryptedPayloadBody(PlainText, SEKBase64);

        // Build the HTTP request

        HttpContent.WriteFrom(JsonPayload);

        HttpHeaders.Clear();
        HttpRequestMessage.SetRequestUri(APIUrl);
        HttpRequestMessage.Method := 'POST';
        HttpRequestMessage.Content := HttpContent;
        HttpRequestMessage.GetHeaders(HttpHeaders);
        HttpClient.Send(HttpRequestMessage, HttpResponseMessage);

        // Send request
        HttpClient.Send(HttpRequestMessage, HttpResponseMessage);

        if not HttpResponseMessage.IsSuccessStatusCode then
            Error('Encryption API failed. Status: %1', HttpResponseMessage.HttpStatusCode);

        HttpResponseMessage.Content.ReadAs(ResultText);
        exit(ResultText);
    end;

    local procedure GetEncryptedPayloadBody(PayloadText: Text; SEK: Text): Text
    var
        EscapedPayload: Text;
    begin
        EscapedPayload := EscapeJson(PayloadText);
        exit('{ "payload": "' + EscapedPayload + '", "sek": "' + SEK + '" }');
    end;

    local procedure EscapeJson(Value: Text): Text
    begin
        // Escapes JSON control characters
        Value := Value.Replace('\', '\\');
        Value := Value.Replace('"', '\"');
        Value := Value.Replace(Format(13), '\r'); // CR
        Value := Value.Replace(Format(10), '\n'); // LF
        exit(Value);
    end;

    procedure ParseAndStoreIRN(ResponseJson: Text; var SalesInv: Record "Sales Invoice Header");
    var
        JsonObj: JsonObject;
        IRN: Text;
        QRCode: Text;
        IRNValue: JsonToken;
        QRCodeValue: JsonToken;

    begin
        JsonObj.ReadFrom(ResponseJson);

        if JsonObj.Contains('irn') then begin
            JsonObj.Get('irn', IRNValue);
            IRN := IRNValue.AsValue().AsText();
        end;
        if JsonObj.Contains('qrCode') then begin
            JsonObj.Get('qrCode', QRCodeValue);
            QRCode := QRCodeValue.AsValue().AsText();
        end;
        QRCode := QRCodeValue.AsValue().AsText();

        SalesInv.Validate("External Document No.", IRN);
        SalesInv.Modify();
    end;
}
