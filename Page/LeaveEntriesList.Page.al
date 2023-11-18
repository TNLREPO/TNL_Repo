page 50097 "Leave Entries List"
{
    CardPageID = "Leave Plan Card-1";
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50075;
    SourceTableView = SORTING (Employee No., Leave Period, Entry Type)
                      WHERE (Entry Type=CONST(PLAN));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Employee No."; "Employee No.")
                {
                }
                field("Leave Period"; "Leave Period")
                {
                }
                field("Annual Duration"; "Annual Duration")
                {
                }
                field("Amount Due"; "Amount Due")
                {
                }
                field("Amount Paid"; "Amount Paid")
                {
                }
                field("Business Unit"; "Business Unit")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field(Registered; Registered)
                {
                }
                field("Entry Type Filter"; "Entry Type Filter")
                {
                }
                field("Date Filter"; "Date Filter")
                {
                }
                field("Total Leaves Due"; "Total Leaves Due")
                {
                }
                field("Total Compassionate"; "Total Compassionate")
                {
                }
                field("Total Exam"; "Total Exam")
                {
                }
                field("Total Others"; "Total Others")
                {
                }
                field("Total Consuming"; "Total Consuming")
                {
                }
                field("Total Annual"; "Total Annual")
                {
                }
                field("Total Commuted To Cash"; "Total Commuted To Cash")
                {
                }
                field("Start Date1"; "Start Date1")
                {
                }
                field("End Date1"; "End Date1")
                {
                }
                field("No. Days1"; "No. Days1")
                {
                }
                field("Start Date2"; "Start Date2")
                {
                }
                field("End Date2"; "End Date2")
                {
                }
                field("No. Days2"; "No. Days2")
                {
                }
                field("Start Date3"; "Start Date3")
                {
                }
                field("End Date3"; "End Date3")
                {
                }
                field("No. Days3"; "No. Days3")
                {
                }
                field("Start Date4"; "Start Date4")
                {
                }
                field("End Date4"; "End Date4")
                {
                }
                field("No. Days4"; "No. Days4")
                {
                }
                field(Registered1; Registered1)
                {
                }
                field(Registered2; Registered2)
                {
                }
                field(Registered3; Registered3)
                {
                }
                field(Registered4; Registered4)
                {
                }
                field("Entry Type"; "Entry Type")
                {
                }
                field("Leave Category"; "Leave Category")
                {
                }
                field(LeaveDate; LeaveDate)
                {
                }
                field("Actual Start Date"; "Actual Start Date")
                {
                }
                field("Actual End Date"; "Actual End Date")
                {
                }
                field("Actual Duration"; "Actual Duration")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Leave Auto Generation")
            {
                Caption = '&Leave Auto Generation';
                action("Generate Leave Plan")
                {
                    Caption = 'Generate Leave Plan';
                    RunObject = Report 50086;
                    ShortCutKey = 'Ctrl+G';

                    trigger OnAction()
                    var
                        InteractTemplLanguage: Record "50022";
                    begin
                    end;
                }
            }
        }
    }
}

