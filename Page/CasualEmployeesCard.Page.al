page 50051 "Casual Employees Card"
{
    DataCaptionFields = "No.", "Employee name";
    PageType = Card;
    SourceTable = Table50062;
    SourceTableView = SORTING (No.);

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field("Employee name"; "Employee name")
                {
                }
                field(Address; Address)
                {
                }
                field(Sex; Sex)
                {
                }
                field("Date of Birth"; "Date of Birth")
                {
                }
                field(Qualification; Qualification)
                {
                }
                field("Job Code"; "Job Code")
                {
                }
                field(Class; Class)
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Business Unit"; "Business Unit")
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {
                }
            }
            group(Admin)
            {
                Caption = 'Admin';
                field("Date Employed"; "Date Employed")
                {
                }
                field("Leaving Date"; "Leaving Date")
                {
                }
                field(Blocked; Blocked)
                {
                }
                field(Status; Status)
                {
                }
                field("Inactive Date"; "Inactive Date")
                {
                }
                field("Cause of Inactivity Code"; "Cause of Inactivity Code")
                {
                }
                field("Disengagement Date"; "Disengagement Date")
                {
                }
                field("Disengagement Grounds"; "Disengagement Grounds")
                {
                }
            }
            group(Personal)
            {
                Caption = 'Personal';
                field(Guarrantor; Guarrantor)
                {
                }
                field("Guarrantor Address"; "Guarrantor Address")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Casual Employee")
            {
                Caption = '&Casual Employee';
                action("&Survey")
                {
                    Caption = '&Survey';
                    RunObject = Page 50089;
                }
            }
        }
    }

    trigger OnClosePage()
    begin
        CLEARALL;
    end;
}

