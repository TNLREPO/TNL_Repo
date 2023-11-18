page 50226 "Cheque Receipt Mgt"
{
    PageType = Card;
    SourceTable = Table50134;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(Code; Code)
                {

                    trigger OnAssistEdit()
                    begin
                        AssistEdit(xRec);
                        CurrPage.UPDATE(TRUE);
                    end;
                }
                field("Cashier Code"; "Cashier Code")
                {
                }
                field("Transaction date"; "Transaction date")
                {
                }
                field("Cheque No."; "Cheque No.")
                {
                }
                field("Banks Cheque code"; "Banks Cheque code")
                {
                }
                field("Bank Name"; "Bank Name")
                {
                }
                field("Cheque Value"; "Cheque Value")
                {
                }
                field("Cheque Date"; "Cheque Date")
                {
                }
                field("Post Dated Cheque"; "Post Dated Cheque")
                {
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer  Name"; "Customer  Name")
                {
                }
                field(Reference; Reference)
                {
                }
                field(Description; Description)
                {
                }
            }
            group(Treasurer)
            {
                Caption = 'Treasurer';
                field("Deposited Bank Account"; "Deposited Bank Account")
                {
                }
                field("Date Presented to Bank"; "Date Presented to Bank")
                {
                }
                field("Expected Clearing Date"; "Expected Clearing Date")
                {
                }
                field("Date Cleared"; "Date Cleared")
                {
                }
                field(Cleared; Cleared)
                {
                }
                field("Returned Date"; "Returned Date")
                {
                }
                field(Returned; Returned)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Print Temporary Receipt")
            {
                Caption = 'Print Temporary Receipt';
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Report 50300;
                Visible = false;

                trigger OnAction()
                begin
                    IF NOT Cleared THEN
                        REPORT.RUNMODAL(50300, TRUE, TRUE, Rec);
                end;
            }
            group(Print)
            {
                Caption = 'Print';
                action("Temporary Receipt")
                {
                    Caption = 'Temporary Receipt';
                    RunObject = Report 50300;
                }
                action("Confirmed Receipt")
                {
                    Caption = 'Confirmed Receipt';
                    RunObject = Report 50303;
                }
            }
        }
    }

    var
        ChqRcpt: Record "50134";
}

