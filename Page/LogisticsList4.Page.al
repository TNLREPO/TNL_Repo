page 50468 "Logistics List 4"
{
    PageType = Card;
    SourceTable = Table50172;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Order No."; "Order No.")
                {
                    Editable = false;
                }
                field("Chassis No."; "Chassis No.")
                {
                    Editable = false;
                }
                field("Item No."; "Item No.")
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field(Model; Model)
                {
                    Editable = false;
                }
                field("Model Name"; "Model Name")
                {
                    Editable = false;
                }
                field("Engine No."; "Engine No.")
                {
                    Editable = false;
                }
                field("Colour Name"; "Colour Name")
                {
                    Editable = false;
                }
                field("No. Series"; "No. Series")
                {
                }
                field("VRI Code"; "VRI Code")
                {
                }
                field("Notify VRI"; "Notify VRI")
                {
                }
                field("Sent By"; "Sent By")
                {
                }
                field(Date; Date)
                {
                }
                field("KM Reading"; "KM Reading")
                {
                }
                field("Job Description"; "Job Description")
                {
                }
                field("Date of Problem Report"; "Date of Problem Report")
                {
                }
                field("Arrival Date"; "Arrival Date")
                {
                }
                field(Location; Location)
                {
                }
                field("Fuel Level"; "Fuel Level")
                {
                }
                field("No. of Keys"; "No. of Keys")
                {
                }
                field("Responsible Customer"; "Responsible Customer")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("O/L Comment"; "O/L Comment")
                {
                }
                field("O/L Approval Comment"; "O/L Approval Comment")
                {
                }
                field("O/L Approval"; "O/L Approval")
                {
                }
                field("VRI Comment To O/L"; "VRI Comment To O/L")
                {
                }
                field("VRI To WShop"; "VRI To WShop")
                {
                }
                field(Estimate; Estimate)
                {
                }
                field("Claim No."; "Claim No.")
                {
                }
                field("Estimate Approval"; "Estimate Approval")
                {
                }
                field("ISPV to VRI"; "ISPV to VRI")
                {
                }
                field("Awaiting Estimate"; "Awaiting Estimate")
                {
                }
                field("Awaiting O/L Apprv."; "Awaiting O/L Apprv.")
                {
                }
                field("Under Repair"; "Under Repair")
                {
                }
                field("Completed Repair"; "Completed Repair")
                {
                }
                field(Completed; Completed)
                {
                }
                field("Generate COF"; "Generate COF")
                {
                }
                field("COF No."; "COF No.")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Card)
            {
                Caption = 'Card';
                Image = EditLines;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50463;
                RunPageOnRec = true;
            }
        }
    }
}

