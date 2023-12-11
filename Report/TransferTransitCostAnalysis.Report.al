report 50338 "Transfer-Transit Cost Analysis"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TransferTransitCostAnalysis.rdlc';
    Caption = 'Transfer-Transit Cost Analysis';

    dataset
    {
        dataitem(DataItem9370; Table5741)
        {
            DataItemTableView = SORTING (Transfer-to Code, Status, Derived From Line No., Item No., Variant Code, Shortcut Dimension 1 Code, Shortcut Dimension 2 Code, Receipt Date, In-Transit Code)
                                WHERE (Status = CONST (Released),
                                      Derived From Line No.=CONST(0));
            RequestFilterFields = "Transfer-to Code", "Item No.", "Receipt Date";
            column(USERID; USERID)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(Location_Name; Location.Name)
            {
            }
            column(Transfer_Line__Transfer_to_Code_; "Transfer-to Code")
            {
            }
            column(Item_Description; Item.Description)
            {
            }
            column(Transfer_Line__Item_No__; "Item No.")
            {
            }
            column(Transfer_Line__Receipt_Date_; FORMAT("Receipt Date"))
            {
            }
            column(Transfer_Line__In_Transit_Code_; "In-Transit Code")
            {
            }
            column(Transfer_Line__Qty__in_Transit_; "Qty. in Transit")
            {
            }
            column(Transfer_Line__Document_No__; "Document No.")
            {
            }
            column(Transfer_Line__Transfer_from_Code_; "Transfer-from Code")
            {
            }
            column(Transfer_Line__Outstanding_Quantity_; "Outstanding Quantity")
            {
            }
            column(ItemUnitCost; Item."Unit Cost")
            {
            }
            column(Amt; Amt)
            {
            }
            column(Amt1; Amt)
            {
            }
            column(QtyinTransit_TransferLine; "Qty. in Transit")
            {
            }
            column(Amt2; Amt)
            {
            }
            column(QtyinTransit_TransferLine1; "Qty. in Transit")
            {
            }
            column(Transfer_Line__Qty__in_Transit_Caption; FIELDCAPTION("Qty. in Transit"))
            {
            }
            column(Transfer_Line__In_Transit_Code_Caption; FIELDCAPTION("In-Transit Code"))
            {
            }
            column(Transfer_Line__Receipt_Date_Caption; Transfer_Line__Receipt_Date_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Inventory___Inbound_TransferCaption; Inventory___Inbound_TransferCaptionLbl)
            {
            }
            column(Transfer_Line__Document_No__Caption; FIELDCAPTION("Document No."))
            {
            }
            column(Transfer_Line__Transfer_from_Code_Caption; FIELDCAPTION("Transfer-from Code"))
            {
            }
            column(Transfer_Line__Outstanding_Quantity_Caption; FIELDCAPTION("Outstanding Quantity"))
            {
            }
            column(Transfer_Line__Transfer_to_Code_Caption; Transfer_Line__Transfer_to_Code_CaptionLbl)
            {
            }
            column(Transfer_Line_Line_No_; "Line No.")
            {
            }
            column(Transfer_Line_Receipt_Date; "Receipt Date")
            {
            }

            trigger OnAfterGetRecord()
            begin
                Item.GET("Item No.");
                Location.GET("Transfer-to Code");
                Amt := "Transfer Line"."Quantity Shipped" * Item."Unit Cost";
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CREATETOTALS(Amt);
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
        Item: Record 27;
        Location: Record "14";
        Amt: Decimal;
        TAmt: Decimal;
        Transfer_Line__Receipt_Date_CaptionLbl: Label 'Receipt Date';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Inventory___Inbound_TransferCaptionLbl: Label 'Inventory - Inbound Transfer';
        Transfer_Line__Transfer_to_Code_CaptionLbl: Label 'Transfer-to';
}

