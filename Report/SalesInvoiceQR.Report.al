report 51001 "Sales Invoice with QR"
{
    DefaultLayout = RDLC;
    ApplicationArea = All;
    RDLCLayout = 'Layout/SalesInvoiceQR.rdl';
    Caption = 'QR Sales Invoice';
    UsageCategory = Lists;

    dataset
    {
        dataitem(SalesInvoiceHeader; "Sales Invoice Header")
        {
            RequestFilterFields = "No.";

            column(No; "No.")
            {
            }
            column(SellToCustomerName; "Sell-to Customer Name")
            {
            }
            column(QRCodeImage; "QR Code Image")
            {
            }
            column(QRCodeData; "QR Code Data")
            {
            }
            // Add other fields as needed

            dataitem(SalesInvoiceLine; "Sales Invoice Line")
            {
                DataItemLink = "Document No." = field("No.");

                column(Description; Description)
                {
                }
                column(Quantity; Quantity)
                {
                }
                column(UnitPrice; "Unit Price")
                {
                }
                // Add other line fields as needed
            }
        }
    }


}