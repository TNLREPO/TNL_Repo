page 50434 "IOU Approval List"
{
    PageType = Card;
    SourceTable = Table50105;
    SourceTableView = SORTING (IOU No.)
                      WHERE (Posted = CONST (No),
                            Treated = CONST (No),
                            Final Apprv. Status=FILTER(<>Approved));

    layout
    {
        area(content)
        {
            repeater()
            {
                Editable = false;
                field("Entry Date";"Entry Date")
                {
                }
                field("IOU No.";"IOU No.")
                {
                }
                field("Account Name";"Account Name")
                {
                }
                field(Description;Description)
                {
                }
                field("Global Dimension 1 Code";"Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code";"Global Dimension 2 Code")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(OK)
            {
                Caption = 'OK';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50433;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        OnAfterGetCurrRecord;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        OnAfterGetCurrRecord;
    end;

    trigger OnOpenPage()
    begin
        UserSetUp.GET(USERID);
        //SETRANGE("Current pending Person",USERID);
    end;

    var
        UserSetUp: Record "91";

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        UserSetUp.GET(USERID);
        //SETRANGE("Current pending Person",USERID);
    end;
}

