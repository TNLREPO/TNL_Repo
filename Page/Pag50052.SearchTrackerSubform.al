page 50052 "Search Tracker Subform"
{
    ApplicationArea = All;
    Caption = 'Search Tracker Subform';
    PageType = ListPart;
    SourceTable = "Search Tracker Line";
    DelayedInsert = true;
    AutoSplitKey = true;
    DeleteAllowed = true;
    MultipleNewLines = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Part No"; Rec."Part No")
                {
                    ToolTip = 'Specifies the value of the Part No field.', Comment = '%';
                }
                field("Part Description"; Rec."Part Description")
                {
                    ToolTip = 'Specifies the value of the Part Description field.', Comment = '%';
                }
                field("Quantity Demanded"; Rec."Quantity Demanded")
                {
                    ToolTip = 'Specifies the value of the Quantity Demanded field.', Comment = '%';
                }
                field("Quantity On Hand"; Rec."Quantity On Hand")
                {
                    ToolTip = 'Specifies the value of the Quantity On Hand field.', Comment = '%';
                }
                field("Quantity On Purchase Order"; Rec."Quantity On Purchase Order")
                {
                    ToolTip = 'Specifies the value of the Quantity On Purchase Order field.', Comment = '%';
                }
                field("Quantity On Sales Order"; Rec."Quantity On Sales Order")
                {
                    ToolTip = 'Specifies the value of the Quantity On Sales Order field.', Comment = '%';
                }
                field("Quantity Supplied"; Rec."Quantity Supplied")
                {
                    ToolTip = 'Specifies the value of the Quantity Supplied field.', Comment = '%';
                }
            }
        }
    }
}
