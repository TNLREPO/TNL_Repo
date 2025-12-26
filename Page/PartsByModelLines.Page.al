page 50128 "Parts By Model Lines"
{
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = "Parts By Model";
    SourceTableView = SORTING("Model Code", "Part No.", Serial);
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
                field("X90 Plus CRUISE"; Rec."X90 Plus Cruise")
                {
                    //DataClassification = ToBeClassified;
                }
                field("X70 LIBERTY"; Rec."X70 LIBERTY")
                {

                }
                field("X70 PHEV"; Rec."X70 PHEV")
                {

                }
                field("X70 New Body"; Rec."X90 Plus Cruise")
                {

                }
                field("X70 Elegance"; Rec."X70 Plus Elegance")
                {

                }
                field("DASHING"; Rec."X1 DASHING")
                {

                }
                field("T2 TRAVELER"; Rec."T2 TRAVELER")
                {

                }
                field("T2 PHEV"; Rec."T2 PHEV")
                {

                }

                field("X50"; Rec."X50")
                {
                    Caption = 'X50';
                    ApplicationArea = All;
                    Visible = X50Visible;

                }
                field("Serial"; Rec."Serial")
                {
                    ApplicationArea = all;
                }
                field("Qty Sold"; Rec."Q'ty Sold")
                {
                }
                field("Sales Rate"; Rec."Sales Rate")
                {
                }
                field("Total Purchase"; Rec."Total Purchase")
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
                field(Comment; Rec.Comment)
                {

                }
                field(Remarks; Rec.Remarks)
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
        UpdateX50Viosibility();
        Rec.SETASCENDING(serial, true); // false for descending
    end;

    trigger OnAfterGetCurrRecord()
    begin
        UpdateX50Viosibility()
    end;


    var
        AvsalesVisible: Boolean;
        TotalSaleVisible: Boolean;
        X50Visible: Boolean;

    local procedure UpdateX50Viosibility()
    var
        PartModel: Record "Parts By Model";
    begin
        PartModel.SetRecFilter();
        PartModel.Copy(Rec);
        PartModel.SetRange(X50, true);
        X50Visible := PartModel.FindFirst();
    end;



}

