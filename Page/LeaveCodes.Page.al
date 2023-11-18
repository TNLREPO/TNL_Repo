page 50061 "Leave Codes"
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
                field(Consuming; Consuming)
                {
                }
                field("Payment Allowed"; "Payment Allowed")
                {
                }
                field("Category Type"; "Category Type")
                {
                }
                field("Default Duration"; "Default Duration")
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

