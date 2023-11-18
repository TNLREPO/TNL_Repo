page 50477 "Posted Bulk Issue"
{
    Editable = false;
    PageType = List;
    SourceTable = Table50173;
    SourceTableView = WHERE (Issued = CONST (Yes));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                    Editable = false;
                }
                field(Item; Item)
                {
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field(Quantity; Quantity)
                {
                }
                field("Consignment No."; "Consignment No.")
                {
                }
                field("Collected By"; "Collected By")
                {
                }
                field(Issued; Issued)
                {
                }
                field("Date/Time"; "Date/Time")
                {
                }
            }
        }
    }

    actions
    {
    }
}

