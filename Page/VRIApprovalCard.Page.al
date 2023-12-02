page 70095 "VRI Approval Card"
{
    PageType = Card;
    SourceTable = "VRI Table";

    layout
    {
        area(content)
        {
            group(GENERAL)
            {
                field("VRI Code"; Rec."VRI Code")
                {
                }
                field("VRI Inspector Code"; Rec."VRI Inspector Code")
                {
                }
                field("VRI Inspector Name"; Rec."VRI Inspector Name")
                {
                }
                field("VRI Inspector Address"; Rec."VRI Inspector Address")
                {
                }
                field("VRI Inspector Phone No."; Rec."VRI Inspector Phone No.")
                {
                }
                field("VRI Supervisor No"; Rec."VRI Supervisor No")
                {
                }
                field("VRI Supervisor Name"; Rec."VRI Supervisor Name")
                {
                }
                field("Item No."; Rec."Item No.")
                {
                }
                field("Item Serial No."; Rec."Item Serial No.")
                {
                }
                field("Model No."; Rec."Model No.")
                {
                }
                field("Model Name"; Rec."Model Name")
                {
                }
                field("Engine No."; Rec."Engine No.")
                {
                }
                field("Key No."; Rec."Key No.")
                {
                }
                field("Exterior Colour"; Rec."Exterior Colour")
                {
                }
                field("Exterior Colour Name"; Rec."Exterior Colour Name")
                {
                }
                field(Arrived; Rec.Arrived)
                {
                }
                field("VRI Date"; Rec."VRI Date")
                {
                }
                field("VRI Location"; Rec."VRI Location")
                {
                }
                field("Date Of Arrival"; Rec."Date Of Arrival")
                {
                }
                field("Time of Arrival"; Rec."Time of Arrival")
                {
                }
                field(Odometer; Rec.Odometer)
                {
                }
                field("Problem Vehicle"; Rec."Problem Vehicle")
                {
                }
                field("Pass to Sales/Marketing"; Rec."Pass to Sales/Marketing")
                {
                }
                field("Send For Approval"; Rec."Send For Approval")
                {
                }
                field("Part Order"; Rec."Part Order")
                {
                }
                field("Part Arrival"; Rec."Part Arrival")
                {
                }
                field("For Production"; Rec."For Production")
                {
                }
            }
            group("VRI UNIT")
            {
                field("Problem Statement"; Rec."Problem Statement")
                {
                }
                field("O/Log Comment"; Rec."O/Log Comment")
                {
                    Caption = 'O/L Comment';
                }
                field("Op/Log Approval Comment2"; Rec."Op/Log Approval Comment2")
                {
                    Caption = 'O/L Approval Comment';
                }
                field("VRI Next Action"; Rec."VRI Next Action")
                {
                }
                field("Send VRI Request"; Rec."Send VRI Request")
                {
                }
                field("VRI Approval Name"; Rec."VRI Approval Name")
                {
                    Caption = 'VRI Request Sent By:';
                }
                field("VRI Request Date&Time"; Rec."VRI Request Date&Time")
                {
                    Caption = 'VRI Request Date and Time:';
                }
                field("Comment to Workshop"; Rec."Comment to Workshop")
                {
                }
                field("Send to Workshop Aprroval"; Rec."Send to Workshop Aprroval")
                {
                }
                field("Send to Workshop By"; Rec."Send to Workshop By")
                {
                }
                field("Send to Workshp Date&time"; Rec."Send to Workshp Date&time")
                {
                }
                field(Fixed; Rec.Fixed)
                {
                }
                field("Approved for Sales&Mkt"; Rec."Approved for Sales&Mkt")
                {
                }
                field("Approve for Sales&mkt By"; Rec."Approve for Sales&mkt By")
                {
                }
                field("Approved Date&Time"; Rec."Approved Date&Time")
                {
                }
                field("Job Estimate ValueII"; Rec."Job Estimate ValueII")
                {
                }
                field("Claim Nos"; Rec."Claim Nos")
                {
                }
                field("VRI Approved Ok"; Rec."VRI Approved Ok")
                {
                }
                field("VRI Approved Ok By"; Rec."VRI Approved Ok By")
                {
                }
                field("VRI Approved OK Date&Time"; Rec."VRI Approved OK Date&Time")
                {
                }
                field(Delivered; Rec.Delivered)
                {
                }
            }
            group("O/L UNIT")
            {
                field("Claim No."; Rec."Claim No.")
                {
                }
                field("Responsible Customer"; Rec."Responsible Customer")
                {
                }
                field("Responsible Customer Name"; Rec."Responsible Customer Name")
                {
                }
                field("Problem Statement from VRI"; Rec."Problem Statement from VRI")
                {
                }
                field("O/Log Comment2"; Rec."O/Log Comment2")
                {
                    Caption = 'O/L Comment';
                }
                field("Logistic Action"; Rec."Logistic Action")
                {
                }
                field("Op./Log Approval Comment"; Rec."Op./Log Approval Comment")
                {
                }
                field("Op./Log.  Approval"; Rec."Op./Log.  Approval")
                {
                }
                field("Op./Log Approval Name"; Rec."Op./Log Approval Name")
                {
                }
                field("Op.t/Log Approval Date"; Rec."Op.t/Log Approval Date")
                {
                }
                field("Job Estimate Value"; Rec."Job Estimate Value")
                {
                }
                field("Estimate Approved"; Rec."Estimate Approved")
                {
                }
                field("Estimate Approve By"; Rec."Estimate Approve By")
                {
                }
                field("Estimate Approve Date&Time"; Rec."Estimate Approve Date&Time")
                {
                }
            }
            group(WORKSHOP)
            {
                field("Comment to WorkshopII"; Rec."Comment to WorkshopII")
                {
                }
                field("Open COF"; Rec."Open COF")
                {
                }
                field("COF Created By"; Rec."COF Created By")
                {
                }
                field("COF Creation Date"; Rec."COF Creation Date")
                {
                }
                field("COF No"; Rec."COF No")
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

