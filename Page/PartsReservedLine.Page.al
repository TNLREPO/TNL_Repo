page 50356 "Parts Reserved Line"
{
    Caption = 'Service Line List';
    DataCaptionFields = "Fault Reason Code";
    PageType = Card;
    SourceTable = Table5902;
    SourceTableView = WHERE (Confirmed (Parts)=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Line No."; "Line No.")
                {
                }
                field("Posting Date"; "Posting Date")
                {
                }
                field("Document Type"; "Document Type")
                {
                }
                field("Document No."; "Document No.")
                {
                }
                field(Type; Type)
                {
                }
                field("No."; "No.")
                {
                }
                field("Location Code"; "Location Code")
                {
                    Visible = false;
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Ship-to Code"; "Ship-to Code")
                {
                }
                field("Unit of Measure Code"; "Unit of Measure Code")
                {
                }
                field("Job No."; "Job No.")
                {
                    Visible = false;
                }
                field("Job Task No."; "Job Task No.")
                {
                    Visible = false;
                }
                field("Job Line Type"; "Job Line Type")
                {
                    Visible = false;
                }
                field(Quantity; Quantity)
                {
                }
                field("Qty. to Ship"; "Qty. to Ship")
                {
                }
                field("Quantity Shipped"; "Quantity Shipped")
                {
                }
                field("Confirmed (Service)"; "Confirmed (Service)")
                {
                }
                field("Confirmed by (S)"; "Confirmed by (S)")
                {
                }
                field("Confirmed (Parts)"; "Confirmed (Parts)")
                {
                }
                field("Confirmed by (P)"; "Confirmed by (P)")
                {
                }
                field("Quantity (Base)"; "Quantity (Base)")
                {
                }
                field("Outstanding Qty. (Base)"; "Outstanding Qty. (Base)")
                {
                }
                field("Line Amount"; "Line Amount")
                {
                }
                field("Line Discount %"; "Line Discount %")
                {
                }
                field("Line Discount Amount"; "Line Discount Amount")
                {
                }
                field("Line Discount Type"; "Line Discount Type")
                {
                }
                field("Spare Part Action"; "Spare Part Action")
                {
                    Visible = false;
                }
                field("Fault Reason Code"; "Fault Reason Code")
                {
                    Visible = false;
                }
                field("Exclude Warranty"; "Exclude Warranty")
                {
                }
                field(Warranty; Warranty)
                {
                }
                field("Contract No."; "Contract No.")
                {
                }
                field("Service Item Line No."; "Service Item Line No.")
                {
                }
                field("Service Item No."; "Service Item No.")
                {
                }
                field("Service Item Serial No."; "Service Item Serial No.")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Line")
            {
                Caption = '&Line';
            }
        }
    }

    var
        ServHeader: Record 5900;
}

