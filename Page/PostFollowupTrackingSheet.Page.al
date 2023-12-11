page 50249 "Post Followup Tracking Sheet"
{
    PageType = Card;
    SourceTable = "Service Index";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Index No."; Rec."Index No.")
                {
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    Caption = 'COF No.';
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field("Treatment Reception/Delivery"; Rec."Treatment Reception/Delivery")
                {
                }
                field("Work/Est. Explanation Recept"; Rec."Work/Est. Explanation Recept")
                {
                }
                field("Waitting Time at Reception"; Rec."Waitting Time at Reception")
                {
                }
                field("Standard Expectations"; Rec."Standard Expectations")
                {
                }
                field("Any Difficulty on appo."; Rec."Any Difficulty on appo.")
                {
                }
                field("How is Wait Time at Reception"; Rec."How is Wait Time at Reception")
                {
                }
                field("Work/Est. Explant Reception"; Rec."Work/Est. Explant Reception")
                {
                }
                field("Reason for Fail Finishing Time"; Rec."Reason for Fail Finishing Time")
                {
                }
                field("Treat Reception/Delivery"; Rec."Treat Reception/Delivery")
                {
                }
                field("Did Stdrd Expectations Satis"; Rec."Did Stdrd Expectations Satis")
                {
                }
                field("Work Completed the First Time"; Rec."Work Completed the First Time")
                {
                }
                field("Will you Recomend Us to Other"; Rec."Will you Recomend Us to Other")
                {
                }
                field("Service Accuracy"; Rec."Service Accuracy")
                {
                }
                field("Was the Veh. Finished On Time"; Rec."Was the Veh. Finished On Time")
                {
                }
                field("Fix it right"; Rec."Fix it right")
                {
                }
                field(Score; Rec.Score)
                {
                }
                field("Follow Up Required"; Rec."Follow Up Required")
                {
                }
                field(Done; Rec.Done)
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        /*CALCFIELDS("Any Difficulty on appo. Ave","Treat @ Reception/Deli Ave","Wait Time at Reception Ave","Service Accuracy score Ave",
                   "Vehicle Finished On Time  Ave","Work/Est. Explant@ Recep Ave","Stdrd Expectations Satis ? Ave",
                   "Recormend Us to Other Ave");Rec. */

        Rec.CALCFIELDS("Any Difficulty on appo. sum", "Treat Reception/Deli sum", "Wait Time at Reception sum", "Service Accuracy score sum",
                   "Vehicle Finished On Time  sum", "Work/Est. Explant Recep sum", "Stdrd Expectations Satis sum",
                   "Recormend Us to Other sum");

        Rec.CALCFIELDS("Any Difficulty on appo. Cont", "Treat Reception/Deli Cont", "Wait Time at Reception Cont",
        "Service Accuracy score Cont",
                   "Vehicle Finished On Time Cont", "Work/Est. Explant Recep Cont", "Stdrd Expectations Satis Cont",
                   "Recormend Us to Other Cont");

        Rec."Max Score1" := Rec."Any Difficulty on appo. sum" * 3;
        Rec.Average1 := Rec."Any Difficulty on appo. Cont" / Rec."Maximum Score for Question";

        Rec."Max Score2" := Rec."Treat Reception/Deli sum" * 3;
        Rec.Average2 := Rec."Treat Reception/Deli Cont" / Rec."Maximum Score for Question";

        Rec."Max Score3" := Rec."Wait Time at Reception sum" * 3;
        Rec.Average3 := Rec."Wait Time at Reception Cont" / Rec."Maximum Score for Question";

        Rec."Max Score4" := Rec."Service Accuracy score sum" * 3;
        Rec.Average4 := Rec."Service Accuracy score Cont" / Rec."Maximum Score for Question";

        Rec."Max Score5" := Rec."Vehicle Finished On Time  sum" * 3;
        Rec.Average5 := Rec."Vehicle Finished On Time Cont" / Rec."Maximum Score for Question";

        Rec."Max Score6" := Rec."Work/Est. Explant Recep sum" * 3;
        Rec.Average6 := Rec."Work/Est. Explant Recep Cont" / Rec."Maximum Score for Question";

        Rec."Max Score7" := Rec."Stdrd Expectations Satis sum" * 3;
        Rec.Average7 := Rec."Stdrd Expectations Satis Cont" / Rec."Maximum Score for Question";

        Rec."Max Score8" := Rec."Recormend Us to Other sum" * 3;
        Rec.Average8 := Rec."Recormend Us to Other Cont" / Rec."Maximum Score for Question";

    end;

    var
        total1: Decimal;
        total2: Decimal;
        total3: Decimal;
        total4: Decimal;
        total5: Decimal;
        total6: Decimal;
        CumTot: Decimal;
        Ave1: Decimal;
        Ave2: Decimal;
        Ave3: Decimal;
        Ave4: Decimal;
        Ave5: Decimal;
        Ave6: Decimal;
        Scont: Integer;
}

