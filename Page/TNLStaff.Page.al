page 50435 "TNL Staff"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table18;
    SourceTableView = WHERE (No.=FILTER(8*|CT*|IT*|TS*));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No.";"No.")
                {
                }
                field(Name;Name)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
        }
    }

    var
        UserSetup: Record "91";
        CustRec: Record "18";
}

