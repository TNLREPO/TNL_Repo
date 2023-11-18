page 50081 "Scholarship Course Card"
{
    PageType = Card;
    SourceTable = Table50088;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Course Code"; "Course Code")
                {
                }
                field(Description; Description)
                {
                }
                field(Group; Group)
                {
                    Caption = 'Group Code';
                }
                field(GetGrpName; GetGrpName)
                {
                    Editable = false;
                }
                field("Staff Count"; "Staff Count")
                {
                    Editable = false;
                }
                field("Bonding Period"; "Bonding Period")
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
                RunPageLink = Course Code=FIELD(Course Code);
            }
        }
    }

    var
        CGrp: Record "50087";

    [Scope('Internal')]
    procedure GetGrpName(): Text[30]
    begin
        IF CGrp.GET(Group) THEN
          EXIT(CGrp.Description)
        ELSE
          EXIT('');
    end;
}

