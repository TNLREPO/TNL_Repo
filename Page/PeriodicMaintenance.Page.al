page 50282 "Periodic - Maintenance"
{
    PageType = List;
    SourceTable = Table50058;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("VRI Code"; "VRI Code")
                {
                }
                field("VRI Date"; "VRI Date")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field(Description; Description)
                {
                }
                field("Item Serial No."; "Item Serial No.")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Key No."; "Key No.")
                {
                }
                field("Exterior Colour"; "Exterior Colour")
                {
                }
                field("Last Date Modified"; "Last Date Modified")
                {

                    trigger OnValidate()
                    begin
                        "No. of Due Days" := "Current Date" - "Last Date Modified";
                    end;
                }
                field("Current Date"; "Current Date")
                {

                    trigger OnValidate()
                    begin
                        "No. of Due Days" := "Current Date" - "Last Date Modified";
                    end;
                }
                field("No. of Due Days"; "No. of Due Days")
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
        IF "Current Date" <> 0D THEN
            VALIDATE("Current Date", WORKDATE);
    end;
}

