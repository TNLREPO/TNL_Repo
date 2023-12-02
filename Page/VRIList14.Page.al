page 50445 "VRI List14"
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
                field(Arrived; Rec.Arrived)
                {
                    Editable = false;
                }
                field("Problem Vehicle"; Rec."Problem Vehicle")
                {
                    Editable = false;
                }
                field("Pass to Sales/Marketing"; Rec."Pass to Sales/Marketing")
                {
                    Editable = false;
                }
                field(Transferred; Rec.Transferred)
                {
                    Editable = false;
                }
                field(Sold; Rec.Sold)
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
                separator(Control1)
                {
                }
                action("Open VRI Approval Form")
                {
                    Caption = 'Open VRI Approval Form';
                    RunObject = Page 50448;
                    RunPageOnRec = true;
                }
                separator(Control2)
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
            }
        }
    }

    var
        VRIRec: Record 50058;
}

