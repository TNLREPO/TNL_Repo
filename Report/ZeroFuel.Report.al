report 50157 "Zero Fuel"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ZeroFuel.rdlc';

    dataset
    {
        dataitem(DataItem9635; Table50053)
        {
            DataItemTableView = SORTING (Voucher No.);
            RequestFilterFields = "Voucher No.";
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
            column(Fuel_Vouchers___Voucher_No__; "Voucher No.")
            {
            }
            column(Fuel_Vouchers_Caption; Fuel_Vouchers_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Fuel_Vouchers___Voucher_No__Caption; FIELDCAPTION("Voucher No."))
            {
            }

            trigger OnAfterGetRecord()
            begin
                DetCustLedg.SETCURRENTKEY("Document No.");
                DetCustLedg.SETRANGE("Document No.", "Voucher No.");
                IF DetCustLedg.FINDFIRST THEN BEGIN

                    ValueEntry.SETCURRENTKEY("Document No.");
                    ValueEntry.SETRANGE("Document No.", "Voucher No.");
                    IF ValueEntry.FINDFIRST THEN BEGIN
                        ValueEntry.CALCSUMS("Cost Posted to G/L");
                        CostToGL := ValueEntry."Cost Posted to G/L";
                    END;

                    DetCustLedg."Debit Amount" := CostToGL * -1;
                    DetCustLedg."Debit Amount (LCY)" := CostToGL * -1;
                    DetCustLedg.Amount := CostToGL * -1;
                    DetCustLedg."Amount (LCY)" := CostToGL * -1;
                    DetCustLedg.MODIFY;

                    GLEntry.SETCURRENTKEY("Document No.", "G/L Account No.");
                    GLEntry.SETRANGE("Document No.", "Voucher No.");
                    GLEntry.SETRANGE("G/L Account No.", '262400');
                    IF GLEntry.FINDFIRST THEN BEGIN
                        GLEntry."Credit Amount" := CostToGL * -1;
                        GLEntry.Amount := CostToGL;
                        GLEntry.MODIFY;
                    END;

                    GLEntry2.SETCURRENTKEY("Document No.", "G/L Account No.");
                    GLEntry2.SETRANGE("Document No.", "Voucher No.");
                    GLEntry2.SETRANGE("G/L Account No.", '112520');
                    IF GLEntry2.FINDFIRST THEN BEGIN
                        GLEntry2."Debit Amount" := CostToGL * -1;
                        GLEntry2.Amount := CostToGL * -1;
                        GLEntry2.MODIFY;
                    END;
                END;


                DetVendLedg.SETCURRENTKEY("Document No.");
                DetVendLedg.SETRANGE("Document No.", "Voucher No.");
                IF DetVendLedg.FINDFIRST THEN BEGIN

                    ValueEntry.SETCURRENTKEY("Document No.");
                    ValueEntry.SETRANGE("Document No.", "Voucher No.");
                    IF ValueEntry.FINDFIRST THEN BEGIN
                        ValueEntry.CALCSUMS("Cost Posted to G/L");
                        CostToGL := ValueEntry."Cost Posted to G/L";
                    END;

                    DetVendLedg."Debit Amount" := CostToGL * -1;
                    DetVendLedg."Debit Amount (LCY)" := CostToGL * -1;
                    DetVendLedg.Amount := CostToGL * -1;
                    DetVendLedg."Amount (LCY)" := CostToGL * -1;
                    DetVendLedg.MODIFY;

                    GLEntry.SETCURRENTKEY("Document No.", "G/L Account No.");
                    GLEntry.SETRANGE("Document No.", "Voucher No.");
                    GLEntry.SETRANGE("G/L Account No.", '262400');
                    IF GLEntry.FINDFIRST THEN BEGIN
                        GLEntry."Credit Amount" := CostToGL * -1;
                        GLEntry.Amount := CostToGL;
                        GLEntry.MODIFY;
                    END;

                    GLEntry2.SETCURRENTKEY("Document No.", "G/L Account No.");
                    GLEntry2.SETRANGE("Document No.", "Voucher No.");
                    GLEntry2.SETRANGE("G/L Account No.", '124700');
                    IF GLEntry2.FINDFIRST THEN BEGIN
                        GLEntry2."Debit Amount" := CostToGL * -1;
                        GLEntry2.Amount := CostToGL * -1;
                        GLEntry2.MODIFY;
                    END;
                END;
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Voucher No.");
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
        GenJnlLine: Record 81;
        ValueEntry: Record 5802;
        CostToGL: Decimal;
        DetCustLedg: Record "379";
        DetVendLedg: Record "380";
        CustLedgEntry: Record "21";
        VendLedgEntry: Record "25";
        GLEntry: Record 17;
        GLEntry2: Record 17;
        Fuel_Vouchers_CaptionLbl: Label 'Fuel Vouchers.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

