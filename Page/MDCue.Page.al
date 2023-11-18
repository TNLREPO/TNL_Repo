page 50615 "MD Cue"
{
    PageType = CardPart;
    SourceTable = Table70015;

    layout
    {
        area(content)
        {
            cuegroup("Opex Approval")
            {
                Caption = 'Opex Approval';
                field("Opex Approval- MD"; "Opex Approval- MD")
                {
                    DrillDownPageID = "Managing Dir. Appr.";
                }
                field("Opex Balance/Full Payment-MD"; "Opex Balance/Full Payment-MD")
                {
                    DrillDownPageID = "Balance/Full Payment Opex-MD";
                }
                field("Capex Approval- MD"; "Capex Approval- MD")
                {
                    DrillDownPageID = "Managing Dir. Appr.-Capex";
                }
                field("Capex Balance/Full Payment-MD"; "Capex Balance/Full Payment-MD")
                {
                    DrillDownPageID = "Bal/Full Payment Capex-MD";
                }
                field("MD Approval Leave"; "MD Approval Leave")
                {
                    DrillDownPageID = "MD Approval List";
                }
                field("Local Part Purch. MD"; "Local Part Purch. MD")
                {
                    DrillDownPageID = "MD Procurement Approval";
                }
                field("Local Part Purch. Isolo"; "Local Part Purch. Isolo")
                {
                    DrillDownPageID = "MD Proc Apprv Isolo";
                }
                field("Air Online Order MD"; "Air Online Order MD")
                {
                    DrillDownPageID = "MD Approval FM";
                    LookupPageID = "MD Approval FM";
                }
            }
        }
    }

    actions
    {
    }
}

