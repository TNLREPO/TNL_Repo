page 50153 "Emolument Groups Survey"
{
    CardPageID = "Emolument Group Header";
    Editable = false;
    PageType = List;
    SourceTable = Table50000;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Code; Code)
                {
                }
                field("Search Name"; "Search Name")
                {
                }
                field(Grade; Grade)
                {
                }
                field(Step; Step)
                {
                }
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field(EmpGrp.GetEmpName(Code);
                    EmpGrp.GetEmpName(Code))
                {
                    Caption = 'Employee Name';
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Group")
            {
                Caption = '&Group';
                action("&Card")
                {
                    Caption = '&Card';
                    Image = EditLines;
                    RunObject = Page 50152;
                    RunPageLink = Code = FIELD (Code);
                    ShortCutKey = 'Shift+F7';
                }
            }
        }
    }

    var
        EmpGrp: Record "50009";
}

