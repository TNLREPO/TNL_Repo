page 50281 "Posted IOU Retirement"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table50107;
    SourceTableView = WHERE (Posted = CONST (Yes));

    layout
    {
        area(content)
        {
            group("IOU Retirement")
            {
                Caption = 'IOU Retirement';
                field("No."; "No.")
                {
                }
                field("IOU No."; "IOU No.")
                {
                }
                field("Entry Date"; "Entry Date")
                {
                    Caption = 'Entry Date';
                }
                field(Description; Description)
                {
                    Editable = false;
                }
                field("Original IOU Amount"; "Original IOU Amount")
                {
                }
                field("Amount To Retire"; "Amount To Retire")
                {
                }
                field(BalAmt; BalAmt)
                {
                    Caption = 'Balance';
                    Editable = false;
                }
                label()
                {
                    CaptionClass = Text19002652;
                }
                field("Apply Entry"; "Apply Entry")
                {
                }
                field("Applies-to Doc. No."; "Applies-to Doc. No.")
                {
                }
            }
            part(; 50221)
            {
                SubPageLink = Retirement No.=FIELD(No.),
                              IOU No.=FIELD(IOU No.);
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Fu&nction")
            {
                Caption = 'Fu&nction';
                action(Print)
                {
                    Caption = 'Print';
                    Image = Print;
                    ShortCutKey = 'F7';

                    trigger OnAction()
                    begin
                        IOURetireHead.SETRANGE(IOURetireHead."No.","No.");
                        IF FINDFIRST THEN
                          REPORT.RUNMODAL(50350,TRUE,TRUE,IOURetireHead);
                    end;
                }
                separator()
                {
                }
                action(Navigate)
                {
                    Caption = 'Navigate';
                    Image = Navigate;

                    trigger OnAction()
                    begin
                        Navigate;
                    end;
                }
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        BalAmt := 0;
        CALCFIELDS("Amount To Retire");
        BalAmt := "Original IOU Amount" - "Amount To Retire";
        OnAfterGetCurrRecord;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        OnAfterGetCurrRecord;
    end;

    var
        IOURec: Record "50105";
        IOURetireHead: Record "50107";
        GPC: Codeunit "50004";
        Text001: Label 'Do you want to Post Retirement';
        BalAmt: Decimal;
        Text19002652: Label 'For Accounts Dept. ';

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        BalAmt := 0;
        CALCFIELDS("Amount To Retire");
        BalAmt := "Original IOU Amount" - "Amount To Retire";
    end;
}

