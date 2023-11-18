page 70131 "Head of Dept. Appr."
{
    CardPageID = "Opex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Send = CONST (Yes),
                            Head of Department=FILTER(<>Approved),
                            Reject=CONST(No),
                            Document Type=CONST(Opex));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No.";"No.")
                {
                    Caption = 'Opex No.';
                }
                field(Date;Date)
                {
                }
                field("Requester Name";"Requester Name")
                {
                }
                field("Purchase Justification";"Purchase Justification")
                {
                }
                field("Proposed Purchase Amount";"Proposed Purchase Amount")
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

