report 50413 "Cash-Flow"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CashFlow.rdlc';

    dataset
    {
        dataitem(DataItem4920; Table271)
        {
            DataItemTableView = SORTING (Document No., Bank Account No., Posting Date);
            RequestFilterFields = "Document No.", "Posting Date";
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
            column(Bank_Account_Ledger_Entry__Posting_Date_; "Posting Date")
            {
            }
            column(Bank_Account_Ledger_Entry__Document_No__; "Document No.")
            {
            }
            column(Bank_Account_Ledger_Entry__Bank_Account_No__; "Bank Account No.")
            {
            }
            column(Bank_Account_Ledger_Entry_Description; Description)
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY__; "Debit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount__LCY__; "Credit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY___Control1000000016; "Debit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount__LCY___Control1000000019; "Credit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Document_No___Control1000000022; "Document No.")
            {
            }
            column(Bank_Account_Ledger_Entry_Description_Control1000000025; Description)
            {
            }
            column(Bank_Account_Ledger_Entry__Bank_Account_No___Control1000000026; "Bank Account No.")
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date__Control1000000008; "Posting Date")
            {
            }
            column(BalAcc1; BalAcc1)
            {
            }
            column(BalAcc2; BalAcc2)
            {
            }
            column(BalAcc3; BalAcc3)
            {
            }
            column(Bank_Account_Ledger_Entry__Credit_Amount__LCY___Control1000000009; "Credit Amount (LCY)")
            {
            }
            column(Bank_Account_Ledger_Entry__Debit_Amount__LCY___Control1000000011; "Debit Amount (LCY)")
            {
            }
            column(Bank_Inflow_OutflowCaption; Bank_Inflow_OutflowCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Bank_Account_Ledger_Entry__Posting_Date_Caption; FIELDCAPTION("Posting Date"))
            {
            }
            column(Bank_Account_Ledger_Entry__Document_No__Caption; FIELDCAPTION("Document No."))
            {
            }
            column(Bank_Account_Ledger_Entry__Bank_Account_No__Caption; FIELDCAPTION("Bank Account No."))
            {
            }
            column(Bank_Account_Ledger_Entry_DescriptionCaption; FIELDCAPTION(Description))
            {
            }
            column(Inflow__LCY_Caption; Inflow__LCY_CaptionLbl)
            {
            }
            column(Outflow__LCY_Caption; Outflow__LCY_CaptionLbl)
            {
            }
            column(Balancing_AccountCaption; Balancing_AccountCaptionLbl)
            {
            }
            column(Bank_Account_Ledger_Entry_Entry_No_; "Entry No.")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF ("Bank Account Ledger Entry"."Debit Amount (LCY)" = 0) AND
                ("Bank Account Ledger Entry"."Credit Amount (LCY)" = 0) THEN
                    CurrReport.SKIP;

                CustLedgEntry.SETCURRENTKEY("Document No.");
                CustLedgEntry.SETRANGE("Document No.", "Document No.");
                IF CustLedgEntry.FINDFIRST THEN
                    BalAcc1 := CustLedgEntry."Customer No.";

                VendLedgEntry.SETCURRENTKEY("Document No.");
                VendLedgEntry.SETRANGE("Document No.", "Document No.");
                IF VendLedgEntry.FINDFIRST THEN
                    BalAcc2 := VendLedgEntry."Vendor No.";

                GLEntry.SETCURRENTKEY("Document No.");
                GLEntry.SETRANGE("Document No.", "Document No.");
                IF GLEntry.FINDFIRST THEN
                    BalAcc3 := GLEntry."G/L Account No.";
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Posting Date");
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
        CustLedgEntry: Record "21";
        VendLedgEntry: Record "25";
        BalAcc1: Code[10];
        BalAcc2: Code[10];
        BalAcc3: Code[10];
        GLEntry: Record 17;
        Bank_Inflow_OutflowCaptionLbl: Label 'Bank Inflow/Outflow';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Inflow__LCY_CaptionLbl: Label 'Inflow (LCY)';
        Outflow__LCY_CaptionLbl: Label 'Outflow (LCY)';
        Balancing_AccountCaptionLbl: Label 'Balancing Account';
}

