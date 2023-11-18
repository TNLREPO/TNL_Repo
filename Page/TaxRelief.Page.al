page 50038 "Tax Relief"
{
    DataCaptionFields = "Relief Code", Name;
    PageType = List;
    SourceTable = Table50096;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Considered; Considered)
                {
                }
                field("Relief Code"; "Relief Code")
                {
                }
                field(Name; Name)
                {
                }
                field("Related E/D"; "Related E/D")
                {
                }
                field(Amount; Amount)
                {
                }
                field(Rate; Rate)
                {
                }
                field("+ value"; "+ value")
                {
                }
                field(Factor; Factor)
                {
                }
                field("Added to"; "Added to")
                {
                }
                field("Relief Amount"; "Relief Amount")
                {
                }
                field("Cummulative Relief"; "Cummulative Relief")
                {
                }
                field("Sum Total Relief"; "Sum Total Relief")
                {
                }
                field("Maximum Relief"; "Maximum Relief")
                {
                }
                field(Minimum; Minimum)
                {
                }
                field("Deduct TaxFree/Before calc"; "Deduct TaxFree/Before calc")
                {
                }
                field("Excess of"; "Excess of")
                {
                }
                field("Relief Base"; "Relief Base")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Update Tax FreePay")
            {
                Caption = 'Update Tax FreePay';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50185;
            }
        }
    }

    var
        Employee: Record 5200;
        TaxRelief: Record "50096";
        EdRec: Record "50001";
        PayLineRec: Record "50006";
        PayPeriod: Record "50004";
        PayPeriod2: Record "50004";
        AccPeriod: Record "50";
        AccPeriod2: Record "50";
        AccPercode: Date;
        AccPercode2: Date;
        BeginPer: Code[10];
        EndPer: Code[10];
        EmpGrpLine: Record "50008";
}

