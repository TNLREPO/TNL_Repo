page 50215 "Posted COF Report"
{
    Editable = false;
    PageType = List;
    SourceTable = Table5902;
    SourceTableView = WHERE (Posted = CONST (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("No."; "No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Amount; Amount)
                {
                }
            }
        }
    }

    actions
    {
    }
}

