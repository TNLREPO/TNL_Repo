page 50594 "Approved Pool Car Request List"
{
    CardPageID = "Approved Pool Car Request Card";
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table70002;
    SourceTableView = WHERE (2nd Approval Status=CONST(Approved));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No."; "Request No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                }
                field("Request Type"; "Request Type")
                {
                }
                field(Requester; Requester)
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Global Dimension 1 code"; "Global Dimension 1 code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

