page 50472 "Logistics/VRI Card"
{
    PageType = Card;
    SourceTable = Table50172;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Order No."; "Order No.")
                {
                }
                field(Date; Date)
                {
                }
                field("Chassis No."; "Chassis No.")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field(Description; Description)
                {
                }
                field(Model; Model)
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Colour Name"; "Colour Name")
                {
                }
                field("KM Reading"; "KM Reading")
                {
                }
                field("Fuel Level"; "Fuel Level")
                {
                }
                field("No. of Keys"; "No. of Keys")
                {
                }
                field("Job Description"; "Job Description")
                {
                }
                field("VRI Code"; "VRI Code")
                {
                }
                field(Location; Location)
                {
                }
                field("Arrival Date"; "Arrival Date")
                {
                }
                field("Date of Problem Report"; "Date of Problem Report")
                {
                }
                field("Notify VRI"; "Notify VRI")
                {
                }
                field("Sent By"; "Sent By")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Action Taken")
            {
                Caption = 'Action Taken';
                Image = Process;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin

                    IF "VRI Code" = '' THEN
                        IF NOT CONFIRM('The Vehicle is an old stock, do you want to create a VRI Code?', FALSE) THEN
                            EXIT
                        ELSE BEGIN
                            VRIRec.SETCURRENTKEY("VRI Code");
                            IF VRIRec.FINDLAST THEN
                                NewVRICode := INCSTR(VRIRec."VRI Code");
                            VRIRec2.INIT;
                            VRIRec2."VRI Code" := NewVRICode;
                            VRIRec2.VALIDATE("Item Serial No.", "Chassis No.");
                            VRIRec2.Arrived := TRUE;
                            VRIRec2."Arrive Approve by" := 'SYSTEM';
                            VRIRec2."Date Of Arrival" := TODAY;
                            VRIRec2.INSERT;

                            "VRI Code" := NewVRICode;
                            "Arrival Date" := VRIRec2."Date Of Arrival";
                            MODIFY;
                        END;

                    VRIRec3.GET("VRI Code");
                    IF VRIRec3."Pass to Sales/Marketing" THEN BEGIN
                        VRIRec3."Pass to Sales/Marketing" := FALSE;
                        VRIRec3."In-Stock" := TRUE;
                        VRIRec3.MODIFY;

                        IF InStock2.FINDLAST THEN
                            EntryNo := InStock2."Entry No." + 1 ELSE
                            EntryNo := 1;

                        InStock.INIT;
                        InStock."Entry No." := EntryNo;
                        InStock."VRI Code" := "VRI Code";
                        InStock.Date := TODAY;
                        InStock.INSERT;
                        MESSAGE('In-stock Maintenance ''%1'' has been created!', "VRI Code");
                    END;
                end;
            }
        }
    }

    var
        ItemLegEntry: Record "32";
        VRIRec: Record 50058;
        VRIRec2: Record 50058;
        VRIRec3: Record 50058;
        NewVRICode: Code[10];
        InStock: Record "50163";
        InStock2: Record "50163";
        EntryNo: Integer;
}

