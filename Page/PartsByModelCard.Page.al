page 50129 "Parts By Model Card"
{
    PageType = Card;
    SourceTable = Table50014;

    layout
    {
        area(content)
        {
            group()
            {
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Date Filter"; "Date Filter")
                {
                }
                field("Model Description"; "Model Description")
                {
                }
                field("Line Items"; "Line Items")
                {
                }
                field(unitinoperation; unitinoperation)
                {
                    Caption = 'Units in Operation';
                    DecimalPlaces = 0 : 0;
                }
                field("Line Items with Stock Q'ty"; "Line Items with Stock Q'ty")
                {
                }
            }
            part(; 50128)
            {
                SubPageLink = Model Code=FIELD(Model No.),
                              Base Date=FIELD(Date Filter);
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
                    modelrec.SETRANGE(modelrec."Model No.","Model No.");
                    REPORT.RUNMODAL(50161,TRUE,TRUE,modelrec);
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        VALIDATE("Date Filter",TODAY);
    end;

    var
        modelrec: Record "50014";
}

