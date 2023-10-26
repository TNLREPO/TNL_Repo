page 80002 SalesOrderAPI
{
    ApplicationArea = All;
    Caption = 'SalesOrderAPI';
    PageType = List;
    SourceTable = "Sales Header";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the number of the customer associated with the sales return.';
                }
                field("Online Order"; Rec."Online Order")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Online Order field.';
                }
            }
        }
    }
}
