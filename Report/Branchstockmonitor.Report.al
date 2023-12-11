report 50224 "Branch stock monitor"
{
    DefaultLayout = RDLC;
    RDLCLayout = './Branchstockmonitor.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (No.)
                                WHERE (Inventory Posting Group=CONST(N_PARTS));
            RequestFilterFields = "Location Filter","Date Filter",Inventory,"Inventory (All Locations)";
            column(FORMAT_TODAY_0_4_;FORMAT(TODAY,0,4))
            {
            }
            column(COMPANYNAME;COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(USERID;USERID)
            {
            }
            column(Locrec_Code;Locrec.Code)
            {
            }
            column(Locrec_Name;Locrec.Name)
            {
            }
            column(Item__No__;"No.")
            {
            }
            column(Item_Description;Description)
            {
            }
            column(Item_Inventory;Inventory)
            {
            }
            column(Item__Inventory__All_Locations__;"Inventory (All Locations)")
            {
            }
            column(Item__Stock_Value_Posted_to_G_L_;"Stock Value Posted to G/L")
            {
            }
            column(Item__Stock_Value_Posted_to_G_L__Control1000000025;"Stock Value Posted to G/L")
            {
            }
            column(Location_Stock_Holding_Value_;'Location Stock Holding Value')
            {
            }
            column(Locrec__Insured_Value_;Locrec."Insured Value")
            {
            }
            column(Locrec__Stock_Allocation___;Locrec."Stock Allocation %")
            {
            }
            column(Branch_Stock_Management_ReportCaption;Branch_Stock_Management_ReportCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Locrec_CodeCaption;Locrec_CodeCaptionLbl)
            {
            }
            column(Item__No__Caption;FIELDCAPTION("No."))
            {
            }
            column(Item_DescriptionCaption;FIELDCAPTION(Description))
            {
            }
            column(Item_InventoryCaption;FIELDCAPTION(Inventory))
            {
            }
            column(Item__Inventory__All_Locations__Caption;FIELDCAPTION("Inventory (All Locations)"))
            {
            }
            column(Item__Stock_Value_Posted_to_G_L_Caption;FIELDCAPTION("Stock Value Posted to G/L"))
            {
            }
            column(BranchAllocCaption;BranchAllocCaptionLbl)
            {
            }
            column(BranchValueCaption;BranchValueCaptionLbl)
            {
            }
            column(BranchExcessValueCaption;BranchExcessValueCaptionLbl)
            {
            }
            column(Locrec__Insured_Value_Caption;Locrec__Insured_Value_CaptionLbl)
            {
            }
            column(Locrec__Stock_Allocation___Caption;Locrec__Stock_Allocation___CaptionLbl)
            {
            }

            trigger OnPreDataItem()
            begin
                LocFilt := Item.GETFILTER(Item."Location Filter");
                IF Locrec.GET(LocFilt) THEN;
            end;
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
        Locrec: Record "14";
        LocFilt: Code[20];
        Branch_Stock_Management_ReportCaptionLbl: Label 'Branch Stock Management Report';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Locrec_CodeCaptionLbl: Label 'Location ';
        BranchAllocCaptionLbl: Label 'Allocated Q''ty';
        BranchValueCaptionLbl: Label 'Allocated Value';
        BranchExcessValueCaptionLbl: Label 'Excess Value';
        Locrec__Insured_Value_CaptionLbl: Label 'Location Insured value';
        Locrec__Stock_Allocation___CaptionLbl: Label 'Location Stock Allocation %';
}

