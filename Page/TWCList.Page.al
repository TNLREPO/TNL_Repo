page 50114 "TWC List"
{
    Caption = 'TWC List';
    DataCaptionFields = "TWC No.", "Dealer Code", VIN;
    DeleteAllowed = false;
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50015;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Distributors Code"; "Distributors Code")
                {
                }
                field("Dealer Code"; "Dealer Code")
                {
                }
                field("Sales Ledger No."; "Sales Ledger No.")
                {
                }
                field(VIN; VIN)
                {
                }
                field("TWC No."; "TWC No.")
                {
                }
                field("TWC No. SFX"; "TWC No. SFX")
                {
                }
                field("Claimant Code"; "Claimant Code")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                }
                field("Dealer Claim No."; "Dealer Claim No.")
                {
                }
                field("Process Flag"; "Process Flag")
                {
                }
                field("Page Count"; "Page Count")
                {
                }
                field("Warranty Type"; "Warranty Type")
                {
                }
                field(Francise; Francise)
                {
                }
                field("Warranty Application Code"; "Warranty Application Code")
                {
                }
                field("Warranty Application Code 2"; "Warranty Application Code 2")
                {
                }
                field("Warranty Application Code 3"; "Warranty Application Code 3")
                {
                }
                field("Warranty Application Code 4"; "Warranty Application Code 4")
                {
                }
                field("Warranty Application Code 5"; "Warranty Application Code 5")
                {
                }
                field("N.V. Flag"; "N.V. Flag")
                {
                }
                field("F.V. Flag"; "F.V. Flag")
                {
                }
                field("VIN-WMI"; "VIN-WMI")
                {
                }
                field("VIN-VDS"; "VIN-VDS")
                {
                }
                field("VIN-CD"; "VIN-CD")
                {
                }
                field("VIN-VIS"; "VIN-VIS")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Repair Date"; "Repair Date")
                {
                }
                field(Odometer; Odometer)
                {
                }
                field("K/M Flg."; "K/M Flg.")
                {
                }
                field("Current Repair Order No."; "Current Repair Order No.")
                {
                }
                field("Invoice Currency Code"; "Invoice Currency Code")
                {
                }
                field("Exchange Rate"; "Exchange Rate")
                {
                }
                field("Data ID"; "Data ID")
                {
                }
                field("Type Class"; "Type Class")
                {
                }
                field("Pay Code"; "Pay Code")
                {
                }
                field("Operation No."; "Operation No.")
                {
                }
                field(Hour; Hour)
                {
                }
                field("Pay Code 2"; "Pay Code 2")
                {
                }
                field("Operation No. 2"; "Operation No. 2")
                {
                }
                field("Hour 2"; "Hour 2")
                {
                }
                field("Pay Code 3"; "Pay Code 3")
                {
                }
                field("Operation No. 3"; "Operation No. 3")
                {
                }
                field("Hour 3"; "Hour 3")
                {
                }
                field("Operation Main Code"; "Operation Main Code")
                {
                }
                field("Labour Rate"; "Labour Rate")
                {
                }
                field("Labour Total Hour"; "Labour Total Hour")
                {
                }
                field("Labour Amount"; "Labour Amount")
                {
                }
                field("Pay Code Sublet"; "Pay Code Sublet")
                {
                }
                field("Sublet Type"; "Sublet Type")
                {
                }
                field("Sublet Invoice No."; "Sublet Invoice No.")
                {
                }
                field("Sublet Amount"; "Sublet Amount")
                {
                }
                field("Pay Code Sublet 2"; "Pay Code Sublet 2")
                {
                }
                field("Sublet Type 2"; "Sublet Type 2")
                {
                }
                field("Sublet Invoice No. 2"; "Sublet Invoice No. 2")
                {
                }
                field("Sublet Amount 2"; "Sublet Amount 2")
                {
                }
                field("Sublet Total"; "Sublet Total")
                {
                }
                field("Sublet Description"; "Sublet Description")
                {
                }
                field("T1 Code"; "T1 Code")
                {
                }
                field("T2 Code"; "T2 Code")
                {
                }
                field("T3 Code 1"; "T3 Code 1")
                {
                }
                field("T3 Code 2"; "T3 Code 2")
                {
                }
                field("T3 Code 3"; "T3 Code 3")
                {
                }
                field("T3 Code 4"; "T3 Code 4")
                {
                }
                field("T3 Code 5"; "T3 Code 5")
                {
                }
                field("T3 Code 6"; "T3 Code 6")
                {
                }
                field("T3 Code 7"; "T3 Code 7")
                {
                }
                field("Condition (Description)"; "Condition (Description)")
                {
                }
                field("Cause (Description)"; "Cause (Description)")
                {
                }
                field("Remedy (Description)"; "Remedy (Description)")
                {
                }
                field("Parts Pay Code 1"; "Parts Pay Code 1")
                {
                }
                field("Parts Local Flag 1"; "Parts Local Flag 1")
                {
                }
                field("Parts Parts No. 1"; "Parts Parts No. 1")
                {
                }
                field("Parts Quantity 1"; "Parts Quantity 1")
                {
                }
                field("Parts Part Amount 1"; "Parts Part Amount 1")
                {
                }
                field("Parts Pay Code 2"; "Parts Pay Code 2")
                {
                }
                field("Parts Local Flag 2"; "Parts Local Flag 2")
                {
                }
                field("Parts Parts No. 2"; "Parts Parts No. 2")
                {
                }
                field("Parts Quantity 2"; "Parts Quantity 2")
                {
                }
                field("Parts Part Amount 2"; "Parts Part Amount 2")
                {
                }
                field("Parts Pay Code 3"; "Parts Pay Code 3")
                {
                }
                field("Parts Local Flag 3"; "Parts Local Flag 3")
                {
                }
                field("Parts Parts No. 3"; "Parts Parts No. 3")
                {
                }
                field("Parts Quantity 3"; "Parts Quantity 3")
                {
                }
                field("Parts Part Amount 3"; "Parts Part Amount 3")
                {
                }
                field("Parts Pay Code 4"; "Parts Pay Code 4")
                {
                }
                field("Parts Local Flag 4"; "Parts Local Flag 4")
                {
                }
                field("Parts Parts No. 4"; "Parts Parts No. 4")
                {
                }
                field("Parts Quantity 4"; "Parts Quantity 4")
                {
                }
                field("Parts Part Amount 4"; "Parts Part Amount 4")
                {
                }
                field("Parts Pay Code 5"; "Parts Pay Code 5")
                {
                }
                field("Parts Local Flag 5"; "Parts Local Flag 5")
                {
                }
                field("Parts Parts No. 5"; "Parts Parts No. 5")
                {
                }
                field("Parts Quantity 5"; "Parts Quantity 5")
                {
                }
                field("Parts Part Amount 5"; "Parts Part Amount 5")
                {
                }
                field("Parts Pay Code 6"; "Parts Pay Code 6")
                {
                }
                field("Parts Local Flag 6"; "Parts Local Flag 6")
                {
                }
                field("Parts Parts No. 6"; "Parts Parts No. 6")
                {
                }
                field("Parts Quantity 6"; "Parts Quantity 6")
                {
                }
                field("Parts Part Amount 6"; "Parts Part Amount 6")
                {
                }
                field("O.F.P. Local Flag"; "O.F.P. Local Flag")
                {
                }
                field("O.F.P. No."; "O.F.P. No.")
                {
                }
                field("PRR/PWR"; "PRR/PWR")
                {
                }
                field("Part Total"; "Part Total")
                {
                }
                field("Total Claim Amount"; "Total Claim Amount")
                {
                }
                field("Process Date"; "Process Date")
                {
                }
                field("Dist's Claim Adjust Labor %"; "Dist's Claim Adjust Labor %")
                {
                }
                field("Dist's Claim Adjust Sublet %"; "Dist's Claim Adjust Sublet %")
                {
                }
                field("Dist's Claim Adjust Parts %"; "Dist's Claim Adjust Parts %")
                {
                }
                field("Dist. Comment (1)"; "Dist. Comment (1)")
                {
                }
                field(Dummy; Dummy)
                {
                }
                field("AC First Install date"; "AC First Install date")
                {
                }
                field("AC First Install KM"; "AC First Install KM")
                {
                }
                field("Prev. Repair Order No."; "Prev. Repair Order No.")
                {
                }
                field("Prev. Repair Date"; "Prev. Repair Date")
                {
                }
                field("Prev. Repair KM"; "Prev. Repair KM")
                {
                }
                field("Prev. Invoice No."; "Prev. Invoice No.")
                {
                }
                field("Curr. Invoice No."; "Curr. Invoice No.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

