page 50186 "Dealer Mthly Picking Header"
{
    DelayedInsert = true;
    PageType = Card;
    SourceTable = Table50034;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Allocation Code"; "Allocation Code")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
            }
            part(; 50180)
            {
                SubPageLink = Allocation Code=FIELD(Allocation Code),
                              Customer No.=FIELD(Customer No.);
                SubPageView = WHERE(Released=CONST(Yes),
                                    Selected=CONST(Yes));
            }
            group(Released)
            {
                Caption = 'Released';
                field("Amount Paid";"Amount Paid")
                {
                }
                field("Teller No.";"Teller No.")
                {
                }
                field(Bank;Bank)
                {
                }
                field("Teller Date";"Teller Date")
                {
                }
                field("Amount Allocated";"Amount Allocated")
                {
                }
                field("Value of Selected Item";"Value of Selected Item")
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
                        CreateInvoice;
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
                    Breakrequest;
                end;
            }
        }
    }

    var
        Bold: Boolean;
        Italic: Boolean;
        Underline: Boolean;
}

