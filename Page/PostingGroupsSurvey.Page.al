page 50018 "Posting Groups Survey."
{
    CardPageID = "Posting Group Header.";
    PageType = List;
    SourceTable = "Payroll-Posting Group Header.";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Posting Group Code"; Rec."Posting Group Code")
                {
                }
                field("Search Name"; Rec."Search Name")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(Management; Rec.Management)
                {
                }
            }
        }
    }

    actions
    {
    }
}

