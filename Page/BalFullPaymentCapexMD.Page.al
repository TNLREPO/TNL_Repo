page 70119 "Bal/Full Payment Capex-MD"
{
    CardPageID = "Capex Card";
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Document Type=CONST(Capex),
                            Compliance=CONST(Yes),
                            Balance Paymt.=CONST(No),
                            Closed=CONST(No),
                            Reject=CONST(No),
                            Bal. Paymt. Audit=CONST(Approved),
                            Bal. Paymt. MD=FILTER(' '),
                            Balance Paymt. Appr.=CONST(Yes),
                            Proposed Purchase Amount=FILTER(>=100,000));

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
                field("Capex Type";"Capex Type")
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
        CurrPage.EDITABLE := TRUE;
    end;
}

