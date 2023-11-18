page 50444 "VRI List13"
{
    PageType = Card;
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
                    Editable = false;
                }
                field("VRI Date"; "VRI Date")
                {
                    Editable = false;
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
                field(Fixed;Fixed)
                {
                }
                field("Approved for Sales&Mkt"; "Approved for Sales&Mkt")
                {
                }
                field("Pass to Sales/Marketing"; "Pass to Sales/Marketing")
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
                    RunObject = Page 50447;
                    RunPageOnRec = true;
                }
                separator()
                {
                }
                action("Move To Transfer")
                {
                    Caption = 'Move To Transfer';
                    Visible = false;

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
                action("Transfer To Sales/Marketing")
                {
                    Caption = 'Transfer To Sales/Marketing';
                    RunObject = Report 50409;
                }
            }
        }
    }

    var
        VRIRec: Record 50058;
}

