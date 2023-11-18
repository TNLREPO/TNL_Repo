page 50025 "Loan List"
{
    CardPageID = "Loan Card.";
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50013;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Loan ID"; "Loan ID")
                {
                }
                field("Staff No."; "Staff No.")
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
                field("Remaining Amount"; "Remaining Amount")
                {
                }
                field("Loan Type"; "Loan Type")
                {
                }
                field("Loan Created"; "Loan Created")
                {
                }
                field("Start Period"; "Start Period")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Loan")
            {
                Caption = '&Loan';
                action("&Card")
                {
                    Caption = '&Card';
                    Image = EditLines;
                    RunObject = Page 50024;
                    RunPageLink = Loan ID=FIELD(Loan ID);
                    ShortCutKey = 'Shift+F7';
                }
            }
        }
    }

    trigger OnInit()
    begin
        CurrPage.LOOKUPMODE := TRUE;
    end;

    var
        gpc: Codeunit "50004";
        DefaultPostingGroup: Code[20];
}

