page 80051 "PSFU Card"
{
    Editable = true;
    SourceTable = Table70040;

    layout
    {
        area(content)
        {
            group()
            {
                field("Index No."; "Index No.")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Contact Phone No."; "Contact Phone No.")
                {
                }
                field("Contact Mobile Phone"; "Contact Mobile Phone")
                {
                }
                field("E-Mail"; "E-Mail")
                {
                }
                field("Driver's Name"; "Driver's Name")
                {
                }
                field("Driver's Phone (Mobile)"; "Driver's Phone (Mobile)")
                {
                }
                field("Vehicle No."; "Vehicle No.")
                {
                }
                field(Model; Model)
                {
                }
                field("COF No."; "COF No.")
                {
                }
                field("Responsible Supervisor"; "Responsible Supervisor")
                {
                }
                field("Job Details"; "Job Details")
                {
                }
                field("Additional Job Details"; "Additional Job Details")
                {
                }
                field("Other Findings/Advice"; "Other Findings/Advice")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Delivery Time"; "Delivery Time")
                {
                }
                field("Call Due Date"; "Call Due Date")
                {
                }
            }
            group("Post Service Follow Up")
            {
                field("Work Completed the First Time"; "Work Completed the First Time")
                {
                    Caption = 'Was the works req''d completed correctly the first time?';
                    ExtendedDatatype = Masked;
                    MultiLine = true;
                }
                field("Treatment Reception/Delivery"; "Treatment Reception/Delivery")
                {
                    Caption = 'How were you treated during the reception and  delivery  process?';
                }
                field("Waitting Time at Reception"; "Waitting Time at Reception")
                {
                    Caption = 'Describe the waiting time at the reception';
                    Description = '<Describe the waiting time at the reception>';
                }
                field("Work/Est. Explanation Recept"; "Work/Est. Explanation Recept")
                {
                    Caption = 'Was the work required and estimate charges explained at the reception ?';
                }
                field("Was the Veh. Finished On Time"; "Was the Veh. Finished On Time")
                {
                    Caption = 'Was the vehicle ready at the promised  time?';
                }
                field("Service Accuracy"; "Service Accuracy")
                {
                }
                field("Standard Expectations"; "Standard Expectations")
                {
                    Caption = 'Did the standard of work  meet your expectations and satisfaction?';
                }
                field("Will you Recomend Us to Other"; "Will you Recomend Us to Other")
                {
                    Caption = 'Will you Recomend Us to Other?';
                }
                field("Reason for Failed Finishd Time"; "Reason for Failed Finishd Time")
                {
                    Caption = 'If Not Finished on Time what was the reason?';
                }
                field(Comment; Comment)
                {
                }
                field("Fix it right"; "Fix it right")
                {
                }
                field(Done; Done)
                {
                }
                field(Score; Score)
                {
                }
                field(Called; Called)
                {
                }
                field("Call Response"; "Call Response")
                {
                }
                field(Action; Action)
                {
                }
                field("PSFU Actual Date"; "PSFU Actual Date")
                {
                }
                field("PSFU Actual Time"; "PSFU Actual Time")
                {
                }
                field("PSFU Staff Code"; "PSFU Staff Code")
                {
                }
                field("PSFU Staff Name"; "PSFU Staff Name")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        IF Done THEN
            CurrPage.EDITABLE := FALSE;

        IF COFRec.GET("COF No.") THEN BEGIN
            "Delivery Date" := COFRec."Date Delivered";
            "Vehicle No." := COFRec."Vehicle Registration No.";
            Model := COFRec."Model Name";
            "Delivery Time" := COFRec."Time Delivered";

        END;
    end;

    trigger OnOpenPage()
    begin
        IF Done THEN
            CurrPage.EDITABLE := FALSE;

        IF COFRec.GET("COF No.") THEN BEGIN
            "Delivery Date" := COFRec."Date Delivered";
            "Vehicle No." := COFRec."Vehicle Registration No.";
            Model := COFRec."Model Name";
            "Delivery Time" := COFRec."Time Delivered";

        END;
    end;

    var
        COFRec: Record "70034";
}

