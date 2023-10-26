page 80000 ItemListAPI
{
    ApplicationArea = All;
    Caption = 'ItemListAPI';
    PageType = List;
    SourceTable = Item;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies a description of the item.';
                }
                field("Model No."; Rec."Model No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Model No. field.';
                }
                field("Model Name"; Rec."Model Name")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Model Name field.';
                }
                field("Net Change"; Rec."Net Change")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Net Change field.';
                }
                field("Unit Cost"; Rec."Unit Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the cost of one unit of the item or resource on the line.';
                }
                field("Last Direct Cost"; Rec."Last Direct Cost")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the most recent direct unit cost of the item.';
                }
                field("Substitutes Exist"; Rec."Substitutes Exist")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies that a substitute exists for this item.';
                }
            }
        }
    }
}
