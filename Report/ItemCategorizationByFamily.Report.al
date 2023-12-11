report 50380 "Item Categorization By Family"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ItemCategorizationByFamily.rdlc';

    dataset
    {
        dataitem(DataItem8129; Table27)
        {
            DataItemTableView = SORTING (Product Group Code, Model Name);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Item Category Code", "Product Group Code", "No.", "Date Filter";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(Item__Product_Group_Code_; "Product Group Code")
            {
            }
            column(Item__No__; "No.")
            {
            }
            column(Item_Description; Description)
            {
            }
            column(Item__Inventory_Posting_Group_; "Inventory Posting Group")
            {
            }
            column(Item__Item_Category_Code_; "Item Category Code")
            {
            }
            column(Item__Product_Group_Code__Control1000000023; "Product Group Code")
            {
            }
            column(Item__Model_Name_; "Model Name")
            {
            }
            column(Item_Maintenance; Maintenance)
            {
            }
            column(Item_Maintenance_Control1000000028; Maintenance)
            {
            }
            column(Item__Model_Name__Control1000000031; "Model Name")
            {
            }
            column(Item__Product_Group_Code__Control1000000032; "Product Group Code")
            {
            }
            column(Item__Item_Category_Code__Control1000000033; "Item Category Code")
            {
            }
            column(Item__Inventory_Posting_Group__Control1000000034; "Inventory Posting Group")
            {
            }
            column(Item_Description_Control1000000035; Description)
            {
            }
            column(Item__No___Control1000000036; "No.")
            {
            }
            column(salesamt; salesamt)
            {
            }
            column(Item__Product_Group_Code__Control1000000040; "Product Group Code")
            {
            }
            column(pgcamt; pgcamt)
            {
            }
            column(pgcamt_Control1000000043; pgcamt)
            {
            }
            column(ItemCaption; ItemCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Item__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(Item_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(Item__Inventory_Posting_Group_Caption; FIELDCAPTION("Inventory Posting Group"))
            {
            }
            column(Item__Item_Category_Code_Caption; FIELDCAPTION("Item Category Code"))
            {
            }
            column(Item__Product_Group_Code__Control1000000023Caption; FIELDCAPTION("Product Group Code"))
            {
            }
            column(Item__Model_Name_Caption; FIELDCAPTION("Model Name"))
            {
            }
            column(Item_MaintenanceCaption; FIELDCAPTION(Maintenance))
            {
            }
            column(salesamtCaption; salesamtCaptionLbl)
            {
            }
            column(Item__Product_Group_Code_Caption; FIELDCAPTION("Product Group Code"))
            {
            }
            column(Item__Product_Group_Code__Control1000000040Caption; FIELDCAPTION("Product Group Code"))
            {
            }
            column(Item_Date_Filter; "Date Filter")
            {
            }
            dataitem(DataItem8894; Table5802)
            {
                DataItemLink = Item No.=FIELD(No.),
                               Posting Date=FIELD(Date Filter);
                DataItemTableView = SORTING(Item No.,Posting Date,Item Ledger Entry No.)
                                    WHERE(Item Ledger Entry Type=FILTER(Sale));
                column(Value_Entry__Item_No__;"Item No.")
                {
                }
                column(Value_Entry__Posting_Date_;"Posting Date")
                {
                }
                column(Value_Entry__Item_Ledger_Entry_Type_;"Item Ledger Entry Type")
                {
                }
                column(Value_Entry__Sales_Amount__Actual__;"Sales Amount (Actual)")
                {
                }
                column(salesamt_Control1000000039;salesamt)
                {
                }
                column(Value_Entry__Item_No__Caption;FIELDCAPTION("Item No."))
                {
                }
                column(Value_Entry__Posting_Date_Caption;FIELDCAPTION("Posting Date"))
                {
                }
                column(Value_Entry__Item_Ledger_Entry_Type_Caption;FIELDCAPTION("Item Ledger Entry Type"))
                {
                }
                column(Value_Entry__Sales_Amount__Actual__Caption;FIELDCAPTION("Sales Amount (Actual)"))
                {
                }
                column(Value_Entry_Entry_No_;"Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    salesamt := salesamt + "Value Entry"."Sales Amount (Actual)";
                    pgcamt := pgcamt + "Value Entry"."Sales Amount (Actual)";
                end;
            }

            trigger OnAfterGetRecord()
            begin
                 salesamt := 0;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Product Group Code");
                CurrReport.CREATETOTALS(pgcamt);
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        salesamt: Decimal;
        showsummary: Boolean;
        pgcamt: Decimal;
        ItemCaptionLbl: Label 'Item';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        salesamtCaptionLbl: Label 'Sales Amount';
}

