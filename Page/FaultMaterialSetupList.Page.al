page 50236 "Fault Material Setup List."
{
    DeleteAllowed = false;
    InsertAllowed = true;
    PageType = List;
    SourceTable = Table50109;

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
        area(navigation)
        {
            action("Open Card")
            {
                Caption = 'Open Card';
                Image = GetEntries;
                Promoted = true;
                RunObject = Page 70061;
                RunPageOnRec = true;
                ShortCutKey = 'Shift+F7';
            }
        }
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

