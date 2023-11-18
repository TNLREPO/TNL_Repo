page 50406 "Document Apprv. List"
{
    PageType = Card;
    SourceTable = Table50162;

    layout
    {
        area(content)
        {
            repeater()
            {
                Editable = false;
                field(Date; Date)
                {
                }
                field("No."; "No.")
                {
                }
                field("Vendor Name"; "Vendor Name")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Document)
            {
                Caption = 'Document';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50405;
                RunPageLink = Field1 = FIELD (No.);
            }
        }
    }

    trigger OnOpenPage()
    begin
        UserSetup.GET(USERID);
        SETRANGE("Pending Person", USERID);
    end;

    var
        UserSetup: Record 91;
}

