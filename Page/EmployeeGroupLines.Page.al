page 50016 "Employee Group Lines."
{
    CardPageID = "Payroll Employee Group Card";
    PageType = ListPart;
    SourceTable = Table50008;
    SourceTableView = WHERE (Hide = CONST (No));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Employee Name"; "Employee Name")
                {
                    Visible = false;
                }
                field("Employee Group"; "Employee Group")
                {
                    Visible = false;
                }
                field("E/D Code"; "E/D Code")
                {
                    Lookup = true;
                    LookupPageID = "E/D Survey.";
                }
                field("Payslip Text"; "Payslip Text")
                {
                }
                field("Posting Group"; "Posting Group")
                {
                }
                field("Default Amount"; "Default Amount")
                {
                    DecimalPlaces = 0 :;
                    NotBlank = true;
                    Numeric = false;
                }
                field("Yearly Allowance"; "Yearly Allowance")
                {
                }
                field(Units; Units)
                {
                }
                field("Basic Salary"; "Basic Salary")
                {
                }
                field(Rate; Rate)
                {
                }
                field(Quantity; Quantity)
                {
                }
                field(Flag; Flag)
                {
                }
                field("Old Default Amount"; "Old Default Amount")
                {
                }
                field("Date Changed"; "Date Changed")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Calculate)
            {
                Caption = 'Calculate';
                Image = Recalculate;

                trigger OnAction()
                begin
                    VALIDATE("E/D Code");
                end;
            }
        }
    }

    var
        EDRec: Record "50001";

    [Scope('Internal')]
    procedure GetEDName(): Text[30]
    begin
        // This code was disabled by Adams
        // A more efficient LOOKUP field is used instead
        /*
           IF EDRec.GET("E/D Code") THEN
              EXIT(EDRec."Payslip Text");
        */
        //

    end;
}

