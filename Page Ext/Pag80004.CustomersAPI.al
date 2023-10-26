page 80004 CustomersAPI
{
    ApplicationArea = All;
    Caption = 'CustomersAPI';
    PageType = List;
    SourceTable = Customer;
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
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s name.';
                }
            }
        }
    }
}
