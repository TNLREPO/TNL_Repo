page 80028 "Being Serviced"
{
    CardPageID = "Customer Order Card";
    PageType = List;
    SourceTable = Table70034;
    SourceTableView = WHERE (Stage = CONST (Being Serviced));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {

                    trigger OnValidate()
                    begin
                        //IF "JobNo." ==: xRec."No." THEN BEGIN
                        //TechName =: (ClockingSheet."Technician Name");
                        //JobStartDate =: (ClockingSheet."Start Date");
                        //JobClockTime =: (ClockingSheet."Clocked Time");
                        //END;
                    end;
                }
                field("Reception Date"; "Reception Date")
                {
                }
                field("Reception Time"; "Reception Time")
                {
                }
                field("Reception Type"; "Reception Type")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Parts Ordered Date"; "Parts Ordered Date")
                {
                }
                field("Parts Ordered Time"; "Parts Ordered Time")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Estimated Completion Date"; "Estimated Completion Date")
                {
                }
                field("Estimated Completion Time"; "Estimated Completion Time")
                {
                }
                field(Completed; Completed)
                {
                    Editable = true;
                }
                field(Pending; Pending)
                {
                    Editable = true;
                }
                field("Current Action"; "Current Action")
                {
                    Editable = true;
                }
                field("Completed Reason"; "Completed Reason")
                {
                    Editable = true;
                }
                field(Technician; Technician)
                {
                }
                field("Technician Name"; "Technician Name")
                {
                }
                field("Job Classification"; "Job Classification")
                {
                }
                field("Posted By"; "Posted By")
                {
                }
            }
        }
        area(factboxes)
        {
            systempart(; Notes)
            {
            }
            systempart(; Links)
            {
            }
        }
    }

    actions
    {
    }

    var
        TechName: Text[50];
        JobStartDate: DateTime;
        JobCloseDate: Duration;
        ClockingSheet: Record "70038";
        "JobNo.": Code[20];
}

