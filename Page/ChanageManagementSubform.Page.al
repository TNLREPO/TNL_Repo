page 50612 "Chanage Management Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = Table70028;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.")
                {
                }
                field("Affected Object Type"; "Affected Object Type")
                {
                }
                field("Object Code"; "Object Code")
                {
                }
                field(Description; Description)
                {
                }
                field("Change Type"; "Change Type")
                {
                }
            }
        }
    }

    actions
    {
    }
}

