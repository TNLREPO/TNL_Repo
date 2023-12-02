page 50186 "Dealer Mthly Picking Header"
{
    DelayedInsert = true;
    PageType = Card;
    SourceTable = "Vehicle Mth. Allocation Header";

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Allocation Code"; Rec."Allocation Code")
                {
                }
                field("Customer No."; Rec."Customer No.")
                {
                }
                field("Customer Name"; Rec."Customer Name")
                {
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                }
                field("Department Code"; Rec."Department Code")
                {
                }
            }
            part(Lines; "Dealer Vehicle Allocation Sub")
            {
                SubPageLink = "Allocation Code" = FIELD("Allocation Code"),
                              "Customer No." = FIELD("Customer No.");
                SubPageView = WHERE(Released = Filter(True),
                                    Selected = filter(True));
            }
            group(Released)
            {
                Caption = 'Released';
                field("Amount Paid"; Rec."Amount Paid")
                {
                }
                field("Teller No."; Rec."Teller No.")
                {
                }
                field(Bank; Rec.Bank)
                {
                }
                field("Teller Date"; Rec."Teller Date")
                {
                }
                field("Amount Allocated"; Rec."Amount Allocated")
                {
                }
                field("Value of Selected Item"; Rec."Value of Selected Item")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(Function)
            {
                Caption = 'Function';
                action("Generate Dealer File")
                {
                    Caption = 'Generate Dealer File';
                    ShortCutKey = 'F9';

                    trigger OnAction()
                    begin
                        Bold := TRUE;
                        Italic := TRUE;
                        Underline := TRUE;
                        //CreateExcelHeader;
                        //TransExcel;
                    end;
                }
                action("Print Allocated Paid Invoice")
                {
                    Caption = 'Print Allocated Paid Invoice';
                    RunObject = Report 50250;
                }
                action("Generate Dealer Released List")
                {
                    Caption = 'Generate Dealer Released List';
                    ShortCutKey = 'F7';

                    trigger OnAction()
                    begin
                        Bold := TRUE;
                        Italic := TRUE;
                        Underline := TRUE;
                        //CreateExcelHeader;
                        //TransExcelReleased;
                    end;
                }
                action("Generate Invoice")
                {
                    Caption = 'Generate Invoice';

                    trigger OnAction()
                    begin
                        Rec.CreateInvoice;
                    end;
                }
            }
        }
        area(processing)
        {
            action("Get Allocated Lines")
            {
                Caption = 'Get Allocated Lines';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    Rec.Breakrequest;
                end;
            }
        }
    }

    var
        Bold: Boolean;
        Italic: Boolean;
        Underline: Boolean;
}

