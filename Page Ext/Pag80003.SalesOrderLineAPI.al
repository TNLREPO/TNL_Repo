page 80003 SalesOrderLineAPI
{
    ApplicationArea = All;
    Caption = 'SalesOrderLineAPI';
    PageType = List;
    SourceTable = "Sales Line";
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
                    ToolTip = 'Specifies the number of the record.';
                }
                field(Colour; Rec.Colour)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Colour field.';
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies how many units are being sold.';
                }
            }
        }
    }
}
