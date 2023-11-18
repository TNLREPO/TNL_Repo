page 50207 "Stores Requisition List"
{
    CardPageID = "Stores Requisition Card";
    PageType = List;
    SourceTable = Table50101;
    SourceTableView = WHERE (Type = FILTER (Issue));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field(Date; Date)
                {
                }
                field("SIV No."; "SIV No.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

