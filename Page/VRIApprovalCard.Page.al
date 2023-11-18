page 70095 "VRI Approval Card"
{
    PageType = Card;
    SourceTable = Table50058;

    layout
    {
        area(content)
        {
            group(GENERAL)
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
                field("Problem Vehicle"; "Problem Vehicle")
                {
                }
                field("Pass to Sales/Marketing"; "Pass to Sales/Marketing")
                {
                }
                field("Send For Approval"; "Send For Approval")
                {
                }
                field("Part Order"; "Part Order")
                {
                }
                field("Part Arrival"; "Part Arrival")
                {
                }
                field("For Production"; "For Production")
                {
                }
            }
            group("VRI UNIT")
            {
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
                field("Send VRI Request"; "Send VRI Request")
                {
                }
                field("VRI Approval Name"; "VRI Approval Name")
                {
                    Caption = 'VRI Request Sent By:';
                }
                field("VRI Request Date&Time"; "VRI Request Date&Time")
                {
                    Caption = 'VRI Request Date and Time:';
                }
                field("Comment to Workshop"; "Comment to Workshop")
                {
                }
                field("Send to Workshop Aprroval"; "Send to Workshop Aprroval")
                {
                }
                field("Send to Workshop By"; "Send to Workshop By")
                {
                }
                field("Send to Workshp Date&time"; "Send to Workshp Date&time")
                {
                }
                field(Fixed;Fixed)
                {
                }
                field("Approved for Sales&Mkt"; "Approved for Sales&Mkt")
                {
                }
                field("Approve for Sales&mkt By"; "Approve for Sales&mkt By")
                {
                }
                field("Approved Date&Time"; "Approved Date&Time")
                {
                }
                field("Job Estimate ValueII"; "Job Estimate ValueII")
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
                }
                field("VRI Approved OK Date&Time"; "VRI Approved OK Date&Time")
                {
                }
                field(Delivered; Delivered)
                {
                }
            }
            group("O/L UNIT")
            {
                field("Claim No."; "Claim No.")
                {
                }
                field("Responsible Customer"; "Responsible Customer")
                {
                }
                field("Responsible Customer Name"; "Responsible Customer Name")
                {
                }
                field("Problem Statement from VRI"; "Problem Statement from VRI")
                {
                }
                field("O/Log Comment2"; "O/Log Comment2")
                {
                    Caption = 'O/L Comment';
                }
                field("Logistic Action"; "Logistic Action")
                {
                }
                field("Op./Log Approval Comment"; "Op./Log Approval Comment")
                {
                }
                field("Op./Log.  Approval"; "Op./Log.  Approval")
                {
                }
                field("Op./Log Approval Name"; "Op./Log Approval Name")
                {
                }
                field("Op.t/Log Approval Date"; "Op.t/Log Approval Date")
                {
                }
                field("Job Estimate Value"; "Job Estimate Value")
                {
                }
                field("Estimate Approved"; "Estimate Approved")
                {
                }
                field("Estimate Approve By"; "Estimate Approve By")
                {
                }
                field("Estimate Approve Date&Time"; "Estimate Approve Date&Time")
                {
                }
            }
            group(WORKSHOP)
            {
                field("Comment to WorkshopII"; "Comment to WorkshopII")
                {
                }
                field("Open COF"; "Open COF")
                {
                }
                field("COF Created By"; "COF Created By")
                {
                }
                field("COF Creation Date"; "COF Creation Date")
                {
                }
                field("COF No"; "COF No")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Open COF")
            {
                Caption = 'Open COF';
            }
        }
    }
}

