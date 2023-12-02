page 50081 "Scholarship Course Card"
{
    PageType = Card;
    SourceTable = "Scholarship Courses";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Course Code"; Rec."Course Code")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field(Group; Rec.Group)
                {
                    Caption = 'Group Code';
                }
                field(GetGrpName; Rec.GetGrpName)
                {
                    Editable = false;
                }
                field("Staff Count"; Rec."Staff Count")
                {
                    Editable = false;
                }
                field("Bonding Period"; Rec."Bonding Period")
                {
                    BlankZero = true;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Course Register")
            {
                Caption = '&Course Register';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50080;
                RunPageLink = "Course Code" = FIELD("Course Code");
            }
        }
    }

    var
        CGrp: Record "Scholarship Courses Grp";

    [Scope('Internal')]
    procedure GetGrpName(): Text[30]
    begin
        IF CGrp.GET(Group) THEN
            EXIT(CGrp.Description)
        ELSE
            EXIT('');
    end;
}

