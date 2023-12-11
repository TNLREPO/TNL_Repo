report 50354 "Parts By Maintenance"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PartsByMaintenance.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            RequestFilterFields = "Inventory Posting Group", "Product Group Code", "Product Code";
            column(Maintenance_ModeCaption; Maintenance_ModeCaptionLbl)
            {
            }
            column(Family_NameCaption; Family_NameCaptionLbl)
            {
            }
            column(Item_No_Caption; Item_No_CaptionLbl)
            {
            }
            column(Category_TypeCaption; Category_TypeCaptionLbl)
            {
            }
            column(Posting_DateCaption; Posting_DateCaptionLbl)
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(LocationCaption; LocationCaptionLbl)
            {
            }
            column(QtyCaption; QtyCaptionLbl)
            {
            }
            column(Sales_AmountCaption; Sales_AmountCaptionLbl)
            {
            }
            column(Item_No_; "No.")
            {
            }
            dataitem(DataItem8894; Table5802)
            {
                DataItemLink = Item No.=FIELD(No.);
                RequestFilterFields = "Posting Date", "Item No.", "Location Code", "Item Ledger Entry Type", "Sales Amount (Actual)", "Source No.";
                column(Item__Product_Group_Code_; Item."Product Group Code")
                {
                }
                column(Value_Entry__Item_No__; "Item No.")
                {
                }
                column(Value_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(Value_Entry_Description; Description)
                {
                }
                column(Value_Entry__Location_Code_; "Location Code")
                {
                }
                column(V1__Invoiced_Quantity_; -1 * "Invoiced Quantity")
                {
                }
                column(Value_Entry__Sales_Amount__Actual__; "Sales Amount (Actual)")
                {
                }
                column(Item_Maintenance; Item.Maintenance)
                {
                }
                column(Item__Category_Type_; Item."Category Type")
                {
                }
                column(Value_Entry_Entry_No_; "Entry No.")
                {
                }
            }
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        Maintenance_ModeCaptionLbl: Label 'Maintenance Mode';
        Family_NameCaptionLbl: Label 'Family Name';
        Item_No_CaptionLbl: Label 'Item No.';
        Category_TypeCaptionLbl: Label 'Category Type';
        Posting_DateCaptionLbl: Label 'Posting Date';
        DescriptionCaptionLbl: Label 'Description';
        LocationCaptionLbl: Label 'Location';
        QtyCaptionLbl: Label 'Qty';
        Sales_AmountCaptionLbl: Label 'Sales Amount';
}

