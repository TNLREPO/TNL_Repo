pageextension 50003 "Transfer Order Ext" extends "Transfer Order"
{

    layout
    {

        addafter("Foreign Trade")
        {
            group(OtherInformation)
            {

                Caption = 'Other Information';

                field("COF No"; Rec."COF No")
                {
                    ApplicationArea = All;
                }
                field("Reception Date"; Rec."Reception Date")
                {
                    ApplicationArea = All;
                }
                field("Vehicle No."; Rec."Vehicle No.")
                {
                    ApplicationArea = All;
                }
                field("Model Name"; Rec."Model Name")
                {
                    ApplicationArea = All;
                }
                field("Service Advisor Name"; Rec."Service Advisor Name")
                {
                    ApplicationArea = All;
                }
                field(Reason; Rec.Reason)
                {
                    ApplicationArea = All;
                }
                field("Dealer No."; Rec."Dealer No.")
                {
                    ApplicationArea = All;
                }
                field("Dealer Name"; Rec."Dealer Name")
                {
                    ApplicationArea = All;
                }

            }

            group(Authorization)
            {
                Caption = 'Authorization';

                group(Control01)
                {
                    Caption = 'Confirmation';
                    field("Branch Confirmation"; Rec."Branch Confirmation")
                    {
                        ApplicationArea = All;
                    }
                    field("Branch Manager's Name"; Rec."Branch Manager's Name")
                    {
                        ApplicationArea = All;
                    }
                    field("Shipment Approval"; Rec."Shipment Approval")
                    {
                        ApplicationArea = All;
                    }
                    field("Approved By"; Rec."Approved By")
                    {
                        ApplicationArea = All;
                    }
                }

                field("Total Quantity To Ship"; Rec."Total Quantity To Ship")
                {
                    ApplicationArea = All;
                }
                field("Total Quantity To Receive"; Rec."Total Quantity To Receive")
                {
                    ApplicationArea = All;
                }

            }

        }
    }
}
