page 80001 ItemLedgEntryAPI
{
    ApplicationArea = All;
    Caption = 'ItemLedgEntryAPI';
    PageType = List;
    SourceTable = "Item Ledger Entry";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the item in the entry.';
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the location that the entry is linked to.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of units of the item in the item entry.';
                }
            }
        }
    }
}
