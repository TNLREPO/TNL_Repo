report 50012 "Bank Account - Trial Balance"
{
    DefaultLayout = RDLC;
    RDLCLayout = './BankAccountTrialBalance.rdlc';
    Caption = 'Bank Account - Trial Balance';

    dataset
    {
        dataitem(DataItem4558; Table270)
        {
            CalcFields = Balance at Date;
            RequestFilterFields = "No.", "Search Name", "Bank Acc. Posting Group", "Currency Code", "Date Filter";
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
            column(Bank_Account__TABLECAPTION__________BankAccFilter; "Bank Account".TABLECAPTION + ': ' + BankAccFilter)
            {
            }
            column(Bank_Account__No__; "No.")
            {
            }
            column(BankAccBalance; BankAccBalance)
            {
                AutoFormatExpression = "Currency Code";
                AutoFormatType = 1;
            }
            column(Bank_Account__Bank_Account_No__; "Bank Account No.")
            {
            }
            column(Bank_Account_Name; Name)
            {
            }
            column(Bank_Account__Balance_at_Date_; "Balance at Date")
            {
            }
            column(Bank_Account__Balance__LCY__; "Balance (LCY)")
            {
            }
            column(Bank_Account__Balance_at_Date__Control1000000004; "Balance at Date")
            {
            }
            column(Bank_Account___ListCaption; Bank_Account___ListCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(The_balance_is_in_LCY_Caption; The_balance_is_in_LCY_CaptionLbl)
            {
            }
            column(Bank_Account__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(BankAccBalanceCaption; BankAccBalanceCaptionLbl)
            {
            }
            column(Bank_Account__Bank_Account_No__Caption; FIELDCAPTION("Bank Account No."))
            {
            }
            column(Bank_Account_NameCaption; FIELDCAPTION(Name))
            {
            }
            column(Bank_Account__Balance_at_Date_Caption; FIELDCAPTION("Balance at Date"))
            {
            }
            column(Total__LCY_Caption; Total__LCY_CaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                CALCFIELDS(Balance, "Balance (LCY)");
                IF PrintAmountsInLCY THEN
                    BankAccBalance := "Balance (LCY)"
                ELSE
                    BankAccBalance := Balance;
                FormatAddr.FormatAddr(
                  BankAccAddr, Name, "Name 2", '', Address, "Address 2",
                  City, "Post Code", County, "Country/Region Code");
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.CREATETOTALS("Balance (LCY)");
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

    trigger OnPreReport()
    begin
        BankAccFilter := "Bank Account".GETFILTERS;
    end;

    var
        PrintAmountsInLCY: Boolean;
        BankAccFilter: Text[250];
        BankAccBalance: Decimal;
        BankAccAddr: array[8] of Text[50];
        FormatAddr: Codeunit "365";
        Bank_Account___ListCaptionLbl: Label 'Bank Account - List';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        The_balance_is_in_LCY_CaptionLbl: Label 'The balance is in LCY.';
        BankAccBalanceCaptionLbl: Label 'Balance';
        Total__LCY_CaptionLbl: Label 'Total (LCY)';
}

