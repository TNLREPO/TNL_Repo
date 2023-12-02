page 70237 "Leave Req. Approval"
{
    CardPageID = "Leave Request Card";
    PageType = List;
    SourceTable = "Leave Request3";
    SourceTableView = WHERE ("Global Dimension 1 code"=filter ('08AUDSYS'),
                            "Send for Approval"=CONST(true),
                           "1st Approval Status"=FILTER (' '|"On hold"));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Request No.";Rec."Request No.")
                {
                }
                field("Entry Date";Rec."Entry Date")
                {
                }
                field("Request Type";Rec."Request Type")
                {
                }
                field(Requester;Rec.Requester)
                {
                }
                field("Requester Name";Rec."Requester Name")
                {
                }
                field("User ID";Rec."User ID")
                {
                }
                field("Global Dimension 1 code";Rec."Global Dimension 1 code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

