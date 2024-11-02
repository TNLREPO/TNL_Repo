page 80006 "Fault Material Setup List"
{
    CardPageID = "Fault Material Card";
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = List;
    SourceTable = "Fault Setup HeaderX";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Operation Code";Rec. "Operation Code")
                {
                }
                field(Description;Rec. Description)
                {
                }
                field("Model No.";Rec. "Model No.")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

