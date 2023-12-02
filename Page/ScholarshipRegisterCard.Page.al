page 50079 "Scholarship Register Card"
{
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = "Scholarship Register";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Reg No"; Rec."Reg No")
                {
                    Editable = false;
                }
                field("Employee No"; Rec."Employee No")
                {

                    trigger OnValidate()
                    begin
                        IF EmpRec.GET(Rec."Employee No") THEN EmpName := EmpRec.FullName;
                    end;
                }
                field(EmpName; EmpName)
                {
                    Editable = false;
                }
                field("Institution Group"; Rec."Institution Group")
                {
                }
                field(Institution; Rec.Institution)
                {

                    trigger OnValidate()
                    begin
                        InstRec.SETRANGE(InstRec."Institute Code", Rec.Institution);
                        IF InstRec.FIND('-') THEN InstName := InstRec."Institute Name";
                    end;
                }
                field(InstName; InstName)
                {
                    Editable = false;
                }
                field("Course Group"; Rec."Course Group")
                {
                }
                field("Course Code"; Rec."Course Code")
                {

                    trigger OnValidate()
                    begin
                        IF CourseRec.GET(Rec."Course Code") THEN CourseName := CourseRec.Description;
                    end;
                }
                field(CourseName; CourseName)
                {
                    Editable = false;
                }
                field(Comment; Rec.Comment)
                {
                }
                field(Completed; Rec.Completed)
                {
                }
                field(Registered; Rec.Registered)
                {
                    Style = StandardAccent;
                    StyleExpr = TRUE;
                }
                field("Date Last Paid"; Rec."Date Last Paid")
                {
                    Caption = 'Date Last Paid';
                    Editable = false;
                }
                field(Duration; Rec.Duration)
                {
                }
                field("Start Date"; Rec."Start Date")
                {
                }
                field("End Date"; Rec."End Date")
                {
                }
                field("Bonding Date"; Rec."Bonding Date")
                {
                }
                field("Amount Authorized"; Rec."Amount Authorized")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Amount Paid"; Rec."Amount Paid")
                {
                    Caption = 'Total Amount Paid';
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field("Amount Refunded"; Rec."Amount Refunded")
                {
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Amount Authorized -Amount Refunded - Amount Paid"; "Amount Authorized" - "Amount Refunded" - "Amount Paid")
                {
                    Caption = 'Remaining Amount';
                    Editable = false;
                    Style = Standard;
                    StyleExpr = TRUE;

                }
                field(GetIndebtedness; Rec.GetIndebtedness)
                {
                    Caption = 'Employee Indebtedness';
                    Style = Standard;
                    StyleExpr = TRUE;

                }
            }
            group(Administration)
            {
                Caption = 'Administration';
                field("Date Authorized"; Rec."Date Authorized")
                {
                }
                field("Actual Completion Date"; Rec."Actual Completion Date")
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
                        Rec.Registered := TRUE;
                        Rec.MODIFY;
                    END;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        IF EmpRec.GET(Rec."Employee No") THEN EmpName := EmpRec.FullName;

        InstRec.SETRANGE(InstRec."Institute Code", Rec.Institution);
        IF InstRec.FIND('-') THEN InstName := InstRec."Institute Name";

        IF CourseRec.GET(Rec."Course Code") THEN CourseName := CourseRec.Description;
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
        RegRec: Record "Scholarship Register";
        EmpRec: Record 5200;
        InstRec: Record "Educational Institute";
        CourseRec: Record "Scholarship Courses";
        RemAmt: Decimal;
        Paid: Decimal;
        Ref: Decimal;
}

