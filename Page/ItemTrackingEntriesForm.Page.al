page 50122 "Item Tracking Entries Form"
{
    Caption = 'Item Tracking Entries';
    Editable = false;
    PageType = List;
    SaveValues = true;
    SourceTable = Table32;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Positive; Positive)
                {
                }
                field("Document No."; "Document No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Variant Code"; "Variant Code")
                {
                    Visible = false;
                }
                field(Description; Description)
                {
                    Visible = false;
                }
                field("Serial No."; "Serial No.")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Lot No."; "Lot No.")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Remaining Quantity"; "Remaining Quantity")
                {
                }
                field("Source Type"; "Source Type")
                {
                    Visible = false;
                }
                field("Warranty Date"; "Warranty Date")
                {
                }
                field("Expiration Date"; "Expiration Date")
                {
                }
                field("Entry No."; "Entry No.")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Item Tracking Entry")
            {
                Caption = '&Item Tracking Entry';
                action("Serial No. Information Card")
                {
                    Caption = 'Serial No. Information Card';
                    Image = SNInfo;
                    RunObject = Page 6509;
                    RunPageLink = Item No.=FIELD(Item No.),
                                  Variant Code=FIELD(Variant Code),
                                  Serial No.=FIELD(Serial No.);
                }
                action("Lot No. Information Card")
                {
                    Caption = 'Lot No. Information Card';
                    Image = LotInfo;
                    RunObject = Page 6508;
                                    RunPageLink = Item No.=FIELD(Item No.),
                                  Variant Code=FIELD(Variant Code),
                                  Lot No.=FIELD(Lot No.);
                }
            }
        }
        area(processing)
        {
            action("&Navigate")
            {
                Caption = '&Navigate';
                Image = Navigate;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    //Navigate.SetDoc("Posting Date","Document No.");
                    //Navigate.RUN;
                end;
            }
        }
    }
}

