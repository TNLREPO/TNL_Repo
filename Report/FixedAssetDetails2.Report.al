report 50173 "Fixed Asset - Details 2"
{
    DefaultLayout = RDLC;
    RDLCLayout = './FixedAssetDetails2.rdlc';
    Caption = 'Fixed Asset - Details 2';

    dataset
    {
        dataitem(DataItem3794; Table5600)
        {
            DataItemTableView = SORTING (No.);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "FA Class Code", "FA Subclass Code", "Budgeted Asset", "FA Posting Date Filter";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(USERID; USERID)
            {
            }
            column(DeprBookText; DeprBookText)
            {
            }
            column(Fixed_Asset__TABLECAPTION__________FAFilter; "Fixed Asset".TABLECAPTION + ': ' + FAFilter)
            {
            }
            column(Fixed_Asset__No__; "No.")
            {
            }
            column(Fixed_Asset_Description; Description)
            {
            }
            column(Balance; Balance)
            {
            }
            column(Amt; Amt)
            {
            }
            column(Balance_Control1000000002; Balance)
            {
            }
            column(Fixed_Asset___Details_With_BalanceCaption; Fixed_Asset___Details_With_BalanceCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(FA_Ledger_Entry__FA_Posting_Date_Caption; FA_Ledger_Entry__FA_Posting_Date_CaptionLbl)
            {
            }
            column(FA_Ledger_Entry__Document_Type_Caption; "FA Ledger Entry".FIELDCAPTION("Document Type"))
            {
            }
            column(FA_Ledger_Entry__Document_No__Caption; "FA Ledger Entry".FIELDCAPTION("Document No."))
            {
            }
            column(FA_Ledger_Entry_DescriptionCaption; "FA Ledger Entry".FIELDCAPTION(Description))
            {
            }
            column(FA_Ledger_Entry_AmountCaption; "FA Ledger Entry".FIELDCAPTION(Amount))
            {
            }
            column(FA_Ledger_Entry__FA_Posting_Type_Caption; "FA Ledger Entry".FIELDCAPTION("FA Posting Type"))
            {
            }
            column(FA_Ledger_Entry__No__of_Depreciation_Days_Caption; "FA Ledger Entry".FIELDCAPTION("No. of Depreciation Days"))
            {
            }
            column(Balance_Control18Caption; Balance_Control18CaptionLbl)
            {
            }
            column(FA_Ledger_Entry__Posting_Date_Caption; "FA Ledger Entry".FIELDCAPTION("Posting Date"))
            {
            }
            column(FA_Ledger_Entry__FA_Posting_Category_Caption; "FA Ledger Entry".FIELDCAPTION("FA Posting Category"))
            {
            }
            dataitem(DataItem9888; Table5601)
            {
                DataItemTableView = SORTING (FA No., Depreciation Book Code, FA Posting Date);
                RequestFilterFields = "FA Posting Type", "FA Posting Date";
                column(FA_Ledger_Entry__FA_Posting_Date_; "FA Posting Date")
                {
                }
                column(FA_Ledger_Entry__Document_Type_; "Document Type")
                {
                }
                column(FA_Ledger_Entry__Document_No__; "Document No.")
                {
                }
                column(FA_Ledger_Entry_Description; Description)
                {
                }
                column(FA_Ledger_Entry_Amount; Amount)
                {
                }
                column(FA_Ledger_Entry__FA_Posting_Type_; "FA Posting Type")
                {
                }
                column(FA_Ledger_Entry__No__of_Depreciation_Days_; "No. of Depreciation Days")
                {
                }
                column(Balance_Control18; Balance)
                {
                }
                column(FA_Ledger_Entry__Posting_Date_; "Posting Date")
                {
                }
                column(FA_Ledger_Entry__FA_Posting_Category_; "FA Posting Category")
                {
                }
                column(FA_Ledger_Entry_Entry_No_; "Entry No.")
                {
                }

                trigger OnAfterGetRecord()
                begin
                    Balance := Balance + "FA Ledger Entry".Amount;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("FA No.", "Fixed Asset"."No.");
                    SETRANGE("Depreciation Book Code", DeprBookCode);
                    SETFILTER("FA Posting Date", "Fixed Asset".GETFILTER("FA Posting Date Filter"));
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF Inactive THEN
                    CurrReport.SKIP;

                DepBook2.GET("Fixed Asset"."No.", DeprBookCode);
                SDate := "Fixed Asset".GETRANGEMIN("Fixed Asset"."FA Posting Date Filter");
                Balance := 0;
                IF SDate <> 0D THEN BEGIN
                    SDate := CALCDATE('-1D', SDate);
                    DepBook2.SETFILTER(DepBook2."FA Posting Date Filter", '..%1', SDate);
                    DepBook2.CALCFIELDS(DepBook2."Book Value");
                    Balance := DepBook2."Book Value";
                END;
            end;

            trigger OnPreDataItem()
            begin
                CurrReport.NEWPAGEPERRECORD := PrintOnlyOnePerPage;
                CurrReport.CREATETOTALS(Amt, Balance);
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
        DeprBook.GET(DeprBookCode);
        FAFilter := "Fixed Asset".GETFILTERS;
        DeprBookText := STRSUBSTNO('%1%2 %3', DeprBook.TABLECAPTION, ':', DeprBookCode);
    end;

    var
        FASetup: Record "5603";
        DeprBook: Record "5611";
        DeprBookCode: Code[10];
        DeprBookText: Text[50];
        PrintOnlyOnePerPage: Boolean;
        FAFilter: Text[250];
        Amt: Decimal;
        Balance: Decimal;
        DepBook2: Record "5612";
        SDate: Date;
        Fixed_Asset___Details_With_BalanceCaptionLbl: Label 'Fixed Asset - Details With Balance';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        FA_Ledger_Entry__FA_Posting_Date_CaptionLbl: Label 'FA Posting Date';
        Balance_Control18CaptionLbl: Label 'Balance';
}

