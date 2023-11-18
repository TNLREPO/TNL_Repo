page 50410 "Vehicle Receipt Inspection"
{
    CardPageID = "Vehicle Receipt Approval";
    PageType = List;
    SourceTable = Table50058;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("VRI Code"; "VRI Code")
                {
                    Editable = false;
                }
                field("VRI Location"; "VRI Location")
                {
                }
                field("VRI Date"; "VRI Date")
                {
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                }
                field("Model No."; "Model No.")
                {
                    Editable = false;
                }
                field("Model Name"; "Model Name")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field("Item Serial No."; "Item Serial No.")
                {
                    Editable = false;
                }
                field("Engine No."; "Engine No.")
                {
                    Editable = false;
                }
                field("Key No."; "Key No.")
                {
                    Editable = false;
                }
                field("Confirmed Physically"; "Confirmed Physically")
                {
                }
                field("Physically By"; "Physically By")
                {
                    Editable = false;
                }
                field("Not Fixed"; "Not Fixed")
                {
                }
                field("Approved for Sales&Mkt"; "Approved for Sales&Mkt")
                {
                }
                field("Approve for Sales&mkt By"; "Approve for Sales&mkt By")
                {
                }
                field("Pass to Sales/Marketing"; "Pass to Sales/Marketing")
                {
                }
                field(Arrived; Arrived)
                {
                }
                field("Problem Vehicle"; "Problem Vehicle")
                {
                }
                field(Sold; Sold)
                {
                }
                field("COF No"; "COF No")
                {
                }
                field("Send For Approval"; "Send For Approval")
                {
                }
                field("Send VRI Request"; "Send VRI Request")
                {
                }
                field("Op./Log.  Approval"; "Op./Log.  Approval")
                {
                }
                field("Send to Workshop"; "Send to Workshop")
                {
                }
                field("Estimate Approved"; "Estimate Approved")
                {
                }
                field("Open COF"; "Open COF")
                {
                }
                field("Send for Est. Verification"; "Send for Est. Verification")
                {
                }
                field("VRI Approved Ok"; "VRI Approved Ok")
                {
                }
                field(Delivered; Delivered)
                {
                }
                field(Transferred; Transferred)
                {
                }
                field("In-Stock"; "In-Stock")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Open)
            {
                Caption = 'Open';
                action("Open VRI Page")
                {
                    Caption = 'Open VRI Page';
                    Image = Card;
                    RunObject = Page 50261;
                    RunPageLink = VRI Code=FIELD(VRI Code);
                }
                separator()
                {
                }
                action("Move to Transfer Folder")
                {
                    Caption = 'Move to Transfer Folder';
                    Image = TransferOrder;

                    trigger OnAction()
                    begin
                        VRIRec.SETCURRENTKEY("Confirmed Physically");
                        VRIRec.SETRANGE("Confirmed Physically",TRUE);
                        IF VRIRec.FINDFIRST THEN BEGIN
                          REPEAT
                            VRIRec."Pass to Sales/Marketing" := TRUE;
                            VRIRec.MODIFY;
                          UNTIL VRIRec.NEXT = 0;
                        END;
                        MESSAGE('Physically checked OK vehicles are now available for transfer!');
                    end;
                }
                separator()
                {
                }
                action("Transfer to Sale/Marketing")
                {
                    Caption = 'Transfer to Sale/Marketing';
                    Image = "Action";
                    RunObject = Report 50398;
                }
                action("Update Sales")
                {
                    Caption = 'Update Sales';
                    Image = "Report";
                    RunObject = Report 50407;
                }
            }
        }
    }

    var
        VRIRec: Record "50058";
}

