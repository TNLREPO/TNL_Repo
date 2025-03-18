page 80006 "Fault Material Setup List"
{
    CardPageID = "Fault Material Card";
    Editable = false;
    PageType = List;
    SourceTable = "Fault Setup Header";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Operation Code"; Rec."Operation Code")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Model No."; Rec."Model No.")
                {
                }
            }
        }
    }
   
}

