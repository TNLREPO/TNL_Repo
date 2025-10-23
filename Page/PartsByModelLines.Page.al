page 50128 "Parts By Model Lines"
{
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "Parts By Model";
    SourceTableView = SORTING("Model Code", "Part No.");
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(Group)
            {
                Editable = true;
                field("Model Code"; Rec."Model Code")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Model Name"; Rec."Model Name")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Part No."; Rec."Part No.")
                {
                }
                field("Part Description"; Rec."Part Description")
                {
                }
                field(TotalSale; Rec.Inv)
                {
                    Caption = 'Total 12 Month Sales';
                    DecimalPlaces = 0 : 0;
                    Visible = TotalSaleVisible;
                }
                field(Avsales; Rec.Avesale)
                {
                    Caption = 'Average Sales of 12 Months';
                    DecimalPlaces = 0 : 0;
                    Visible = AvsalesVisible;
                }
                field("X70 Plus"; Rec."X70 Plus")
                {
                    //DataClassification = ToBeClassified;
                }
                field("X70 LIBERTY"; Rec."X70 LIBERTY")
                {

                }
                field("X70 HYBRID"; Rec."X70 HYBRID")
                {

                }
                field("X90 PLUS"; Rec."X90 Plus")
                {

                }
                field("X70 Elegance"; Rec."X70 Elegance")
                {

                }
                field("X1 DASHING"; Rec."X1 DASHING")
                {

                }
                field("T2 TRAVELER"; Rec."T2 TRAVELER")
                {

                }
                field("T2 HYBRID"; Rec."T2 HYBRID")
                {

                }

                field("X50"; Rec."X50")
                {

                }

                field("Q'ty On Hand"; Rec."Q'ty On Hand")
                {
                }
                field("Q'ty On Purchase Order"; Rec."Q'ty On Purchase Order")
                {
                }
                field("Q'ty On Sales Order"; Rec."Q'ty On Sales Order")
                {
                }
                field("Lost Sales Q'ty"; Rec."Lost Sales Q'ty")
                {
                }
                field("Part Category"; Rec."Part Category")
                {
                }
            }

        }
    }

    actions
    {
    }

    trigger OnClosePage()
    begin
        AvsalesVisible := FALSE;
        TotalSaleVisible := FALSE;
    end;

    trigger OnOpenPage()
    begin
        AvsalesVisible := FALSE;
        TotalSaleVisible := FALSE;
    end;

    var
        AvsalesVisible: Boolean;
        TotalSaleVisible: Boolean;
}

