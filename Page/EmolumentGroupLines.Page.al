page 50151 "Emolument Group Lines."
{
    PageType = List;
    SourceTable = Table50005;

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
                field("Emolument Group"; "Emolument Group")
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
                field("Payslip Group ID"; "Payslip Group ID")
                {
                }
            }
        }
    }

    actions
    {
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

    end;
}

