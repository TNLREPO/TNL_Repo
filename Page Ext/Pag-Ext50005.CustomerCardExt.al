pageextension 50005 "Customer Card Ext" extends "Customer Card"
{
    layout
    {
        addafter(Statistics)
        {
            group(OtherInfo)
            {
                Caption = 'Other Information';
                field("Customer Line Discount"; Rec."Customer Line Discount")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                }
                field("Customer Type"; Rec."Customer Type")
                {
                    ApplicationArea = Basic, Suite;
                    ShowMandatory = true;
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = Basic, Suite;
                    Editable = false;
                }
                field("Remove Account Link"; Rec."Remove Account Link")
                {
                    ApplicationArea = All;
                }
                field("Remove Credit Limit"; Rec."Remove Credit Limit")
                {
                    ApplicationArea = All;
                }
                field("Dealer Emails"; Rec."Dealer Emails")
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
            }

        }

        addafter("Balance Due (LCY)")
        {
            field("CustSalesLCY"; Rec."Sales (LCY)")
            {
                ApplicationArea = Basic, Suite;
                AutoFormatType = 1;
                Caption = 'Sales (LCY)';
                ToolTip = 'Specifies how much sales you have made from the customer from inception.';
            }

        }
    }
}
