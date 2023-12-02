page 50051 "Casual Employees Card"
{
    DataCaptionFields = "No.", "Employee name";
    PageType = Card;
    SourceTable = "Casual Employees";
    SourceTableView = SORTING("No.");

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {

                    trigger OnAssistEdit()
                    begin
                        IF Rec.AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field("Employee name"; Rec."Employee name")
                {
                }
                field(Address; Rec.Address)
                {
                }
                field(Sex; Rec.Sex)
                {
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                }
                field(Qualification; Rec.Qualification)
                {
                }
                field("Job Code"; Rec."Job Code")
                {
                }
                field(Class; Rec.Class)
                {
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                }
                field("Business Unit"; Rec."Business Unit")
                {
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                }
            }
            group(Admin)
            {
                Caption = 'Admin';
                field("Date Employed"; Rec."Date Employed")
                {
                }
                field("Leaving Date"; Rec."Leaving Date")
                {
                }
                field(Blocked; Rec.Blocked)
                {
                }
                field(Status; Rec.Status)
                {
                }
                field("Inactive Date"; Rec."Inactive Date")
                {
                }
                field("Cause of Inactivity Code"; Rec."Cause of Inactivity Code")
                {
                }
                field("Disengagement Date"; Rec."Disengagement Date")
                {
                }
                field("Disengagement Grounds"; Rec."Disengagement Grounds")
                {
                }
            }
            group(Personal)
            {
                Caption = 'Personal';
                field(Guarrantor; Rec.Guarrantor)
                {
                }
                field("Guarrantor Address"; Rec."Guarrantor Address")
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

