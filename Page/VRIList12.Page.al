page 50443 "VRI List12"
{
    PageType = Card;
    SourceTable = "VRI Table";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("VRI Code"; Rec."VRI Code")
                {
                    Editable = false;
                }
                field("VRI Location"; Rec."VRI Location")
                {
                    Editable = false;
                }
                field("VRI Date"; Rec."VRI Date")
                {
                    Editable = false;
                }
                field("Item No."; Rec."Item No.")
                {
                    Editable = false;
                }
                field("Model No."; Rec."Model No.")
                {
                    Editable = false;
                }
                field("Model Name"; Rec."Model Name")
                {
                    Editable = false;
                }
                field(Description; Rec.Description)
                {
                    Editable = false;
                }
                field("Item Serial No."; Rec."Item Serial No.")
                {
                    Editable = false;
                }
                field("Engine No."; Rec."Engine No.")
                {
                    Editable = false;
                }
                field("Key No."; Rec."Key No.")
                {
                    Editable = false;
                }
                field(Fixed; Rec.Fixed)
                {
                }
                field("Confirmed Physically"; Rec."Confirmed Physically")
                {
                }
                field("Approved for Sales&Mkt"; Rec."Approved for Sales&Mkt")
                {
                }
                field(Transferred; Rec.Transferred)
                {
                }
                field("Transferred Date/Time"; Rec."Transferred Date/Time")
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
                separator(Control1)
                {
                }
                action("Open VRI Approval Form")
                {
                    Caption = 'Open VRI Approval Form';
                    RunObject = Page 50446;
                    RunPageOnRec = true;
                }
                separator(Control2)
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
                action("Transfer To Sale/Marketing")
                {
                    Caption = 'Transfer To Sale/Marketing';
                    RunObject = Report 50398;
                }
            }
        }
    }

    var
        VRIRec: Record 50058;
}

