page 70165 "LPO List-Capex"
{
    CardPageID = "LPO Card";
    PageType = List;
    SourceTable = Table70010;
    SourceTableView = WHERE (Purch.Requisition No=CONST(CPR*));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("LPO No."; "LPO No.")
                {
                }
                field("Vendor Name"; "Vendor Name")
                {
                }
                field(Address; Address)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Vat amount"; "Vat amount")
                {
                }
                field(Vatable; Vatable)
                {
                }
                field(Description; Description)
                {
                }
                field("Purch.Requisition No"; "Purch.Requisition No")
                {
                }
                field("Payment Terms"; "Payment Terms")
                {
                }
                field("Vendor No."; "Vendor No.")
                {
                }
                field("Purch.Requisition Date"; "Purch.Requisition Date")
                {
                }
                field("No. Series"; "No. Series")
                {
                }
                field("Capex-Opex No."; "Capex-Opex No.")
                {
                }
                field("Voucher Raised"; "Voucher Raised")
                {
                }
                field("Payment term detail"; "Payment term detail")
                {
                }
            }
        }
    }

    actions
    {
    }
}

