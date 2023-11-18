page 70141 "Closed Opex"
{
    CardPageID = "Opex Card";
    Editable = false;
    PageType = List;
    SourceTable = Table70008;
    SourceTableView = WHERE (Closed = CONST (Yes),
                            Document Type=CONST(Opex),
                            Reject=CONST(No));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Date; Date)
                {
                }
                field("No."; "No.")
                {
                    Caption = 'Opex No.';
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Requester Department"; "Requester Department")
                {
                }
                field("Head of Department"; "Head of Department")
                {
                }
                field("Head of Audit"; "Head of Audit")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Proposed Purchase Amount"; "Proposed Purchase Amount")
                {
                }
                field("Purchase Justification"; "Purchase Justification")
                {
                }
                field(TimeDate2; TimeDate2)
                {
                }
                field(TimeDate3; TimeDate3)
                {
                }
                field(TimeDate4; TimeDate4)
                {
                }
                field(TimeDate10; TimeDate10)
                {
                }
                field(TimeDate11; TimeDate11)
                {
                }
                field(TimeDate12; TimeDate12)
                {
                }
            }
        }
    }

    actions
    {
    }
}

