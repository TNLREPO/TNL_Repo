page 50273 "Periodic Maintenance List"
{
    CardPageID = "Periodic Maintenance Card";
    PageType = List;
    SourceTable = Table70021;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("VRI Code"; "VRI Code")
                {
                }
                field("Chasis No."; "Chasis No.")
                {
                }
                field("Last Modified Date"; "Last Modified Date")
                {
                }
                field("No. Of Due Days"; "No. Of Due Days")
                {
                }
                field("Item Description"; "Item Description")
                {
                }
                field("Current Date"; "Current Date")
                {
                }
                field("Date Filter"; "Date Filter")
                {
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Reset Date1")
            {
                Caption = 'Reset Date';
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Report 50225;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Styletxt := StyleResult;

        IF "Chasis No." <> '' THEN
            VALIDATE("Current Date", WORKDATE);
    end;

    var
        PeriodicMaintenance: Record "70021";
        Styletxt: Text;
}

