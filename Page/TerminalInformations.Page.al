page 50143 "Terminal Informations"
{
    DelayedInsert = true;
    PageType = Card;
    SourceTable = Table50057;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Device ID"; "Device ID")
                {
                }
                field(Description; Description)
                {
                }
                field("Device IP"; "Device IP")
                {
                }
                field("Device No."; "Device No.")
                {
                }
                field("Use Device IP"; "Use Device IP")
                {
                }
                field(Disabled; Disabled)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        IF CurrPage.LOOKUPMODE THEN CurrPage.EDITABLE := FALSE;
    end;
}

