page 50175 "Poss Data List"
{
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50030;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(List; List)
                {
                }
                field("Order Type - A"; "Order Type - A")
                {
                }
                field("Distribution Code"; "Distribution Code")
                {
                }
                field("Order No"; "Order No")
                {
                }
                field(Portion; Portion)
                {
                }
                field("Item No"; "Item No")
                {
                }
                field(Partial; Partial)
                {
                }
                field("Package Type"; "Package Type")
                {
                }
                field("Trans Code"; "Trans Code")
                {
                }
                field("Order Type - B"; "Order Type - B")
                {
                }
                field(Urgent; Urgent)
                {
                }
                field("Order Type - C"; "Order Type - C")
                {
                }
                field("B/O"; "B/O")
                {
                }
                field(Currency; Currency)
                {
                }
                field("Process Type"; "Process Type")
                {
                }
                field("Rejection Code"; "Rejection Code")
                {
                }
                field("Alteration Code"; "Alteration Code")
                {
                }
                field("Part No. Supplied"; "Part No. Supplied")
                {
                    Caption = 'Supply Part No.';
                }
                field(Description; Description)
                {
                    Caption = 'Part Name';
                }
                field("Part No. Ordered"; "Part No. Ordered")
                {
                }
                field(Tarriff; Tarriff)
                {
                }
                field(Remarks; Remarks)
                {
                }
                field("Inventory CD"; "Inventory CD")
                {
                }
                field(TKB; TKB)
                {
                }
                field(Inspection; Inspection)
                {
                }
                field(EL; EL)
                {
                }
                field("Tra Date"; "Tra Date")
                {
                    Caption = 'Process Date';
                }
                field("Process Q'ty"; "Process Q'ty")
                {
                    Caption = 'Processed Qty';
                }
                field("Unit Price"; "Unit Price")
                {
                }
                field("Q'ty Ordered"; "Q'ty Ordered")
                {
                    Caption = 'Ordered Qty';
                }
                field("Processed Amount"; "Processed Amount")
                {
                }
                field("Part By supplied Q'ty"; "Part By supplied Q'ty")
                {
                }
                field("Part By Ordered Q'ty"; "Part By Ordered Q'ty")
                {
                }
                field("R/A Action"; "R/A Action")
                {
                }
                field("Balance Ordered Q'ty"; "Balance Ordered Q'ty")
                {
                }
                field("Initial Order Qty"; "Initial Order Qty")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Delete Duplicated Entry")
            {
                Caption = 'Delete Duplicated Entry';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    deletedup;
                end;
            }
            action("Carry Out R/A Action ")
            {
                Caption = 'Carry Out R/A Action ';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    SubRec;
                end;
            }
        }
    }
}

