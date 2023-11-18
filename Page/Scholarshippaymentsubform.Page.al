page 50082 "Scholarship payment subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    Editable = true;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = Table50090;
    SourceTableView = SORTING (Register No, Employee No, Rec No);

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Employee No"; "Employee No")
                {
                }
                field("Date Paid"; "Date Paid")
                {
                }
                field("Document No"; "Document No")
                {
                }
                field(Amount; Amount)
                {
                }
                field(Comment; Comment)
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        RegRec: Record "50089";
        SchPayRec: Record "50090";
        AmtPaid: Decimal;
}

