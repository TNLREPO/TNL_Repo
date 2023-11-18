page 50462 "ISPV Card 3"
{
    PageType = Card;
    SourceTable = Table50172;
    SourceTableView = WHERE (Completed = CONST (No),
                            Estimate Approval=CONST(Yes),
                            VRI To WShop=CONST(Yes),
                            O/L Approval=CONST(No));

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
            }
            group("O/L Approval")
            {
                Caption = 'O/L Approval';
                field("VRI Comment To O/L"; "VRI Comment To O/L")
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
            }
        }
    }

    actions
    {
    }
}

