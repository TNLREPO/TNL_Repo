page 70143 "LPO Card"
{
    PageType = Card;
    SourceTable = Table70010;

    layout
    {
        area(content)
        {
            group(General)
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

                    trigger OnValidate()
                    begin
                        IF Vatable = TRUE THEN
                            "Vat amount" := Amount * 0.075;
                    end;
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
                field("Purch.Requisition Date"; "Purch.Requisition Date")
                {
                }
                field("No. Series"; "No. Series")
                {
                }
                field(Quantity; Quantity)
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
        area(navigation)
        {
            action("Print LPO")
            {
                Caption = 'Print LPO';
                Image = PostPrint;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                    LPO.SETRANGE("LPO No.", "LPO No.");
                    IF LPO.FINDFIRST THEN
                        REPORT.RUNMODAL(50446, TRUE, TRUE, LPO);
                end;
            }
        }
    }

    var
        LPO: Record 70010;
}

