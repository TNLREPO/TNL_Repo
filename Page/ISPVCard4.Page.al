page 50463 "ISPV Card 4"
{
    PageType = Card;
    SourceTable = Table50172;
    SourceTableView = WHERE (Completed = CONST (No),
                            Estimate Approval=CONST(Yes),
                            VRI To WShop=CONST(Yes),
                            O/L Approval=CONST(Yes));

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
                field("Sent By"; "Sent By")
                {
                }
                field("COF No."; "COF No.")
                {
                    Editable = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        COFRec.SETCURRENTKEY("Customer Order Form No.");
                        COFRec.SETRANGE("Customer Order Form No.", "COF No.");
                        //IF FORM.RUNMODAL(50382,COFRec) = ACTION::LookupOK THEN;
                    end;
                }
            }
        }
    }

    actions
    {
    }

    var
        COFRec: Record 50119;
}

