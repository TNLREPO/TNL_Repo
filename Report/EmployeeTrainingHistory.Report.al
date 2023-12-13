report 50133 "Employee Training History"
{
    DefaultLayout = RDLC;
    RDLCLayout = './EmployeeTrainingHistory.rdlc';

    dataset
    {
        dataitem(DataItem7528; Table5200)
        {
            DataItemTableView = SORTING (No.);
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Business Unit", "Global Dimension 1 Code", "Global Dimension 2 Code";
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
            column(EmpName; EmpName)
            {
            }
            column(Employee__No__; "No.")
            {
            }
            column(TUCost; TUCost)
            {
            }
            column(TSize; TSize)
            {
                DecimalPlaces = 0 : 0;
            }
            column(TCost; TCost)
            {
            }
            column(TOTALS_; '  TOTALS')
            {
            }
            column(GTCost; GTCost)
            {
            }
            column(GTSize; GTSize)
            {
                DecimalPlaces = 0 : 0;
            }
            column(GTUCost; GTUCost)
            {
            }
            column(EMPLOYEE_TRAINING_HISTORYCaption; EMPLOYEE_TRAINING_HISTORYCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Training_CompanyCaption; Training_CompanyCaptionLbl)
            {
            }
            column(Course_DateCaption; Course_DateCaptionLbl)
            {
            }
            column(Staff_CountCaption; Staff_CountCaptionLbl)
            {
            }
            column(Course_TakenCaption; Course_TakenCaptionLbl)
            {
            }
            column(DurationCaption; DurationCaptionLbl)
            {
            }
            column(Course_CostCaption; Course_CostCaptionLbl)
            {
            }
            column(Cost_Per_StaffCaption; Cost_Per_StaffCaptionLbl)
            {
            }
            column(CommentsCaption; CommentsCaptionLbl)
            {
            }
            column(Course_Attendance__Training_Group_Caption; "Course Attendance".FIELDCAPTION("Training Group"))
            {
            }
            column(Grand_TotalsCaption; Grand_TotalsCaptionLbl)
            {
            }
            dataitem(DataItem8549; Table50083)
            {
                DataItemLink = Employee No=FIELD(No.);
                DataItemTableView = SORTING (Employee No, Training Course Code)
                                    ORDER(Ascending);
                RequestFilterFields = "Employee No", "Business Unit", "Global Dimension 1 Code", "Global Dimension 2 Code", "Start Date";
                column(FORMAT__Start_Date__0_4_; FORMAT("Start Date", 0, 4))
                {
                }
                column(Duration; Duration)
                {
                }
                column(TotalCost; TotalCost)
                {
                }
                column(Course_Attendance_Cost; Cost)
                {
                }
                column(ClassSize; ClassSize)
                {
                }
                column(Course_Attendance_Comments; Comments)
                {
                }
                column(CourseDescription; CourseDescription)
                {
                }
                column(VName; VName)
                {
                }
                column(Course_Attendance__Training_Group_; "Training Group")
                {
                }
                column(Course_Attendance_Training_Course_Code; "Training Course Code")
                {
                }
                column(Course_Attendance_Employee_No; "Employee No")
                {
                }

                trigger OnAfterGetRecord()
                begin

                    IF CourseRec.GET("Course Attendance"."Training Course Code") THEN BEGIN
                        CC := CC + 1;
                        CourseRec.CALCFIELDS(CourseRec."Class Size");
                        VName := CourseRec."Vendor name";
                        CourseDescription := CourseRec."Course Description";
                        Duration := CourseRec."Course Duration";
                        TotalCost := CourseRec."Total Cost";
                        ClassSize := CourseRec."Class Size";
                    END;

                    TCost := TCost + TotalCost;
                    TUCost := TUCost + Cost;
                    TSize := TSize + ClassSize;

                    IF NOT (CourseExist("Training Course Code")) THEN BEGIN
                        ExistingCourses[CC] := "Training Course Code";
                        GTCost := GTCost + TotalCost;
                    END;
                    GTUCost := GTUCost + Cost;
                    GTSize := GTSize + ClassSize;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                TCost := 0;
                TUCost := 0;
                TSize := 0;

                //VName := Vendor.Name;
                EmpName := Employee.FullName;
            end;

            trigger OnPreDataItem()
            begin
                GTCost := 0;
                GTUCost := 0;
                GTSize := 0;
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
        CC := 0;
        FOR Ci := 1 TO 1000 DO ExistingCourses[Ci] := '';
    end;

    var
        TCost: Decimal;
        TSize: Decimal;
        TUCost: Decimal;
        GTCost: Decimal;
        GTUCost: Decimal;
        GTSize: Decimal;
        VName: Text[100];
        Named: Boolean;
        CTypeRec: Record 50081;
        CTName: Text[50];
        Duration: Code[10];
        TotalCost: Decimal;
        UnitCost: Decimal;
        ClassSize: Integer;
        CourseDescription: Text[100];
        VendRec: Record "23";
        CourseRec: Record "50082";
        EmpName: Text[100];
        ExistingCourses: array[1001] of Code[10];
        CC: Integer;
        Ci: Integer;
        k: Integer;
        EMPLOYEE_TRAINING_HISTORYCaptionLbl: Label 'EMPLOYEE TRAINING HISTORY';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Training_CompanyCaptionLbl: Label 'Training Company';
        Course_DateCaptionLbl: Label 'Course Date';
        Staff_CountCaptionLbl: Label 'Staff Count';
        Course_TakenCaptionLbl: Label 'Course Taken';
        DurationCaptionLbl: Label 'Duration';
        Course_CostCaptionLbl: Label 'Course Cost';
        Cost_Per_StaffCaptionLbl: Label 'Cost Per Staff';
        CommentsCaptionLbl: Label 'Comments';
        Grand_TotalsCaptionLbl: Label 'Grand Totals';

    [Scope('Internal')]
    procedure CourseExist(CCode: Code[10]): Boolean
    begin
        k := 0;

        REPEAT
            k := k + 1;
            IF (ExistingCourses[k] = CCode) THEN EXIT(TRUE);
        UNTIL (k = CC);

        EXIT(FALSE);
    end;
}

