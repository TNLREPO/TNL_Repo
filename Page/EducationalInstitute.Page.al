page 50073 "Educational Institute"
{
    PageType = Card;
    SourceTable = Table50086;
    SourceTableView = SORTING (Institute Grp, Institute Code);

    layout
    {
        area(content)
        {
            group()
            {
                field("Institute Grp"; "Institute Grp")
                {
                }
                field("Institute Grp Name"; "Institute Grp Name")
                {
                    Editable = false;
                }
                field("Institute Code"; "Institute Code")
                {
                }
                field("Institute Name"; "Institute Name")
                {
                }
                field("Staffs In"; "Staffs In")
                {
                    Caption = 'Staff Count';
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }
}

