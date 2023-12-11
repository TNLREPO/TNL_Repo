report 50144 "Increment Employee Earnings"
{
    DefaultLayout = RDLC;
    RDLCLayout = './IncrementEmployeeEarnings.rdlc';

    dataset
    {
        dataitem(DataItem9548; Table50009)
        {
            DataItemTableView = SORTING (Code)
                                WHERE (Management = CONST (No));
            PrintOnlyIfDetail = true;
            RequestFilterFields = "Code";
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
            column(Payroll_Employee_Group_Lines_Caption; Payroll_Employee_Group_Lines_CaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Payroll_Employee_Group_Header__Code; Code)
            {
            }
            dataitem(DataItem6222; Table50008)
            {
                DataItemLink = Employee Group=FIELD(Code);
                DataItemTableView = SORTING (Employee Group, E/D Code);
                RequestFilterFields = "Employee Group", "E/D Code", "Control Type", "Payslip Group ID", "ED Category", "Yearly Allowance";
                column(Payroll_Employee_Group_Lines___Employee_Group_; "Employee Group")
                {
                }
                column(Payroll_Employee_Group_Lines___Employee_Group__Control11; "Employee Group")
                {
                }
                column(Payroll_Employee_Group_Lines___E_D_Code_; "E/D Code")
                {
                }
                column(Payroll_Employee_Group_Lines___Default_Amount_; "Default Amount")
                {
                }
                column(Payroll_Employee_Group_Lines___Old_Default_Amount_; "Old Default Amount")
                {
                }
                column(Payroll_Employee_Group_Lines___Date_Changed_; "Date Changed")
                {
                }
                column(EDRec__Payslip_Text_; EDRec."Payslip Text")
                {
                }
                column(Payroll_Employee_Group_Lines___Employee_Group__Control11Caption; FIELDCAPTION("Employee Group"))
                {
                }
                column(Payroll_Employee_Group_Lines___E_D_Code_Caption; FIELDCAPTION("E/D Code"))
                {
                }
                column(Payroll_Employee_Group_Lines___Default_Amount_Caption; FIELDCAPTION("Default Amount"))
                {
                }
                column(Payroll_Employee_Group_Lines___Old_Default_Amount_Caption; FIELDCAPTION("Old Default Amount"))
                {
                }
                column(Payroll_Employee_Group_Lines___Date_Changed_Caption; FIELDCAPTION("Date Changed"))
                {
                }
                column(TextCaption; TextCaptionLbl)
                {
                }
                column(Payroll_Employee_Group_Lines___Employee_Group_Caption; FIELDCAPTION("Employee Group"))
                {
                }

                trigger OnAfterGetRecord()
                begin
                    EDRec.GET("Payroll-Employee Group Lines."."E/D Code");

                    "Payroll-Employee Group Lines."."Old Default Amount" := "Payroll-Employee Group Lines."."Default Amount";
                    IF EDRec.Prorate THEN BEGIN
                        "Payroll-Employee Group Lines."."Default Amount" := "Payroll-Employee Group Lines."."Default Amount" * (Incpercent + 100) / 100;
                        "Payroll-Employee Group Lines."."Date Changed" := TODAY;
                    END
                    ELSE
                        IF NOT (EDRec."Monthly Variable") THEN
                            "Payroll-Employee Group Lines."."Default Amount" := "Payroll-Employee Group Lines."."Default Amount" * (Incpercent + 100) / 100
                        ELSE
                            "Payroll-Employee Group Lines."."Default Amount" := 0;

                    IF UpdateValues THEN "Payroll-Employee Group Lines.".MODIFY;
                end;

                trigger OnPreDataItem()
                begin
                    LastFieldNo := FIELDNO("Employee Group");
                end;
            }
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
        Incpercent: Decimal;
        EDRec: Record 50001;
        UpdateValues: Boolean;
        Payroll_Employee_Group_Lines_CaptionLbl: Label 'Payroll-Employee Group Lines.';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        TextCaptionLbl: Label 'Text';
}

