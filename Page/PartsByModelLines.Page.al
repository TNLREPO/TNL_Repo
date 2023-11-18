page 50128 "Parts By Model Lines"
{
    DelayedInsert = true;
    PageType = List;
    SourceTable = Table50023;
    SourceTableView = SORTING (Model Code, Part No.);

    layout
    {
        area(content)
        {
            repeater()
            {
                Editable = true;
                field("Model Code"; "Model Code")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Model Name"; "Model Name")
                {
                    Editable = false;
                    Visible = false;
                }
                field("Part No."; "Part No.")
                {
                }
                field("Part Description"; "Part Description")
                {
                }
                field(TotalSale; Inv)
                {
                    Caption = 'Total 12 Month Sales';
                    DecimalPlaces = 0 : 0;
                    Visible = TotalSaleVisible;
                }
                field(Avsales; Avesale)
                {
                    Caption = 'Average Sales of 12 Months';
                    DecimalPlaces = 0 : 0;
                    Visible = AvsalesVisible;
                }
                field("Q'ty On Hand"; "Q'ty On Hand")
                {
                }
                field("Q'ty On Purchase Order"; "Q'ty On Purchase Order")
                {
                }
                field("Q'ty On Sales Order"; "Q'ty On Sales Order")
                {
                }
                field("Lost Sales Q'ty"; "Lost Sales Q'ty")
                {
                }
                field("Part Category"; "Part Category")
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
        [InDataSet]
        AvsalesVisible: Boolean;
        [InDataSet]
        TotalSaleVisible: Boolean;
}

