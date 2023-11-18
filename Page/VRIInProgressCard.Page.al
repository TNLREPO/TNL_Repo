page 50397 "VRI In Progress Card"
{
    DeleteAllowed = false;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = Table50058;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("VRI Supervisor No"; "VRI Supervisor No")
                {
                }
                field("VRI Supervisor Name"; "VRI Supervisor Name")
                {
                }
                field(Location; Location)
                {
                }
                field("Total VRI"; "Total VRI")
                {
                    Caption = 'Total Vehicle Arrived';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("VRI Form Arrived count"; "VRI Form Arrived count")
                {
                    Caption = 'Awaiting VRI';
                    DrillDown = true;
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    Lookup = true;
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Problem Vehicle COUNT"; "Problem Vehicle COUNT")
                {
                    Caption = 'Problem Vehicle';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Send For Approval 2"; "Send For Approval 2")
                {
                    Caption = 'VRI Request';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Pending VRI Approval COUNT"; "Pending VRI Approval COUNT")
                {
                    Caption = 'Logistics Action To VRI';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("PENDING LOG  Approval COUNT"; "PENDING LOG  Approval COUNT")
                {
                    Caption = 'VRI Action To Workshop';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Send to Workshop"; "Send to Workshop")
                {
                    Caption = 'Send to Workshop';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Open COF  Approval"; "Open COF  Approval")
                {
                    Caption = 'Generate Workshop Estimate';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Open COF  Aprroval2"; "Open COF  Aprroval2")
                {
                    Caption = 'Verify Estimate';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Estimate Approval"; "Estimate Approval")
                {
                    Caption = 'Estimate Approval';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Under Repairs"; "Under Repairs")
                {
                    Caption = 'Under Repairs';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Completion of Service Delivrd"; "Completion of Service Delivrd")
                {
                    Caption = 'Completed Jobs';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Available for Transfer"; "Available for Transfer")
                {
                    Caption = 'Available for Transfer';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("PV Sales & Marketing"; "PV Sales & Marketing")
                {
                    Caption = 'PV Available for Transfer';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Pass to Sales/MarketingCOUNT"; "Pass to Sales/MarketingCOUNT")
                {
                    Caption = 'Sales and Marketing';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("In-Stock Count"; "In-Stock Count")
                {
                    Caption = 'ISPV';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
                field("Vehicles Sold"; "Vehicles Sold")
                {
                    Caption = 'Sold Vehicles';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                    LookupPageID = "Vehicle Receipt Inspection";
                }
            }
        }
    }

    actions
    {
    }
}

