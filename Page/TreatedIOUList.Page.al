page 50376 "Treated IOU List"
{
    CardPageID = "Treated IOU Card";
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50105;
    SourceTableView = SORTING (IOU No.)
                      WHERE (Posted = CONST (No),
                            Treated = FILTER (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("IOU No."; "IOU No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field(Description; Description)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Payment Date"; "Payment Date")
                {
                }
                field("Collected By"; "Collected By")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Expected Retirement Date"; "Expected Retirement Date")
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        IOURegister: Record 50105;
        PaymentRec: Record 50103;
        PaymentLine: Record 50104;
        IOURegister2: Record 50105;
        LineNo: Integer;
}

