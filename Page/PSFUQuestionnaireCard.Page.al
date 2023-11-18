page 70073 "PSFU Questionnaire Card"
{
    SourceTable = Table50045;

    layout
    {
        area(content)
        {
            group()
            {
                field("Index No."; "Index No.")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                }
                field("Invoice Date"; "Invoice Date")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Contact Person"; "Contact Person")
                {
                }
                field("Contact Position"; "Contact Position")
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
                field("Make of the Vehicle"; "Make of the Vehicle")
                {
                }
                field("Job Card No."; "Job Card No.")
                {
                }
                field("Responsible Supervisor"; "Responsible Supervisor")
                {
                }
                field("Service Location"; "Service Location")
                {
                }
                field("Vehicle Release Date"; "Vehicle Release Date")
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
                field("Call Due Date"; "Call Due Date")
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
            group("Post Service Follow Up (Min 0 and Max 10)")
            {
                Caption = 'Post Service Follow Up (Min 0 and Max 10)';
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
                field("Fix it right"; "Fix it right")
                {
                }
                field(Done; Done)
                {
                }
                field(Score; Score)
                {
                }
                field("Customer's Feedback"; "Customer's Feedback")
                {
                    MultiLine = true;
                }
                field("General Comment"; "General Comment")
                {
                    MultiLine = true;
                }
            }
        }
    }

    actions
    {
    }
}

