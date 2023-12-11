report 50121 "Payslip with Seq. No./3 cols."
{
    // Modified by Adams for
    // speed and user access control
    DefaultLayout = RDLC;
    RDLCLayout = './PayslipwithSeqNo3cols.rdlc';


    dataset
    {
        dataitem(DataItem7528; Table5200)
        {
            DataItemTableView = SORTING (Posting Group, Business Unit, Global Dimension 1 Code, Global Dimension 2 Code)
                                WHERE (Blocked = CONST (No));
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Employee Group", "Business Unit", "Global Dimension 1 Code", "Global Dimension 2 Code", EDAmount, "Period Filter";
            RequestFilterHeading = 'Payslip Filters';
            column(Employee_No_; "No.")
            {
            }
            column(Employee_Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Employee_Period_Filter; "Period Filter")
            {
            }
            dataitem(DataItem2942; Table50007)
            {
                DataItemLink = Payroll Period=FIELD(Period Filter),
                               Employee No=FIELD(No.);
                DataItemTableView = SORTING(Posting Group);
                RequestFilterHeading = 'Parameters for payslips';
                column(UPPERCASE_PayAdviceTitle_;UPPERCASE(PayAdviceTitle))
                {
                }
                column(UPPERCASE__Payroll_Payslip_Header____Employee_Name__;UPPERCASE("Payroll-Payslip Header."."Employee Name"))
                {
                }
                column(UPPERCASE_DeptName_;UPPERCASE(DeptName))
                {
                }
                column(CompanyData_Name;CompanyData.Name)
                {
                }
                column(UPPERCASE__Payroll_Payslip_Header____Employee_No__;UPPERCASE("Payroll-Payslip Header."."Employee No"))
                {
                }
                column(UPPERCASE__Period______Payroll_Payslip_Header____Payroll_Period__;UPPERCASE('Period ' + "Payroll-Payslip Header."."Payroll Period"))
                {
                }
                column(UPPERCASE_GrpText_;UPPERCASE(GrpText))
                {
                }
                column(UPPERCASE_BUName_;UPPERCASE(BUName))
                {
                }
                column(UPPERCASE_PayAdviceTitle__Control15;UPPERCASE(PayAdviceTitle))
                {
                }
                column(EmpName2;EmpName2)
                {
                }
                column(UPPERCASE_DeptName2_;UPPERCASE(DeptName2))
                {
                }
                column(CompanyData_Name_Control18;CompanyData.Name)
                {
                }
                column(EmpNo2;EmpNo2)
                {
                }
                column(UPPERCASE__Period______Payroll_Payslip_Header____Payroll_Period___Control23;UPPERCASE('Period ' + "Payroll-Payslip Header."."Payroll Period"))
                {
                }
                column(UPPERCASE_GrpText__Control24;UPPERCASE(GrpText))
                {
                }
                column(UPPERCASE_BUName2_;UPPERCASE(BUName2))
                {
                }
                column(UPPERCASE_PayAdviceTitle__Control27;UPPERCASE(PayAdviceTitle))
                {
                }
                column(EmpName3;EmpName3)
                {
                }
                column(UPPERCASE_DeptName3_;UPPERCASE(DeptName3))
                {
                }
                column(CompanyData_Name_Control30;CompanyData.Name)
                {
                }
                column(EmpNo3;EmpNo3)
                {
                }
                column(UPPERCASE__Period______Payroll_Payslip_Header____Payroll_Period___Control35;UPPERCASE('Period ' + "Payroll-Payslip Header."."Payroll Period"))
                {
                }
                column(UPPERCASE_GrpText__Control36;UPPERCASE(GrpText))
                {
                }
                column(UPPERCASE_BUName3_;UPPERCASE(BUName3))
                {
                }
                column(EMPLOYEE_NO_Caption;EMPLOYEE_NO_CaptionLbl)
                {
                }
                column(EMPLOYEE_NAMECaption;EMPLOYEE_NAMECaptionLbl)
                {
                }
                column(PROJECTCaption;PROJECTCaptionLbl)
                {
                }
                column(DEPARTMENTCaption;DEPARTMENTCaptionLbl)
                {
                }
                column(EMPLOYEE_NO_Caption_Control20;EMPLOYEE_NO_Caption_Control20Lbl)
                {
                }
                column(EMPLOYEE_NAMECaption_Control21;EMPLOYEE_NAMECaption_Control21Lbl)
                {
                }
                column(EMPLOYEE_NO_Caption_Control32;EMPLOYEE_NO_Caption_Control32Lbl)
                {
                }
                column(EMPLOYEE_NAMECaption_Control33;EMPLOYEE_NAMECaption_Control33Lbl)
                {
                }
                column(PROJECTCaption_Control1000000000;PROJECTCaption_Control1000000000Lbl)
                {
                }
                column(DEPARTMENTCaption_Control1000000001;DEPARTMENTCaption_Control1000000001Lbl)
                {
                }
                column(PROJECTCaption_Control1000000002;PROJECTCaption_Control1000000002Lbl)
                {
                }
                column(DEPARTMENTCaption_Control1000000003;DEPARTMENTCaption_Control1000000003Lbl)
                {
                }
                column(Payroll_Payslip_Header__Payroll_Period;"Payroll Period")
                {
                }
                column(Payroll_Payslip_Header__Employee_No;"Employee No")
                {
                }
                dataitem(DataItem1581;Table50006)
                {
                    DataItemLink = Payroll Period=FIELD(Payroll Period),
                                   Employee No=FIELD(Employee No);
                    DataItemTableView = SORTING(Payroll Period,Employee No,Sequence No)
                                        WHERE(Sequence No=FILTER(<>0));
                    PrintOnlyIfDetail = false;

                    trigger OnAfterGetRecord()
                    begin
                        //IF "Payroll-Payslip Lines."."Sequence No"=0 THEN
                        //  CurrReport.SKIP;
                        //IF ("Payroll-Payslip Lines.".Amount=0) AND (NOT "Show Zero Values") THEN
                        //  CurrReport.SKIP;
                        /*
                        PayText2 := '';
                        PayAmount2 := 0;
                        
                        PayText3 := '';
                        PayAmount3 := 0;
                        
                        IF NOT TopLine THEN BEGIN
                        IF Slip2 THEN
                        IF PayslipLine2.NEXT=0 THEN
                        Slip2 := FALSE;
                        
                        IF slip3 THEN
                        IF PayslipLine3.NEXT=0 THEN
                        slip3 := FALSE;
                        
                        END;
                        
                        IF Slip2 THEN BEGIN
                        PayText2 := PayslipLine2."Payslip Text";
                        PayAmount2 := PayslipLine2.Amount;
                        END;
                        IF slip3 THEN BEGIN
                        PayText3 := PayslipLine3."Payslip Text";
                        PayAmount3 := PayslipLine3.Amount;
                        END;
                        TopLine := FALSE;
                        */
                        CurrReport.SKIP;

                    end;

                    trigger OnPreDataItem()
                    begin
                        // SETFILTER("Payslip appearance", '<>%1', 4);
                        /*NameDataTypeSubtypeLength
                        PayslipHeader2RecordPayroll-Payslip Header.
                        PayslipLine2RecordPayroll-Payslip Lines.
                        PayslipHeader3RecordPayroll-Payslip Header.
                        PayslipLine3RecordPayroll-Payslip Lines.
                        */
                        
                         /*
                        BUName2 := '';
                        DeptName2 := '';
                        EmpNo2 := '';
                        EmpName2 := '';
                        
                        BUName3 := '';
                        DeptName3 := '';
                        EmpNo3 := '';
                        EmpName3 := '';
                        
                        IF Slip2 THEN BEGIN
                        PayslipHeader2.GET("Payroll-Payslip Header."."Payroll Period",Employee2."No.");
                        PayslipLine2.SETCURRENTKEY("Payroll Period","Employee No","Sequence No");
                        
                        PayslipLine2.SETRANGE("Payroll Period","Payroll-Payslip Header."."Payroll Period");
                        PayslipLine2.SETRANGE("Employee No",Employee2."No.");
                        PayslipLine2.SETFILTER(PayslipLine2."Sequence No",'<>0');
                        //PayslipLine2.SETFILTER(PayslipLine2.Amount,'<>0');
                        PayslipLine2.FIND('-');
                        END;
                        
                        IF slip3 THEN BEGIN
                        PayslipHeader3.GET("Payroll-Payslip Header."."Payroll Period",Employee3."No.");
                        
                        PayslipLine3.SETCURRENTKEY("Payroll Period","Employee No","Sequence No");
                        PayslipLine3.SETRANGE("Payroll Period","Payroll-Payslip Header."."Payroll Period");
                        PayslipLine3.SETRANGE("Employee No",Employee3."No.");
                        PayslipLine3.SETFILTER(PayslipLine3."Sequence No",'<>0');
                        //PayslipLine3.SETFILTER(PayslipLine3.Amount,'<>0');
                        PayslipLine3.FIND('-');
                        IF DeptRec.GET(Employee3."Budget Center Code") THEN BUName3 := DeptRec.Name;
                        IF ProjRec.GET(Employee3."Cost Center Code") THEN DeptName3 := ProjRec.Name;
                        EmpNo3 := Employee3."No.";
                        EmpName3 := Employee3.FullName;
                        
                        END;
                        
                        TopLine := TRUE;
                          */

                    end;
                }
                dataitem(DataItem5444;Table2000000026)
                {
                    column(PayAmount3;PayAmount3)
                    {
                    }
                    column(PayText3;PayText3)
                    {
                    }
                    column(PayText2;PayText2)
                    {
                    }
                    column(PayAmount2;PayAmount2)
                    {
                    }
                    column(PayText2_Control59;PayText2)
                    {
                    }
                    column(PayAmount2_Control60;PayAmount2)
                    {
                    }
                    column(PayAmount3_Control61;PayAmount3)
                    {
                    }
                    column(PayText3_Control62;PayText3)
                    {
                    }
                    column(PayText1;PayText1)
                    {
                    }
                    column(PayAmount1;PayAmount1)
                    {
                    }
                    column(PayAmount3_Control83;PayAmount3)
                    {
                    }
                    column(PayText3_Control84;PayText3)
                    {
                    }
                    column(PayAmount1_Control85;PayAmount1)
                    {
                    }
                    column(PayText1_Control86;PayText1)
                    {
                    }
                    column(PayText2_Control67;PayText2)
                    {
                    }
                    column(PayAmount2_Control68;PayAmount2)
                    {
                    }
                    column(PayAmount1_Control71;PayAmount1)
                    {
                    }
                    column(PayText1_Control72;PayText1)
                    {
                    }
                    column(PayText2_Control73;PayText2)
                    {
                    }
                    column(PayAmount2_Control74;PayAmount2)
                    {
                    }
                    column(PayAmount3_Control79;PayAmount3)
                    {
                    }
                    column(PayText3_Control80;PayText3)
                    {
                    }
                    column(PayAmount1_Control81;PayAmount1)
                    {
                    }
                    column(PayText1_Control82;PayText1)
                    {
                    }
                    column(Integer_Number;Number)
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        PayText1 := '';
                        PayAmount1 := 0;

                        PayText2 := '';
                        PayAmount2 := 0;

                        PayText3 := '';
                        PayAmount3 := 0;

                        IF NOT TopLine THEN BEGIN

                        IF slip1 THEN
                        IF PayslipLine1.NEXT=0 THEN
                        slip1 := FALSE;

                        IF Slip2 THEN
                        IF PayslipLine2.NEXT=0 THEN
                        Slip2 := FALSE;

                        IF slip3 THEN
                        IF PayslipLine3.NEXT=0 THEN
                        slip3 := FALSE;

                        END;

                        IF slip1 THEN BEGIN
                        PayText1 := PayslipLine1."Payslip Text";
                        PayAmount1 := PayslipLine1.Amount;
                        END;

                        IF Slip2 THEN BEGIN
                        PayText2 := PayslipLine2."Payslip Text";
                        PayAmount2 := PayslipLine2.Amount;
                        END;

                        IF slip3 THEN BEGIN
                        PayText3 := PayslipLine3."Payslip Text";
                        PayAmount3 := PayslipLine3.Amount;
                        END;

                        TopLine := FALSE;
                        IF NOT slip1 AND NOT Slip2 AND NOT slip3 THEN
                        CurrReport.BREAK;
                        PrintSection := 0;
                        IF slip1 THEN
                        PrintSection := PrintSection+100;
                        IF Slip2 THEN
                        PrintSection := PrintSection+10;
                        IF slip3 THEN
                        PrintSection := PrintSection+1;
                    end;

                    trigger OnPreDataItem()
                    begin
                        // SETFILTER("Payslip appearance", '<>%1', 4);
                        /*NameDataTypeSubtypeLength
                        PayslipHeader2RecordPayroll-Payslip Header.
                        PayslipLine2RecordPayroll-Payslip Lines.
                        PayslipHeader3RecordPayroll-Payslip Header.
                        PayslipLine3RecordPayroll-Payslip Lines.
                        */
                        
                        
                        BUName2 := '';
                        DeptName2 := '';
                        EmpNo2 := '';
                        EmpName2 := '';
                        
                        BUName3 := '';
                        DeptName3 := '';
                        EmpNo3 := '';
                        EmpName3 := '';
                        
                        
                        
                        PayslipLine1.SETCURRENTKEY("Payroll Period","Employee No","Sequence No");
                        PayslipLine1.SETRANGE("Payroll Period","Payroll-Payslip Header."."Payroll Period");
                        PayslipLine1.SETRANGE("Employee No",Employee."No.");
                        PayslipLine1.SETFILTER("Sequence No",'<>0');
                        PayslipLine1.FIND('-');
                        
                        
                        
                        IF Slip2 THEN BEGIN
                        PayslipHeader2.GET("Payroll-Payslip Header."."Payroll Period",Employee2."No.");
                        PayslipLine2.SETCURRENTKEY("Payroll Period","Employee No","Sequence No");
                        
                        PayslipLine2.SETRANGE("Payroll Period","Payroll-Payslip Header."."Payroll Period");
                        PayslipLine2.SETRANGE("Employee No",Employee2."No.");
                        PayslipLine2.SETFILTER(PayslipLine2."Sequence No",'<>0');
                        //PayslipLine2.SETFILTER(PayslipLine2.Amount,'<>0');
                        PayslipLine2.FIND('-');
                        END;
                        
                        IF slip3 THEN BEGIN
                        PayslipHeader3.GET("Payroll-Payslip Header."."Payroll Period",Employee3."No.");
                        
                        PayslipLine3.SETCURRENTKEY("Payroll Period","Employee No","Sequence No");
                        PayslipLine3.SETRANGE("Payroll Period","Payroll-Payslip Header."."Payroll Period");
                        PayslipLine3.SETRANGE("Employee No",Employee3."No.");
                        PayslipLine3.SETFILTER(PayslipLine3."Sequence No",'<>0');
                        //PayslipLine3.SETFILTER(PayslipLine3.Amount,'<>0');
                        PayslipLine3.FIND('-');
                        EmpNo3 := Employee3."No.";
                        EmpName3 := Employee3.FullName;
                        
                        END;
                        
                        slip1 := TRUE;
                        
                        TopLine := TRUE;

                    end;
                }

                trigger OnAfterGetRecord()
                begin

                    IF NOT Payrec.GET("Payroll-Payslip Header."."Employee No") THEN CurrReport.SKIP;
                    IF Payrec.Blocked THEN CurrReport.SKIP;                 //Added to skip Blocked Employees

                    BusinessUnit := Payrec."Global Dimension 1 Code";

                    Department := Payrec."Global Dimension 2 Code";


                    Designation := Payrec.Designation;

                    PeriodRec.GET("Payroll Period");
                    IF PeriodRec.Name <> '' THEN
                      PayAdviceTitle := DELCHR (PeriodRec.Name, '<>')
                    ELSE
                      PayAdviceTitle := DELCHR ("Payroll-Payslip Header."."Payroll Period", '<>');

                    BUName2 := '';
                    DeptName2 := '';
                    EmpNo2 := '';
                    EmpName2 := '';

                    BUName3 := '';
                    DeptName3 := '';
                    EmpNo3 := '';
                    EmpName3 := '';

                    IF Slip2 THEN BEGIN

                    EmpNo2 := Employee2."No.";
                    EmpName2 := Employee2.FullName;
                    END;

                    IF slip3 THEN BEGIN
                    EmpNo3 := Employee3."No.";
                    EmpName3 := Employee3.FullName;
                    END;
                end;
            }

            trigger OnAfterGetRecord()
            begin

                IF Employee.Blocked THEN
                CurrReport.SKIP;
                Serial := Serial+1;
                IF ((Serial MOD 3) <>1) THEN
                   CurrReport.SKIP;
                Employee2.GET(Employee."No.");
                Employee3.GET(Employee."No.");

                slip3 := FALSE;
                Slip2 := FALSE;
                IF Employee2.NEXT<>0 THEN
                   Slip2 := TRUE;

                IF Employee3.NEXT<>0 THEN
                IF Employee3.NEXT<>0 THEN
                      slip3 := TRUE;


                IF PGrpRec.GET(Employee."Posting Group") THEN
                  PGrpName := PGrpRec.Description
                ELSE
                  PGrpName := '';

                GrpText :=  PGrpName + ' STAFF PAYROLL';
            end;

            trigger OnPreDataItem()
            var
                gpc: Codeunit "50004";
            begin
                CompanyData.GET;
                Serial := 0;
                Employee2.SETCURRENTKEY("Posting Group","Business Unit","Global Dimension 1 Code","Global Dimension 2 Code");
                Employee3.SETCURRENTKEY("Posting Group","Business Unit","Global Dimension 1 Code","Global Dimension 2 Code");
                Employee2.COPYFILTERS(Employee);
                Employee3.COPYFILTERS(Employee);
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

    trigger OnInitReport()
    begin
        "Show Zero Values" := TRUE;
    end;

    var
        PayAdviceTitle: Text[80];
        CompanyData: Record "79";
        RecOfEDFile: Record "50001";
        PeriodRec: Record "50004";
        "Show Zero Values": Boolean;
        PGrpRec: Record "50011";
        PGrpCode: Code[10];
        PGrpName: Text[30];
        GrpText: Text[60];
        BusinessUnit: Code[10];
        Department: Code[10];
        Designation: Text[30];
        BUName: Text[60];
        BURec: Record "220";
        DeptName: Text[60];
        PaySetup: Record "50018";
        NormalTotal: Decimal;
        Payrec: Record "5200";
        Serial: Integer;
        Employee2: Record "5200";
        Employee3: Record "5200";
        slip1: Boolean;
        Slip2: Boolean;
        slip3: Boolean;
        PayslipHeader2: Record "50007";
        PayslipLine1: Record "50006";
        PayslipLine2: Record "50006";
        PayslipHeader3: Record "50007";
        PayslipLine3: Record "50006";
        BUName2: Text[60];
        DeptName3: Text[60];
        EmpNo2: Code[20];
        EmpName2: Text[60];
        BUName3: Text[60];
        DeptName2: Text[60];
        EmpNo3: Code[20];
        EmpName3: Text[60];
        PayText2: Text[60];
        PayAmount2: Decimal;
        PayText3: Text[60];
        PayAmount3: Decimal;
        TopLine: Boolean;
        PayText1: Text[60];
        PayAmount1: Decimal;
        PrintSection: Integer;
        EMPLOYEE_NO_CaptionLbl: Label 'EMPLOYEE NO.';
        EMPLOYEE_NAMECaptionLbl: Label 'EMPLOYEE NAME';
        PROJECTCaptionLbl: Label 'PROJECT';
        DEPARTMENTCaptionLbl: Label 'DEPARTMENT';
        EMPLOYEE_NO_Caption_Control20Lbl: Label 'EMPLOYEE NO.';
        EMPLOYEE_NAMECaption_Control21Lbl: Label 'EMPLOYEE NAME';
        EMPLOYEE_NO_Caption_Control32Lbl: Label 'EMPLOYEE NO.';
        EMPLOYEE_NAMECaption_Control33Lbl: Label 'EMPLOYEE NAME';
        PROJECTCaption_Control1000000000Lbl: Label 'PROJECT';
        DEPARTMENTCaption_Control1000000001Lbl: Label 'DEPARTMENT';
        PROJECTCaption_Control1000000002Lbl: Label 'PROJECT';
        DEPARTMENTCaption_Control1000000003Lbl: Label 'DEPARTMENT';
}

