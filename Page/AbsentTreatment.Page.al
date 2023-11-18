page 50306 "Absent Treatment"
{
    DelayedInsert = true;
    InsertAllowed = false;
    PageType = Card;
    SourceTable = "Attendance Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Period Code"; Rec."Period Code")
                {
                }
                field("Attendance Date"; Rec."Attendance Date")
                {
                }
                field("Free Day"; Rec."Free Day")
                {
                }
                field(Remark; Rec.Remark)
                {
                }
                field("Free Day Type"; Rec."Free Day Type")
                {
                }
            }

        }
    }

    actions
    {
        area(processing)
        {
            action("Generate Absence ")
            {
                Caption = 'Generate Absence ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                begin
                    IF Rec."Free Day" THEN ERROR('No Absent Record on Free Days');
                    Emplorec.SETRANGE(Emplorec.Blocked, FALSE);
                    IF Emplorec.FindFirst() THEN
                        REPEAT
                            AttRec.INIT;
                            AttRec.Date := Rec."Attendance Date";
                            AttRec.VALIDATE(AttRec."Employee No.", Emplorec."No.");
                            AttRec."Attendance Period" := Rec."Period Code";
                            AttRec.Status := AttRec.Status::Absent;
                            AttRec.Penalised := TRUE;
                            AttRec."Penalised Period" := AttRec."Attendance Period";
                            IF NOT AttRec.INSERT THEN;
                        UNTIL Emplorec.NEXT = 0
                end;
            }
        }
    }

    var
        PayPeriod: Code[20];
        AttDate: Date;
        EmpNo: Code[20];
        Status: Option;
        time: Time;
        AttRec: Record 50148;
        Emplorec: Record 5200;
}

