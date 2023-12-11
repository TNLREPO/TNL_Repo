page 50273 "Periodic Maintenance List"
{
    CardPageID = "Periodic Maintenance Card";
    PageType = List;
    SourceTable = "Periodic Maintenance";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("VRI Code"; Rec."VRI Code")
                {
                }
                field("Chasis No."; Rec."Chasis No.")
                {
                }
                field("Last Modified Date"; Rec."Last Modified Date")
                {
                }
                field("No. Of Due Days"; Rec."No. Of Due Days")
                {
                }
                field("Item Description"; Rec."Item Description")
                {
                }
                field("Current Date"; Rec."Current Date")
                {
                }
                field("Date Filter"; Rec."Date Filter")
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
        Styletxt := Rec.StyleResult;

        IF Rec."Chasis No." <> '' THEN
            Rec.VALIDATE("Current Date", WORKDATE);
    end;

    var
        PeriodicMaintenance: Record 70021;
        Styletxt: Text;
}

