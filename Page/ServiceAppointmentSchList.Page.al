page 50580 "Service Appointment Sch. List"
{
    CardPageID = "B&P Marketing Role";
    Editable = false;
    PageType = List;
    SourceTable = Table50114;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Service Item"; "Service Item")
                {
                }
                field("Service Code"; "Service Code")
                {
                }
                field("Serving Store"; "Serving Store")
                {
                }
                field(Description; Description)
                {
                }
                field("Next Call Date."; "Next Call Date.")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Expected Reception Date"; "Expected Reception Date")
                {
                }
                field("Service Due Projected Date"; "Service Due Projected Date")
                {
                }
                field("Customer's Requests"; "Customer's Requests")
                {
                }
                field("Call Type"; "Call Type")
                {
                }
                field("Walk-In"; "Walk-In")
                {
                }
                field("General Repair"; "General Repair")
                {
                }
                field("Service Date"; "Service Date")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Phone No 1."; "Phone No 1.")
                {
                }
                field("Phone No. 2."; "Phone No. 2.")
                {
                }
                field("Phone No. 3 (GSM)."; "Phone No. 3 (GSM).")
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

