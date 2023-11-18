page 70034 "Posted IOU Retirement List"
{
    CardPageID = "Posted IOU Retirement";
    Editable = false;
    PageType = List;
    SourceTable = Table50107;
    SourceTableView = WHERE (Posted = CONST (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field("IOU No."; "IOU No.")
                {
                }
                field("Staff No."; "Staff No.")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
                field(Description; Description)
                {
                }
                field("User ID"; "User ID")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field("Original IOU Amount"; "Original IOU Amount")
                {
                }
                field("Amount To Retire"; "Amount To Retire")
                {
                }
                field(BalAmt; BalAmt)
                {
                    Caption = 'Balance';
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetCurrRecord()
    begin
        BalAmt := 0;
        CALCFIELDS("Amount To Retire");
        BalAmt := "Original IOU Amount" - "Amount To Retire";
    end;

    var
        BalAmt: Decimal;
}

