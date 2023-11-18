page 50012 "Table Lookup Survey."
{
    CardPageID = "Table Lookup Header.";
    Editable = false;
    PageType = List;
    SourceTable = Table50002;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(TableId; TableId)
                {
                }
                field(Type; Type)
                {
                }
                field(Description; Description)
                {
                }
                field("Max. Extract Amount"; "Max. Extract Amount")
                {
                }
                field("Min. Extract Amount"; "Min. Extract Amount")
                {
                }
            }
        }
    }

    actions
    {
    }
}

