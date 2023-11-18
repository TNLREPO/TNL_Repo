page 50079 "Scholarship Register Card"
{
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Table50089;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Reg No"; "Reg No")
                {
                    Editable = false;
                }
                field("Employee No"; "Employee No")
                {

                    trigger OnValidate()
                    begin
                        IF EmpRec.GET("Employee No") THEN EmpName := EmpRec.FullName;
                    end;
                }
                field(EmpName; EmpName)
                {
                    Editable = false;
                }
                field("Institution Group"; "Institution Group")
                {
                }
                field(Institution; Institution)
                {

                    trigger OnValidate()
                    begin
                        InstRec.SETRANGE(InstRec."Institute Code", Institution);
                        IF InstRec.FIND('-') THEN InstName := InstRec."Institute Name";
                    end;
                }
                field(InstName; InstName)
                {
                    Editable = false;
                }
                field("Course Group"; "Course Group")
                {
                }
                field("Course Code"; "Course Code")
                {

                    trigger OnValidate()
                    begin
                        IF CourseRec.GET("Course Code") THEN CourseName := CourseRec.Description;
                    end;
                }
                field(CourseName; CourseName)
                {
                    Editable = false;
                }
                field(Comment; Comment)
                {
                }
                field(Completed; Completed)
                {
                }
                field(Registered; Registered)
                {
                    Style = StandardAccent;
                    StyleExpr = TRUE;
                }
                field("Date Last Paid"; "Date Last Paid")
                {
                    Caption = 'Date Last Paid';
                    Editable = false;
                }
                field(Duration; Duration)
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field("Bonding Date"; "Bonding Date")
                {
                }
                field("Amount Authorized"; "Amount Authorized")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Amount Paid"; "Amount Paid")
                {
                    Caption = 'Total Amount Paid';
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field("Amount Refunded"; "Amount Refunded")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Amount Authorized" -"Amount Refunded" - "Amount Paid"; "Amount Authorized" - "Amount Refunded" - "Amount Paid")
                {
                    Caption = 'Remaining Amount';
                    Editable = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field(GetIndebtedness; GetIndebtedness)
                {
                    Caption = 'Employee Indebtedness';
                    Style = Standard;
                    StyleExpr = TRUE;
                }
            }
            group(Administration)
            {
                Caption = 'Administration';
                field("Date Authorized"; "Date Authorized")
                {
                }
                field("Actual Completion Date"; "Actual Completion Date")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Register")
            {
                Caption = '&Register';
                Image = Confirm;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    IF xRec.Registered THEN ERROR('This Scholarship is akready Registered!');

                    IF CONFIRM('Are you sure you want to Register this Scholarship Course', FALSE, TRUE) THEN BEGIN
                        Registered := TRUE;
                        MODIFY;
                    END;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF EmpRec.GET("Employee No") THEN EmpName := EmpRec.FullName;

        InstRec.SETRANGE(InstRec."Institute Code", Institution);
        IF InstRec.FIND('-') THEN InstName := InstRec."Institute Name";

        IF CourseRec.GET("Course Code") THEN CourseName := CourseRec.Description;
    end;

    trigger OnClosePage()
    begin
        CLEARALL;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        EmpName := '';
        CourseName := '';
        InstName := '';
    end;

    var
        EmpName: Text[60];
        CourseName: Text[60];
        InstName: Text[100];
        RegRec: Record "50089";
        EmpRec: Record 5200;
        InstRec: Record "50086";
        CourseRec: Record "50088";
        RemAmt: Decimal;
        Paid: Decimal;
        Ref: Decimal;
}

