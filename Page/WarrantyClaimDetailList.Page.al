page 50164 "Warranty Claim Detail List"
{
    DeleteAllowed = false;
    Editable = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = Card;
    SourceTable = Table50039;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Claim No."; "Claim No.")
                {
                }
                field("Vehicle identification Number"; "Vehicle identification Number")
                {
                }
                field("Dealer Code"; "Dealer Code")
                {
                }
                field("Claim Date"; "Claim Date")
                {
                }
                field("Claim Type"; "Claim Type")
                {
                }
                field("No."; "No.")
                {
                }
                field(Description; Description)
                {
                }
                field("Variant Code"; "Variant Code")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                }
                field(Amount; Amount)
                {
                }
                field("TNL Approved"; "TNL Approved")
                {
                }
                field("Issue to Dealer"; "Issue to Dealer")
                {
                }
                field("TNL Approved Date"; "TNL Approved Date")
                {
                }
                field("Issue to Dealer Date"; "Issue to Dealer Date")
                {
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;
}

