page 50459 "ISPV Folder"
{
    PageType = Card;
    SourceTable = Table50172;

    layout
    {
        area(content)
        {
            field("ISPV to VRI"; "ISPV to VRI")
            {
                Caption = 'ISPV to VRI';
                DrillDownPageID = "Logistics List 1";
                LookupPageID = "Logistics List 1";
                Style = Standard;
                StyleExpr = TRUE;
            }
            field("Awaiting Estimate"; "Awaiting Estimate")
            {
                Caption = 'Awaiting Estimate';
                DrillDownPageID = "Logistics List 2";
                LookupPageID = "Logistics List 2";
                Style = Standard;
                StyleExpr = TRUE;
            }
            field("Awaiting O/L Apprv."; "Awaiting O/L Apprv.")
            {
                Caption = 'Awaiting O/L Apprv.';
                DrillDownPageID = "Logistics List 3";
                LookupPageID = "Logistics List 3";
                Style = Standard;
                StyleExpr = TRUE;
            }
            field("Under Repair"; "Under Repair")
            {
                Caption = 'Under Repair';
                DrillDownPageID = "Logistics List 4";
                LookupPageID = "Logistics List 4";
                Style = Standard;
                StyleExpr = TRUE;
            }
            field("Completed Repair"; "Completed Repair")
            {
                Caption = 'Completed Repair';
                DrillDownPageID = "Logistics List 5";
                LookupPageID = "Logistics List 5";
                Style = Standard;
                StyleExpr = TRUE;
            }
            field("All ISPV"; "All ISPV")
            {
                DrillDownPageID = "Logistics List 6";
                LookupPageID = "Logistics List 6";
                Style = Standard;
                StyleExpr = TRUE;
            }
        }
    }

    actions
    {
    }
}

