page 50470 "Logistics Card"
{
    PageType = Card;
    SourceTable = Table50172;
    SourceTableView = WHERE (Notify VRI=CONST(No));

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
                    AssistEdit = true;
                    Lookup = true;
                    LookupPageID = "Item Ledger Entries";

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        ItemLedgEntry.SETCURRENTKEY("Serial No.");
                        ItemLedgEntry.SETFILTER("Serial No.", '<>%1', '');
                        //IF FORM.RUNMODAL(0,ItemLedgEntry) = ACTION::LookupOK THEN
                        //VALIDATE("Chassis No.",ItemLedgEntry."Serial No.");
                    end;
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
    }

    var
        ItemLedgEntry: Record "32";
}

