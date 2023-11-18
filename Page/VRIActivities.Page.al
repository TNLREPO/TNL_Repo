page 50066 "VRI Activities"
{
    PageType = CardPart;
    SourceTable = Table50058;

    layout
    {
        area(content)
        {
            cuegroup("Vehicle Receipt Inspection")
            {
                field("Total Vehicle Arrived"; "Total VRI")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Confirmed PhysicallY"; "Confirmed PhysicallyCOUNT")
                {
                    Caption = 'Confirmed Physically';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Awaiting VRI"; "VRI Form Arrived count")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Problem Vehicle"; "Problem Vehicle COUNT")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Logistics Action To VRI"; "Pending VRI Approval COUNT")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("VRI Action To Workshop"; "PENDING LOG  Approval COUNT")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Send to Workshop"; "Send to Workshop")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Generate Workshop Estimate"; "Open COF  Approval")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Estimate Verification"; "Open COF  Aprroval2")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
            cuegroup()
            {
                field("Estimate Approval"; "Estimate Approval")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Under Repairs"; "Under Repairs")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Completed Jobs"; "Completion of Service Delivrd")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Available for Transfer"; "Available for Transfer")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("PV Available for Transfer"; "PV Sales & Marketing")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Sales and Marketing"; "Pass to Sales/MarketingCOUNT")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field(ISPV; "In-Stock Count")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Sold Vehicles"; "Vehicles Sold")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
            cuegroup()
            {
            }
            cuegroup("VRI Stages")
            {
                Caption = 'VRI Status';
                field("NWAwaiting VRI 3days"; "NWAwaiting VRI 3days")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
            cuegroup()
            {
                field("NWVRI AWAITING GR"; "NWVRI AWAITING GR")
                {
                    Caption = 'VRI AWAITING GR';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAWAITING BnP"; "NWAWAITING BnP")
                {
                    Caption = 'AWAITING BnP';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAWAITING ACCESSORIES"; "NWAWAITING ACCESSORIES")
                {
                    Caption = 'AWAITING ACCESSORIES';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWNO PROBLEM"; "NWNO PROBLEM")
                {
                    Caption = 'NO PROBLEM';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
            cuegroup()
            {
                field("NWAwaiting BnP / Awaiting GR"; "NWAwaiting BnP / Awaiting GR")
                {
                    Caption = 'Awaiting BnP / Awaiting GR';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting DAD"; "NWAwaiting DAD")
                {
                    Caption = 'Awaiting DAD';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting Estimate"; "NWAwaiting Estimate")
                {
                    Caption = 'Awaiting Estimate';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWO/Logistics awaiting Appr"; "NWO/Logistics awaiting Appr")
                {
                    Caption = 'O/Logistics awaiting Appr';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting Part Order"; "NWAwaiting Part Order")
                {
                    Caption = 'Awaiting Part Order';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting Part (Pre-pulls)"; "NWAwaiting Part (Pre-pulls)")
                {
                    Caption = 'Awaiting Part (Pre-pulls)';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting Repairs"; "NWAwaiting Repairs")
                {
                    Caption = 'Awaiting Repairs';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWSellable Location"; "NWSellable Location")
                {
                    Caption = 'Sellable';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
        }
    }

    actions
    {
    }
}

