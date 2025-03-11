page 50129 "Parts By Model Card"
{
    PageType = Card;
    SourceTable = Model;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Model No."; Rec."Model No.")
                {
                }
                field("Model Name"; Rec."Model Name")
                {
                }
                field("Date Filter"; Rec."Date Filter")
                {
                }
                field("Model Description"; Rec."Model Description")
                {
                }
                field("Line Items"; Rec."Line Items")
                {
                }
                field(unitinoperation; Rec.unitinoperation)
                {
                    Caption = 'Units in Operation';
                    DecimalPlaces = 0 : 0;
                }
                field("Line Items with Stock Q'ty"; Rec."Line Items with Stock Q'ty")
                {
                }
            }
            part(Lines; "Parts By Model Lines")
            {
                SubPageLink = "Model Code" = FIELD("Model No."),
                              "Base Date" = FIELD("Date Filter");
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Print List")
            {
                Caption = 'Print List';
                Promoted = true;
                PromotedCategory = Process;
                RunPageOnRec = true;

                trigger OnAction()
                begin
                    modelrec.SETRANGE(modelrec."Model No.", Rec."Model No.");
                    REPORT.RUNMODAL(50161, TRUE, TRUE, modelrec);
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        Rec.VALIDATE("Date Filter", TODAY);
    end;

    var
        modelrec: Record 50014;
}

