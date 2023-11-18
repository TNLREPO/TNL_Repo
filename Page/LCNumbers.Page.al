page 50031 "LC Numbers"
{
    PageType = Card;
    SourceTable = Table230;
    SourceTableView = WHERE (LC Number=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Code; Code)
                {
                }
                field(Description; Description)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        "LC Number" := TRUE;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        "LC Number" := TRUE;
    end;
}

