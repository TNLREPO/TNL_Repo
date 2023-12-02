page 50580 "Service Appointment Sch. List"
{
    CardPageID = "B&P Marketing Role";
    Editable = false;
    PageType = List;
    SourceTable = "Service Appointment Scheduled";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Service Item"; Rec."Service Item")
                {
                }
                field("Service Code"; Rec."Service Code")
                {
                }
                field("Serving Store"; Rec."Serving Store")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Next Call Date."; Rec."Next Call Date.")
                {
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                }
                field("Expected Reception Date"; Rec."Expected Reception Date")
                {
                }
                field("Service Due Projected Date"; Rec."Service Due Projected Date")
                {
                }
                field("Customer's Requests"; Rec."Customer's Requests")
                {
                }
                field("Call Type"; Rec."Call Type")
                {
                }
                field("Walk-In"; Rec."Walk-In")
                {
                }
                field("General Repair"; Rec."General Repair")
                {
                }
                field("Service Date"; Rec."Service Date")
                {
                }
                field("Customer No."; Rec."Customer No.")
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field("Phone No 1."; Rec."Phone No 1.")
                {
                }
                field("Phone No. 2."; Rec."Phone No. 2.")
                {
                }
                field("Phone No. 3 (GSM)."; Rec."Phone No. 3 (GSM).")
                {
                }
            }
        }
    }

    actions
    {
        action("Print Appointment Customer List")
        {
            Image = PrintDocument;
            Promoted = true;
            PromotedCategory = "Report";
            PromotedIsBig = true;
            RunObject = Report 50184;
                            RunPageMode = View;
        }
    }

    trigger OnOpenPage()
    begin

         SETRANGE("Next Call Date.",0D,TODAY);
    end;
}

