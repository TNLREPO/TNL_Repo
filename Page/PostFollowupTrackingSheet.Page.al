page 50249 "Post Followup Tracking Sheet"
{
    PageType = Card;
    SourceTable = Table50045;

    layout
    {
        area(content)
        {
            group()
            {
                field("Index No."; "Index No.")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                    Caption = 'COF No.';
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Treatment Reception/Delivery"; "Treatment Reception/Delivery")
                {
                }
                field("Work/Est. Explanation Recept"; "Work/Est. Explanation Recept")
                {
                }
                field("Waitting Time at Reception"; "Waitting Time at Reception")
                {
                }
                field("Standard Expectations"; "Standard Expectations")
                {
                }
                field("Any Difficulty on appo."; "Any Difficulty on appo.")
                {
                }
                field("How is Wait Time at Reception"; "How is Wait Time at Reception")
                {
                }
                field("Work/Est. Explant Reception"; "Work/Est. Explant Reception")
                {
                }
                field("Reason for Fail Finishing Time"; "Reason for Fail Finishing Time")
                {
                }
                field("Treat Reception/Delivery"; "Treat Reception/Delivery")
                {
                }
                field("Did Stdrd Expectations Satis"; "Did Stdrd Expectations Satis")
                {
                }
                field("Work Completed the First Time"; "Work Completed the First Time")
                {
                }
                field("Will you Recomend Us to Other"; "Will you Recomend Us to Other")
                {
                }
                field("Service Accuracy"; "Service Accuracy")
                {
                }
                field("Was the Veh. Finished On Time"; "Was the Veh. Finished On Time")
                {
                }
                field("Fix it right"; "Fix it right")
                {
                }
                field(Score; Score)
                {
                }
                field("Follow Up Required"; "Follow Up Required")
                {
                }
                field(Done; Done)
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
                   "Recormend Us to Other Ave"); */

        CALCFIELDS("Any Difficulty on appo. sum", "Treat Reception/Deli sum", "Wait Time at Reception sum", "Service Accuracy score sum",
                   "Vehicle Finished On Time  sum", "Work/Est. Explant Recep sum", "Stdrd Expectations Satis sum",
                   "Recormend Us to Other sum");

        CALCFIELDS("Any Difficulty on appo. Cont", "Treat Reception/Deli Cont", "Wait Time at Reception Cont",
        "Service Accuracy score Cont",
                   "Vehicle Finished On Time Cont", "Work/Est. Explant Recep Cont", "Stdrd Expectations Satis Cont",
                   "Recormend Us to Other Cont");

        "Max Score1" := "Any Difficulty on appo. sum" * 3;
        Average1 := "Any Difficulty on appo. Cont" / "Maximum Score for Question";

        "Max Score2" := "Treat Reception/Deli sum" * 3;
        Average2 := "Treat Reception/Deli Cont" / "Maximum Score for Question";

        "Max Score3" := "Wait Time at Reception sum" * 3;
        Average3 := "Wait Time at Reception Cont" / "Maximum Score for Question";

        "Max Score4" := "Service Accuracy score sum" * 3;
        Average4 := "Service Accuracy score Cont" / "Maximum Score for Question";

        "Max Score5" := "Vehicle Finished On Time  sum" * 3;
        Average5 := "Vehicle Finished On Time Cont" / "Maximum Score for Question";

        "Max Score6" := "Work/Est. Explant Recep sum" * 3;
        Average6 := "Work/Est. Explant Recep Cont" / "Maximum Score for Question";

        "Max Score7" := "Stdrd Expectations Satis sum" * 3;
        Average7 := "Stdrd Expectations Satis Cont" / "Maximum Score for Question";

        "Max Score8" := "Recormend Us to Other sum" * 3;
        Average8 := "Recormend Us to Other Cont" / "Maximum Score for Question";

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

