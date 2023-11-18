page 50411 "Vehicle Receipt Approval"
{
    PageType = Card;
    SourceTable = Table50058;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("VRI Code"; "VRI Code")
                {
                }
                field("VRI Inspector Code"; "VRI Inspector Code")
                {
                }
                field("VRI Inspector Name"; "VRI Inspector Name")
                {
                }
                field("VRI Inspector Address"; "VRI Inspector Address")
                {
                }
                field("VRI Inspector Phone No."; "VRI Inspector Phone No.")
                {
                }
                field("VRI Supervisor No"; "VRI Supervisor No")
                {
                }
                field("VRI Supervisor Name"; "VRI Supervisor Name")
                {
                }
            }
            group("Vehicle Details")
            {
                group("Step 1")
                {
                    Caption = 'Step 1';
                    field("Item No."; "Item No.")
                    {
                    }
                    field("Item Serial No."; "Item Serial No.")
                    {
                    }
                    field("Model No."; "Model No.")
                    {
                    }
                    field("Model Name"; "Model Name")
                    {
                    }
                    field("Engine No."; "Engine No.")
                    {
                    }
                    field("Key No."; "Key No.")
                    {
                    }
                    field("Exterior Colour"; "Exterior Colour")
                    {
                    }
                    field("Exterior Colour Name"; "Exterior Colour Name")
                    {
                    }
                }
                group("Step 2")
                {
                    Caption = 'Step 2';
                    field(Arrived; Arrived)
                    {
                    }
                    field("VRI Date"; "VRI Date")
                    {
                    }
                    field("VRI Location"; "VRI Location")
                    {
                    }
                    field("Date Of Arrival"; "Date Of Arrival")
                    {
                    }
                    field("Time of Arrival"; "Time of Arrival")
                    {
                    }
                    field(Odometer; Odometer)
                    {
                    }
                    field("Missing Accessories"; "Missing Accessories")
                    {
                    }
                    field("BnP Problems"; "BnP Problems")
                    {
                    }
                    field("GR Problems"; "GR Problems")
                    {
                    }
                    field("Problem Vehicle"; "Problem Vehicle")
                    {
                    }
                    field("Pass to Sales/Marketing"; "Pass to Sales/Marketing")
                    {
                    }
                    field("Send For Approval"; "Send For Approval")
                    {
                    }
                }
            }
            group("Vehicle Receipt Inspection")
            {
                group("Step 1")
                {
                    Caption = 'Step 1';
                    field("Problem Statement"; "Problem Statement")
                    {
                    }
                    field("O/Log Comment"; "O/Log Comment")
                    {
                        Caption = 'O/L Comment';
                    }
                    field("Op/Log Approval Comment2"; "Op/Log Approval Comment2")
                    {
                        Caption = 'O/L Approval Comment';
                    }
                    field("VRI Next Action"; "VRI Next Action")
                    {
                    }
                }
                group("Step 2")
                {
                    Caption = 'Step 2';
                    field("Send VRI Request"; "Send VRI Request")
                    {
                    }
                    field("VRI Approval Name"; "VRI Approval Name")
                    {
                        Caption = 'VRI Request Sent By';
                    }
                    field("VRI Request Date&Time"; "VRI Request Date&Time")
                    {
                        Caption = 'VRI Request Date/Time';
                    }
                }
                group("Step 3")
                {
                    Caption = 'Step 3';
                    field("Comment to Workshop"; "Comment to Workshop")
                    {
                        Caption = 'Comment to Workshop';
                    }
                    field("Send to Workshop Aprroval"; "Send to Workshop Aprroval")
                    {
                        Caption = 'Send to Workshop Approval';
                    }
                    field("Send to Workshop By"; "Send to Workshop By")
                    {
                    }
                    field("Send to Workshp Date&time"; "Send to Workshp Date&time")
                    {
                        Caption = 'Send to Workshop Date/Time';
                    }
                }
                group("Step 4")
                {
                    Caption = 'Step 4';
                    field("Job Estimate Value"; "Job Estimate Value")
                    {
                    }
                    field("Claim Nos"; "Claim Nos")
                    {
                    }
                    field("VRI Approved Ok"; "VRI Approved Ok")
                    {
                    }
                    field("VRI Approved Ok By"; "VRI Approved Ok By")
                    {
                        Caption = 'VRI Approved OK By';
                    }
                    field("VRI Approved OK Date&Time"; "VRI Approved OK Date&Time")
                    {
                        Caption = 'VRI Approved OK Date/Time';
                    }
                    field("Send for Est. Verification"; "Send for Est. Verification")
                    {
                    }
                }
                group("Step 5")
                {
                    Caption = 'Step 5';
                    field(Fixed;Fixed)
                    {
                    }
                    field("Not Fixed"; "Not Fixed")
                    {
                    }
                    field("Approved for Sales&Mkt"; "Approved for Sales&Mkt")
                    {
                        Caption = 'Approved for Sales and Marketing';
                    }
                    field("Approve for Sales&mkt By"; "Approve for Sales&mkt By")
                    {
                        Caption = 'Approved By';
                    }
                    field("Approved Date&Time"; "Approved Date&Time")
                    {
                        Caption = 'Approval Date/Time';
                    }
                }
            }
            group("Operation and Logistics")
            {
                group("Step 1")
                {
                    Caption = 'Step 1';
                    field("Problem Statement from VRI"; "Problem Statement from VRI")
                    {
                    }
                    field("O/Log Comment2"; "O/Log Comment2")
                    {
                        Caption = 'O/L Comment';
                    }
                    field("Op./Log Approval Comment"; "Op./Log Approval Comment")
                    {
                        Caption = 'O/L Approval Comment';
                    }
                    field("Logistic Action"; "Logistic Action")
                    {
                        Caption = 'Logistics Action';
                    }
                    field("Send To VRI"; "Send To VRI")
                    {
                    }
                    field("Op./Log.  Approval"; "Op./Log.  Approval")
                    {
                        Caption = 'O/L Approval';
                    }
                    field("Op./Log Approval Name"; "Op./Log Approval Name")
                    {
                        Caption = 'O/L Approval Name';
                    }
                    field("Log. Approval Date&Time"; "Log. Approval Date&Time")
                    {
                        Caption = 'O/L Approval Date/Time';
                    }
                }
                group("Step 2")
                {
                    Caption = 'Step 2';
                    field("Claim No."; "Claim No.")
                    {
                    }
                    field("Job Estimate ValueII"; "Job Estimate ValueII")
                    {
                        Caption = 'Job Estimate Value';
                    }
                    field("Estimate Approved"; "Estimate Approved")
                    {
                    }
                    field("Estimate Approve By"; "Estimate Approve By")
                    {
                    }
                    field("Estimate Approve Date&Time"; "Estimate Approve Date&Time")
                    {
                        Caption = 'Estimate Approved Date/Time';
                    }
                    field("Responsible Customer"; "Responsible Customer")
                    {
                    }
                    field("Responsible Customer Name"; "Responsible Customer Name")
                    {
                    }
                }
            }
            group(Workshop)
            {
                field("Comment to WorkshopII"; "Comment to WorkshopII")
                {
                    Caption = 'Comment to Workshop';
                }
                field("Open COF"; "Open COF")
                {
                }
                field("COF No."; "COF No")
                {
                    Caption = 'COF No.';
                }
                field("COF Created By"; "COF Created By")
                {
                }
                field("COF Creation Date"; "COF Creation Date")
                {
                }
                field("Responsible Customer1"; "Responsible Customer")
                {
                    Caption = 'Responsible Customer';
                }
                field("Responsible Customer Name1"; "Responsible Customer Name")
                {
                    Caption = 'Responsible Customer Name';
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Customer Order")
            {
                Caption = 'Customer Order';
                Image = ServiceItemWorksheet;
                Promoted = true;
                PromotedIsBig = true;
                RunObject = Page 50393;
                RunPageLink = Customer Order Form No.=FIELD(COF No);
            }
        }
    }
}

