report 50218 "Sales Contributions 2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './SalesContributions2.rdlc';

    dataset
    {
        dataitem(DataItem8894; Table5802)
        {
            DataItemTableView = SORTING (Gen. Bus. Posting Group, Source No., Document No.)
                                WHERE (Inventory Posting Group=CONST(N_PARTS),
                                      Item Ledger Entry Type=CONST(Sale));
            RequestFilterFields = "Document No.","Posting Date","Gen. Bus. Posting Group";
            RequestFilterHeading = 'Sales Filters';
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
            column(Value_Entry__Gen__Bus__Posting_Group_;"Gen. Bus. Posting Group")
            {
            }
            column(cName;cName)
            {
            }
            column(Value_Entry__Document_No__;"Document No.")
            {
            }
            column(Value_Entry__Source_No__;"Source No.")
            {
            }
            column(Invoiced_Quantity_;-"Invoiced Quantity")
            {
                DecimalPlaces = 0:0;
            }
            column(Sales_Amount__Actual__;-"Sales Amount (Actual)")
            {
            }
            column(Cost_Amount__Actual__;-"Cost Amount (Actual)")
            {
            }
            column(cMargin;-cMargin)
            {
            }
            column(pPct;pPct)
            {
            }
            column(Invoiced_Quantity__Control1000000025;-"Invoiced Quantity")
            {
                DecimalPlaces = 0:0;
            }
            column(Sales_Amount__Actual___Control1000000026;-"Sales Amount (Actual)")
            {
            }
            column(Cost_Amount__Actual___Control1000000031;-"Cost Amount (Actual)")
            {
            }
            column(cMargin_Control1000000032;-cMargin)
            {
            }
            column(pPct_Control1000000034;pPct)
            {
            }
            column(Gen__Bus__Posting_Group______Totals_;"Gen. Bus. Posting Group" + ' Totals')
            {
            }
            column(Grand_Totals_;'Grand Totals')
            {
            }
            column(Invoiced_Quantity__Control1000000014;-"Invoiced Quantity")
            {
                DecimalPlaces = 0:0;
            }
            column(Sales_Amount__Actual___Control1000000017;-"Sales Amount (Actual)")
            {
            }
            column(Cost_Amount__Actual___Control1000000020;-"Cost Amount (Actual)")
            {
            }
            column(pPct_Control1000000022;pPct)
            {
            }
            column(TNL_Sales_Contribution___2Caption;TNL_Sales_Contribution___2CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Document_No_Caption;Document_No_CaptionLbl)
            {
            }
            column(Customer_No_Caption;Customer_No_CaptionLbl)
            {
            }
            column(NameCaption;NameCaptionLbl)
            {
            }
            column(QuantityCaption;QuantityCaptionLbl)
            {
            }
            column(AmountCaption;AmountCaptionLbl)
            {
            }
            column(Cost_ValueCaption;Cost_ValueCaptionLbl)
            {
            }
            column(Contribution_MarginCaption;Contribution_MarginCaptionLbl)
            {
            }
            column(Profit__Caption;Profit__CaptionLbl)
            {
            }
            column(Value_Entry_Entry_No_;"Entry No.")
            {
            }

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Document No.");

                CurrReport.CREATETOTALS(cMargin,"Value Entry"."Invoiced Quantity","Value Entry"."Sales Amount (Actual)","Value Entry".
                "Cost Amount (Actual)");
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
        cMargin: Decimal;
        pPct: Decimal;
        cRec: Record "18";
        cName: Text[100];
        TNL_Sales_Contribution___2CaptionLbl: Label 'TNL Sales Contribution - 2';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Document_No_CaptionLbl: Label 'Document No.';
        Customer_No_CaptionLbl: Label 'Customer No.';
        NameCaptionLbl: Label 'Name';
        QuantityCaptionLbl: Label 'Quantity';
        AmountCaptionLbl: Label 'Amount';
        Cost_ValueCaptionLbl: Label 'Cost Value';
        Contribution_MarginCaptionLbl: Label 'Contribution Margin';
        Profit__CaptionLbl: Label 'Profit %';
}

