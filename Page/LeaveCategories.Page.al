page 50060 "Leave Categories"
{
    PageType = Card;
    SourceTable = Table50074;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Code; Code)
                {
                }
                field(Description; Description)
                {
                }
                field("Category Type"; "Category Type")
                {
                }
                field(Consuming; Consuming)
                {
                }
                field("Payment Allowed"; "Payment Allowed")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

