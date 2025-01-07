namespace AL_TNL.AL_TNL;

codeunit 50005 "Call API"
{

    procedure SendPaymentRequest(var Rec: Record "Payment/Receipt.")
    var
        HttpClient: HttpClient;
        HttpContent: HttpContent;
        HttpResponseMessage: HttpResponseMessage;
        ContentHeaders: HttpHeaders;
        JsonObject: JsonObject;
        JsonArray: JsonArray;
        JsonResponse: JsonObject;
        PaymentPush: Record "Payment Push";
        //PaymentReceipt: Record "Payment/Receipt.";
        DeviceId: Text;
        Amt: Text;
        ToSend: Text;
        Window: Dialog;

    begin
        // Show "Please Wait" message
        Window.Open('Please Wait...');
        PaymentPush.Get();

        // Format values for JSON payload
        Amt := Format(Rec."Credit Amount");
        DeviceId := Rec."Device Id.";

        // Construct JSON object
        JsonObject.Add('deviceid', DeviceId);
        JsonObject.Add('transactionref', Rec."No.");
        JsonObject.Add('amount', Amt);
        JsonObject.Add('customername', Rec."Account Description");

        // Serialize JSON to text
        //ToSend := JsonObject.ToString();

        //ToSend := JsonArray.Add(JsonObject); // error?

        // Set up HTTP request
        HttpContent.WriteFrom(ToSend);

        //HttpContent.GetHeaders().Add('Content-Type', 'application/json');


        //HttpContent.GetHeaders(ContentHeaders);
        //ContentHeaders.Clear();
        //ContentHeaders.Add('Content-Type', 'application/json');

        //HttpClient.DefaultRequestHeaders.Add('Content-Type', 'application/json');
        //HttpClient.Send('POST', PaymentPush."Webservice Url", HttpContent, HttpResponseMessage);
        HttpClient.Post(PaymentPush."Webservice Url", HttpContent, HttpResponseMessage);

        // Check response status
        if HttpResponseMessage.IsSuccessStatusCode() then begin
            Rec."Payment Successful" := true;
            Rec."Payment Date" := CurrentDateTime();
            Rec.Modify();

            Message('Successful!');
        end else begin
            Error('Not successful!');
        end;

        // Close "Please Wait" message
        Window.Close();
    end;

}
