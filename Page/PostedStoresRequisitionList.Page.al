page 50208 "Posted Stores Requisition List"
{
    CardPageID = "Posted Stores Requisition Card";
    Editable = false;
    PageType = List;
    SourceTable = Table50101;
    SourceTableView = WHERE (Type = FILTER (Posted Issue));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field(Type; Type)
                {
                }
                field(Date; Date)
                {
                }
                field("SIV No."; "SIV No.")
                {
                    Editable = false;
                }
                field("Date Issued"; "Date Issued")
                {
                }
            }
        }
    }

    actions
    {
    }
}

