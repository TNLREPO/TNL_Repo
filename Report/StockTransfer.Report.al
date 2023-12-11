report 50401 "Stock Transfer"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StockTransfer.rdlc';

    dataset
    {
        dataitem(DataItem3226; Table5745)
        {
            DataItemTableView = SORTING (Transfer-from Code, Transfer-to Code)
                                WHERE (Inventory Posting Group=CONST(N_PARTS));
            RequestFilterFields = "Transfer-from Code","Transfer-to Code","Shipment Date";
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
            column(Transfer_Shipment_Line__GETFILTER__Shipment_Date__;"Transfer Shipment Line".GETFILTER("Shipment Date"))
            {
            }
            column(Transfer_Shipment_Line__Transfer_from_Code_;"Transfer-from Code")
            {
            }
            column(Transfer_Shipment_Line__Transfer_to_Code_;"Transfer-to Code")
            {
            }
            column(Transfer_Shipment_Line__Transfer_Order_No__;"Transfer Order No.")
            {
            }
            column(Transfer_Shipment_Line__Item_No__;"Item No.")
            {
            }
            column(Transfer_Shipment_Line_Description;Description)
            {
            }
            column(Transfer_Shipment_Line_Quantity;Quantity)
            {
            }
            column(CostAmount;CostAmount)
            {
            }
            column(Transfer_Shipment_Line_Quantity_Control1000000032;Quantity)
            {
            }
            column(Transfer_Shipment_Line__Transfer_to_Code__Control1000000007;"Transfer-to Code")
            {
            }
            column(CostAmountToLoc;CostAmountToLoc)
            {
            }
            column(Transfer_Shipment_Line_Quantity_Control1000000034;Quantity)
            {
            }
            column(Transfer_Shipment_Line__Transfer_from_Code__Control1000000009;"Transfer-from Code")
            {
            }
            column(CostAmountFromLoc;CostAmountFromLoc)
            {
            }
            column(Stock_TransferCaption;Stock_TransferCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Transfer_Shipment_Line__Transfer_from_Code_Caption;FIELDCAPTION("Transfer-from Code"))
            {
            }
            column(Transfer_Shipment_Line__Transfer_to_Code_Caption;FIELDCAPTION("Transfer-to Code"))
            {
            }
            column(Transfer_Shipment_Line__Transfer_Order_No__Caption;FIELDCAPTION("Transfer Order No."))
            {
            }
            column(Transfer_Shipment_Line__Item_No__Caption;FIELDCAPTION("Item No."))
            {
            }
            column(Transfer_Shipment_Line_DescriptionCaption;FIELDCAPTION(Description))
            {
            }
            column(Transfer_Shipment_Line_QuantityCaption;FIELDCAPTION(Quantity))
            {
            }
            column(ValueCaption;ValueCaptionLbl)
            {
            }
            column(Total_ForCaption;Total_ForCaptionLbl)
            {
            }
            column(Total_FromCaption;Total_FromCaptionLbl)
            {
            }
            column(Transfer_Shipment_Line_Document_No_;"Document No.")
            {
            }
            column(Transfer_Shipment_Line_Line_No_;"Line No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                ValueEntry.SETCURRENTKEY("Document No.","Item No.","Document Line No.","Location Code");
                ValueEntry.SETRANGE("Document No.","Transfer Shipment Line"."Document No.");
                ValueEntry.SETRANGE("Item No.","Transfer Shipment Line"."Item No.");
                ValueEntry.SETRANGE("Document Line No.","Transfer Shipment Line"."Line No.");
                ValueEntry.SETRANGE("Location Code","Transfer Shipment Line"."Transfer-from Code");
                ValueEntry.CALCSUMS("Cost Posted to G/L");
                  CostAmount := ValueEntry."Cost Posted to G/L";
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Transfer-to Code");

                CurrReport.CREATETOTALS(CostAmount,CostAmountToLoc,CostAmountFromLoc);
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
        TotalFor: Label 'Total for ';
        ValueEntry: Record "5802";
        CostAmount: Decimal;
        CostAmountToLoc: Decimal;
        CostAmountFromLoc: Decimal;
        Stock_TransferCaptionLbl: Label 'Stock Transfer';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        ValueCaptionLbl: Label 'Value';
        Total_ForCaptionLbl: Label 'Total For';
        Total_FromCaptionLbl: Label 'Total From';
}

