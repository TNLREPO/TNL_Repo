page 80006 "Fault Material Setup List"
{
    CardPageID = "Fault Material Card";
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = Table70031;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Operation Code"; "Operation Code")
                {
                }
                field(Description; Description)
                {
                }
                field("Model No."; "Model No.")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

