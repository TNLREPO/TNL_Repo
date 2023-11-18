page 70033 "Approved IOU Retirement List"
{
    CardPageID = "Approved IOU Retirement";
    PageType = List;
    SourceTable = Table50107;
    SourceTableView = WHERE (Posted = CONST (No),
                            Final Apprv. Status=CONST(Approved));

    layout
    {
        area(content)
        {
            repeater()
            {
                Editable = false;
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
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        BalAmt := 0;
        CALCFIELDS("Amount To Retire");
        BalAmt := "Original IOU Amount" - "Amount To Retire";
    end;

    var
        BalAmt: Decimal;
}

