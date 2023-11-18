page 50222 "Deposit Card"
{
    PageType = Card;
    SourceTable = Table50108;
    SourceTableView = SORTING (Deposit No.)
                      WHERE (Posted = CONST (No));

    layout
    {
        area(content)
        {
            group()
            {
                field("Deposit No."; "Deposit No.")
                {

                    trigger OnAssistEdit()
                    begin
                        AssistEdit(xRec);
                        CurrPage.UPDATE(TRUE);
                    end;
                }
                field(Description; Description)
                {
                }
                field(Type; Type)
                {
                }
                field("No."; "No.")
                {
                }
                field("Prev. Payments Exists"; "Prev. Payments Exists")
                {
                }
                field("Ref. Order No."; "Ref. Order No.")
                {
                }
                field("Document Date"; "Document Date")
                {

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        //CLEAR(frmDatePicker);
                        /*IF "Document Date" = 0D THEN
                          frmDatePicker.SetCurrDate(TODAY)
                        ELSE
                          frmDatePicker.SetCurrDate("Document Date");
                        frmDatePicker.LOOKUPMODE(TRUE);
                        IF frmDatePicker.RUNMODAL = ACTION::LookupOK THEN
                          "Document Date" := frmDatePicker.GetCurrDate;  */

                    end;
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Original Amount"; "Original Amount")
                {
                }
                field("Amount Deposited"; "Amount Deposited")
                {
                }
                field("Prev. Amount Deposited"; "Prev. Amount Deposited")
                {
                }
                field("Balance Amount"; "Balance Amount")
                {
                }
                field("Bal. Account No."; "Bal. Account No.")
                {
                }
                field("Cheque No."; "Cheque No.")
                {
                }
                field("Production Month"; "Production Month")
                {
                }
                field("Cash Confirmation"; "Cash Confirmation")
                {
                }
                field(Approved; Approved)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("P&ost")
            {
                Caption = 'P&ost';
                Image = Post;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    TESTFIELD(Approved);
                    TESTFIELD("Amount Deposited");
                    TESTFIELD("Global Dimension 1 Code");
                    GPC.AccessGranted('17');
                    GPC.PostDeposit(Rec);
                    CurrPage.UPDATE(FALSE);
                end;
            }
        }
    }

    var
        GPC: Codeunit "50004";
}

