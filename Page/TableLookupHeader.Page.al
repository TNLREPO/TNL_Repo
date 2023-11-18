page 50010 "Table Lookup Header."
{
    PageType = ListPlus;
    SourceTable = Table50002;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(TableId; TableId)
                {
                    Lookup = false;
                }
                field(Description; Description)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Type; Type)
                {
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field("Input Factor"; "Input Factor")
                {
                }
                field("Max. Extract Amount"; "Max. Extract Amount")
                {
                }
                field("Rounding Precision"; "Rounding Precision")
                {
                }
                field("Output Factor"; "Output Factor")
                {
                }
                field("Min. Extract Amount"; "Min. Extract Amount")
                {
                    Caption = 'Min. Extract Amount';
                }
                field("Rounding Direction"; "Rounding Direction")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Detail lines")
            {
                Caption = '&Detail lines';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50011;
                RunPageLink = TableId = FIELD (TableId);
            }
        }
    }
}

