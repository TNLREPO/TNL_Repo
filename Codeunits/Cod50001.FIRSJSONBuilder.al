namespace AL_TNL.AL_TNL;
using Microsoft.Sales.History;

codeunit 50001 "FIRS JSON Builder"
{
    procedure BuildInvoiceJson(SalesInv: Record "Sales Invoice Header"): Text;
    var
        JsonObject: JsonObject;
        JsonLines: JsonArray;
        SalesLine: Record "Sales Invoice Line";
        LineObj: JsonObject;
        JsonText: Text;
    begin
        JsonObject.Add('invoiceNumber', SalesInv."No.");
        JsonObject.Add('invoiceDate', Format(SalesInv."Posting Date", 0, '<Year4>-<Month,2>-<Day,2>'));

        SalesLine.SetRange("Document No.", SalesInv."No.");
        if SalesLine.FindSet() then begin
            repeat
                Clear(LineObj);
                LineObj.Add('description', SalesLine.Description);
                LineObj.Add('quantity', SalesLine.Quantity);
                LineObj.Add('rate', SalesLine."Unit Price");
                LineObj.Add('amount', SalesLine."Line Amount");
                JsonLines.Add(LineObj);
            until SalesLine.Next() = 0;
        end;

        JsonObject.Add('items', JsonLines);
        JsonObject.WriteTo(JsonText);
        exit(JsonText);

    end;
}
