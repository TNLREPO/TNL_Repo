page 51096 "Service Item List New"
{
    ApplicationArea = All;
    Caption = 'Service Item List New';
    PageType = List;
    SourceTable = "Service Item";
    CardPageId = "Service Item Card New";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the service item number.';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Customer No."; Rec."Customer No.")
                {
                    ToolTip = 'Specifies the value of the Customer No. field.';
                }
                field(Namme; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Make; Rec.Make)
                {
                    ToolTip = 'Specifies the value of the Make field.';
                }
                field("Model No."; Rec."Model No.")
                {
                    ToolTip = 'Specifies the value of the Model No. field.';
                }
                field("Chasis No."; Rec."Chasis No.")
                {
                    ToolTip = 'Specifies the value of the Chasis No. field.';
                }
            }
        }
    }
}
