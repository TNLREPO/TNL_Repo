pageextension 50020 "Service Mgt. Setup Ext" extends "Service Mgt. Setup"
{
    layout
    {
        addafter("Prepaid Posting Document Nos.")
        {
            group(Others)
            {
                field("Complaint No."; Rec."Complaint No.")
                {
                    ApplicationArea = All;
                }
                field("VRI Code"; Rec."VRI Code")
                {
                    ApplicationArea = All;
                }
                field("Logistic Nos."; Rec."Logistic Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}
