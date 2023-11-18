page 50605 "Treated Leave Request"
{
    CardPageID = "Approve Leave request card";
    Editable = false;
    PageType = List;
    SourceTable = Table70009;
    SourceTableView = WHERE (Treated = CONST (Yes),
                            Reject = CONST (No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry Date"; "Entry Date")
                {
                }
                field("Leave Category"; "Leave Category")
                {
                }
                field("Request No."; "Request No.")
                {
                }
                field(Requester; Requester)
                {
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("User ID"; "User ID")
                {
                }
                field(Treated; Treated)
                {
                }
                field(Employee; Employee)
                {
                }
                field("Actual Start Date"; "Actual Start Date")
                {
                }
                field("Actual End Date"; "Actual End Date")
                {
                }
                field("Actual Duration"; "Actual Duration")
                {
                }
                field("Leave Period"; "Leave Period")
                {
                }
                field("Annual Duration"; "Annual Duration")
                {
                }
                field("Total Leaves Due"; "Total Leaves Due")
                {
                }
            }
        }
    }

    actions
    {
    }
}

