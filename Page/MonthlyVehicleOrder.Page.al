page 50134 "Monthly Vehicle Order"
{
    PageType = Card;
    SourceTable = Table50026;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Period Starting"; "Period Starting")
                {
                }
                field("PO Number"; "PO Number")
                {
                }
                field(Purchaser; Purchaser)
                {
                }
                field("Customer Gen Bus Posting Group"; "Customer Gen Bus Posting Group")
                {
                }
                field(Customer; Customer)
                {
                }
                field("Line Vehicle Count"; "Line Vehicle Count")
                {
                }
                field("Vehicle Count"; "Vehicle Count")
                {
                }
                field("Currency Code"; "Currency Code")
                {
                }
                field("Exchange Rate"; "Exchange Rate")
                {
                }
                field("PO Created"; "PO Created")
                {
                }
                field("Posted Invoice No."; "Posted Invoice No.")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        CurrPage.EDITABLE((NOT "PO Created") AND ("Posted Invoice No." = ''));
    end;

    var
        CustRec: Record 18;
}

