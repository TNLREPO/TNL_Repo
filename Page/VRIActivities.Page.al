page 50066 "VRI Activities"
{
    PageType = CardPart;
    SourceTable = "VRI Table";

    layout
    {
        area(content)
        {
            cuegroup("Vehicle Receipt Inspection")
            {
                field("Total Vehicle Arrived"; Rec."Total VRI")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Confirmed PhysicallY"; Rec."Confirmed PhysicallyCOUNT")
                {
                    Caption = 'Confirmed Physically';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Awaiting VRI"; Rec."VRI Form Arrived count")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Problem Vehicle"; Rec."Problem Vehicle COUNT")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Logistics Action To VRI"; Rec."Pending VRI Approval COUNT")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("VRI Action To Workshop"; Rec."PENDING LOG  Approval COUNT")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Send to Workshop"; Rec."Send to Workshop")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Generate Workshop Estimate"; Rec."Open COF  Approval")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Estimate Verification"; Rec."Open COF  Aprroval2")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
            cuegroup(Control1)
            {
                field("Estimate Approval"; Rec."Estimate Approval")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Under Repairs"; Rec."Under Repairs")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Completed Jobs"; Rec."Completion of Service Delivrd")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Available for Transfer"; Rec."Available for Transfer")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("PV Available for Transfer"; Rec."PV Sales & Marketing")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Sales and Marketing"; Rec."Pass to Sales/MarketingCOUNT")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field(ISPV; Rec."In-Stock Count")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("Sold Vehicles"; Rec."Vehicles Sold")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
            cuegroup(Control2)
            {
            }
            cuegroup("VRI Stages")
            {
                Caption = 'VRI Status';
                field("NWAwaiting VRI 3days"; Rec."NWAwaiting VRI 3days")
                {
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
            cuegroup(Control3)
            {
                field("NWVRI AWAITING GR"; Rec."NWVRI AWAITING GR")
                {
                    Caption = 'VRI AWAITING GR';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAWAITING BnP"; Rec."NWAWAITING BnP")
                {
                    Caption = 'AWAITING BnP';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAWAITING ACCESSORIES"; Rec."NWAWAITING ACCESSORIES")
                {
                    Caption = 'AWAITING ACCESSORIES';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWNO PROBLEM"; Rec."NWNO PROBLEM")
                {
                    Caption = 'NO PROBLEM';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
            }
            cuegroup(Control4)
            {
                field("NWAwaiting BnP / Awaiting GR"; Rec."NWAwaiting BnP / Awaiting GR")
                {
                    Caption = 'Awaiting BnP / Awaiting GR';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting DAD"; Rec."NWAwaiting DAD")
                {
                    Caption = 'Awaiting DAD';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting Estimate"; Rec."NWAwaiting Estimate")
                {
                    Caption = 'Awaiting Estimate';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWO/Logistics awaiting Appr"; Rec."NWO/Logistics awaiting Appr")
                {
                    Caption = 'O/Logistics awaiting Appr';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting Part Order"; Rec."NWAwaiting Part Order")
                {
                    Caption = 'Awaiting Part Order';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting Part (Pre-pulls)"; Rec."NWAwaiting Part (Pre-pulls)")
                {
                    Caption = 'Awaiting Part (Pre-pulls)';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWAwaiting Repairs"; Rec."NWAwaiting Repairs")
                {
                    Caption = 'Awaiting Repairs';
                    DrillDownPageID = "Vehicle Receipt Inspection";
                }
                field("NWSellable Location"; Rec."NWSellable Location")
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

