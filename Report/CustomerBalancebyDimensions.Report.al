report 50192 "Customer Balance by Dimensions"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerBalancebyDimensions.rdlc';

    dataset
    {
        dataitem(DataItem5801; Table92)
        {
            DataItemTableView = SORTING (Code);
            RequestFilterFields = "Code";
            column(TODAY; TODAY)
            {
            }
            column(datelimitxt; datelimitxt)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(Customer_Posting_Group_Code; Code)
            {
            }
            column(Customer_Posting_Group_Text; Text)
            {
            }
            column(total; total)
            {
            }
            column(Report_Name_Caption; Report_Name_CaptionLbl)
            {
            }
            column(CUSTOMERS_TOTALS_PER_MAINACCTCaption; CUSTOMERS_TOTALS_PER_MAINACCTCaptionLbl)
            {
            }
            column(Date_Caption; Date_CaptionLbl)
            {
            }
            column(Page_Caption; Page_CaptionLbl)
            {
            }
            column(Customer_NoCaption; Customer_NoCaptionLbl)
            {
            }
            column(BranchCaption; BranchCaptionLbl)
            {
            }
            column(BalanceCaption; BalanceCaptionLbl)
            {
            }
            column(DepartmentCaption; DepartmentCaptionLbl)
            {
            }
            column(Customer_NameCaption; Customer_NameCaptionLbl)
            {
            }
            column(Grand_TotalCaption; Grand_TotalCaptionLbl)
            {
            }
            dataitem(DataItem6836; Table18)
            {
                CalcFields = Net Change (LCY);
                DataItemLink = Customer Posting Group=FIELD(Code);
                DataItemTableView = SORTING (Customer Posting Group);
                RequestFilterFields = "No.";
                column(totalbk; totalbk)
                {
                }
                column(Customer_Posting_Group______Customer_Posting_Group_; 'Customer Posting Group ' + "Customer Posting Group")
                {
                }
                column(Customer_No_; "No.")
                {
                }
                column(Customer_Customer_Posting_Group; "Customer Posting Group")
                {
                }
                dataitem("Dimension 1"; Table349)
                {
                    DataItemTableView = SORTING (Code, Global Dimension No.)
                                        WHERE (Global Dimension No.=CONST(1));
                    column(Dimension_1_Dimension_Code; "Dimension Code")
                    {
                    }
                    column(Dimension_1_Code; Code)
                    {
                    }
                    dataitem("Dimension 2"; Table349)
                    {
                        DataItemTableView = SORTING (Code, Global Dimension No.)
                                            WHERE (Global Dimension No.=CONST(2));
                        column(CNo; CNo)
                        {
                        }
                        column(Dimension_1__Code; "Dimension 1".Code)
                        {
                        }
                        column(Dimension_2__Dimension_2__Code; "Dimension 2".Code)
                        {
                        }
                        column(Customer__Net_Change__LCY__; Customer."Net Change (LCY)")
                        {
                        }
                        column(CName; CName)
                        {
                        }
                        column(Dimension_2_Dimension_Code; "Dimension Code")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin


                            Customer.SETRANGE(Customer."Global Dimension 2 Filter", "Dimension 2".Code);
                            Customer.CALCFIELDS("Net Change (LCY)");
                            total := total + Customer."Net Change (LCY)";
                            totalbk := totalbk + Customer."Net Change (LCY)";
                        end;

                        trigger OnPreDataItem()
                        begin
                            SETRANGE(Code, '100', '999');
                            Customer.SETRANGE(Customer."Global Dimension 1 Filter", "Dimension 1".Code);
                            Customer.CALCFIELDS("Net Change (LCY)");
                            IF Customer."Net Change (LCY)" = 0 THEN CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    SETRANGE("Global Dimension 1 Filter");
                    SETRANGE("Global Dimension 2 Filter");

                    firstline := TRUE;
                    CALCFIELDS("Net Change (LCY)");
                    IF "Net Change (LCY)" = 0 THEN CurrReport.SKIP;
                end;

                trigger OnPreDataItem()
                begin
                    SETRANGE("Date Filter", 010190D, enddate);
                end;
            }

            trigger OnAfterGetRecord()
            begin
                totalbk := 0;
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
        enddate: Date;
        datelimitxt: Text[30];
        firstline: Boolean;
        total: Decimal;
        totalbk: Decimal;
        CNo: Code[20];
        CName: Text[100];
        Report_Name_CaptionLbl: Label 'Report Name:';
        CUSTOMERS_TOTALS_PER_MAINACCTCaptionLbl: Label 'CUSTOMERS TOTALS PER MAINACCT';
        Date_CaptionLbl: Label 'Date:';
        Page_CaptionLbl: Label 'Page:';
        Customer_NoCaptionLbl: Label 'Customer No';
        BranchCaptionLbl: Label 'Branch';
        BalanceCaptionLbl: Label 'Balance';
        DepartmentCaptionLbl: Label 'Department';
        Customer_NameCaptionLbl: Label 'Customer Name';
        Grand_TotalCaptionLbl: Label 'Grand Total';
        Text: Text[100];
}

