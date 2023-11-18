page 70105 "Absence Register"
{
    PageType = List;
    SourceTable =   "Leave Plan Lines Rev 2";
    SourceTableView = WHERE (Treated = filter (true));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Employee No."; Rec."Employee No.")
                {
                }
                field("Actual Start Date"; Rec."Actual Start Date")
                {
                }
                field("Actual End Date"; Rec."Actual End Date")
                {
                }
                field("Actual Duration"; Rec."Actual Duration")
                {
                }
                field(Treated; Rec.Treated)
                {
                }
            }
        }
    }

    actions
    {
    }
}

