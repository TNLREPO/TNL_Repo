page 70155 "Head of Dept. Appr.-Capex"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Send=CONST(Yes),
                            Head of Department=FILTER(<>Approved),
                            Reject=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date;Date)
                {
                }
                field("No.";"No.")
                {
                    Caption = 'Capex No.';
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Requester Department";"Requester Department")
                {
                }
                field("Sent By";"Sent By")
                {
                    Caption = 'Requester';
                }
                field("Department Code";"Department Code")
                {
                }
                field("Purchase Justification";"Purchase Justification")
                {
                }
                field(Vendor;Vendor)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        //UserSetup.GET(USERID);
        //SETFILTER("Department Code",UserSetup.Department);
    end;

    var
        UserSetup: Record "91";
}

