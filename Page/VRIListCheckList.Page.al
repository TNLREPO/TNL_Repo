page 50270 "VRI List Check List"
{
    CardPageID = "VRI Form Check List";
    PageType = List;
    SourceTable = Table50160;

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
                    Editable = false;
                }
                field("VRI Date"; "VRI Date")
                {
                    Editable = false;
                }
                field("VRI Inspector Code"; "VRI Inspector Code")
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
                field("Item No."; "Item No.")
                {
                    Editable = false;
                }
                field(Description; Description)
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
                field("Item Serial No."; "Item Serial No.")
                {
                    Caption = 'Chassis No.';
                    Editable = false;
                }
                field("Exterior Colour Name"; "Exterior Colour Name")
                {
                    Editable = false;
                }
                field("Exterior Colour"; "Exterior Colour")
                {
                    Editable = false;
                }
                field("Problem Vehicle"; "Problem Vehicle")
                {
                    Editable = false;
                }
                field("Pass to Sales/Marketing"; "Pass to Sales/Marketing")
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
                field("Physically Date Time"; "Physically Date Time")
                {
                    Editable = false;
                }
                field(Arrived; Arrived)
                {
                }
                field("Arrive Approve by"; "Arrive Approve by")
                {
                    Editable = false;
                }
                field("Date Of Arrival"; "Date Of Arrival")
                {
                    Editable = false;
                }
                field("Time of Arrival"; "Time of Arrival")
                {
                    Editable = false;
                }
                field(Fixed;Fixed)
                {
                    Editable = false;
                }
                field(Transferred; Transferred)
                {
                    Editable = false;
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
                action("Open VRI Form")
                {
                    Caption = 'Open VRI Form';
                    RunObject = Page 50261;
                    RunPageOnRec = true;
                }
                separator()
                {
                }
                action("Open VRI Approval Form")
                {
                    Caption = 'Open VRI Approval Form';
                    RunObject = Page 50429;
                    RunPageOnRec = true;
                }
                separator()
                {
                }
                action("Move To Transfer")
                {
                    Caption = 'Move To Transfer';

                    trigger OnAction()
                    begin
                        VRIRec.SETCURRENTKEY("Confirmed Physically");
                        VRIRec.SETRANGE("Confirmed Physically", TRUE);
                        IF VRIRec.FINDFIRST THEN BEGIN
                            REPEAT
                                VRIRec."Pass to Sales/Marketing" := TRUE;
                                VRIRec.MODIFY;
                            UNTIL VRIRec.NEXT = 0;
                        END;
                        MESSAGE('Physically checked OK vehicles are now available for transfer!');
                    end;
                }
                action("VRI Check List")
                {
                    Caption = 'VRI Check List';
                    RunObject = Report 50609;
                }
            }
        }
    }

    var
        VRIRec: Record 50058;
}

