page 50278 "Credit Control Role Center"
{
    Caption = 'Role Center';
    PageType = RoleCenter;

    layout
    {
        area(rolecenter)
        {
            group()
            {
                part(; 50279)
                {
                }
            }
            group()
            {
                part(; 9150)
                {
                }
                part(; 9152)
                {
                    Visible = false;
                }
                part(; 770)
                {
                }
                part(; 760)
                {
                }
                part(; 681)
                {
                }
                systempart(; MyNotes)
                {
                }
            }
        }
    }

    actions
    {
        area(reporting)
        {
            action("C&ustomer - List")
            {
                Caption = 'C&ustomer - List';
                Image = "Report";
                RunObject = Report 101;
            }
            action("Customer - &Balance to Date")
            {
                Caption = 'Customer - &Balance to Date';
                Image = "Report";
                RunObject = Report 121;
            }
            action("Aged &Accounts Receivable")
            {
                Caption = 'Aged &Accounts Receivable';
                Image = "Report";
                RunObject = Report 120;
            }
            action("Customer - &Summary Aging Simp.")
            {
                Caption = 'Customer - &Summary Aging Simp.';
                Image = "Report";
                RunObject = Report 109;
            }
            action("Customer - Trial Balan&ce")
            {
                Caption = 'Customer - Trial Balan&ce';
                Image = "Report";
                RunObject = Report 129;
            }
            action("Cus&tomer/Item Sales")
            {
                Caption = 'Cus&tomer/Item Sales';
                Image = "Report";
                RunObject = Report 113;
            }
            separator()
            {
            }
            action("Customer &Document Nos.")
            {
                Caption = 'Customer &Document Nos.';
                Image = "Report";
                RunObject = Report 128;
            }
            action("Sales &Invoice Nos.")
            {
                Caption = 'Sales &Invoice Nos.';
                Image = "Report";
                RunObject = Report 124;
            }
            action("Sa&les Credit Memo Nos.")
            {
                Caption = 'Sa&les Credit Memo Nos.';
                Image = "Report";
                RunObject = Report 125;
            }
            action("Re&minder Nos.")
            {
                Caption = 'Re&minder Nos.';
                Image = "Report";
                RunObject = Report 126;
            }
            action("Finance Cha&rge Memo Nos.")
            {
                Caption = 'Finance Cha&rge Memo Nos.';
                Image = "Report";
                RunObject = Report 127;
            }
        }
        area(embedding)
        {
            action(Customers)
            {
                Caption = 'Customers';
                Image = Customer;
                RunObject = Page 22;
            }
            action(Balance)
            {
                Caption = 'Balance';
                Image = Balance;
                RunObject = Page 22;
                RunPageView = WHERE (Balance (LCY)=FILTER(<>0));
            }
            action("Sales Orders")
            {
                Caption = 'Sales Orders';
                Image = "Order";
                RunObject = Page 9305;
            }
            action("Sales Invoices")
            {
                Caption = 'Sales Invoices';
                Image = Invoice;
                RunObject = Page 9301;
            }
            action("Sales Return Orders")
            {
                Caption = 'Sales Return Orders';
                Image = ReturnOrder;
                RunObject = Page 9304;
            }
            action("Bank Accounts")
            {
                Caption = 'Bank Accounts';
                Image = BankAccount;
                RunObject = Page 371;
            }
            action(Reminders)
            {
                Caption = 'Reminders';
                Image = Reminder;
                RunObject = Page 436;
            }
            action("Finance Charge Memos")
            {
                Caption = 'Finance Charge Memos';
                Image = FinChargeMemo;
                RunObject = Page 448;
            }
            action(Items)
            {
                Caption = 'Items';
                Image = Item;
                RunObject = Page 31;
            }
            action("Sales Journals")
            {
                Caption = 'Sales Journals';
                RunObject = Page 251;
                                RunPageView = WHERE(Template Type=CONST(Sales),
                                    Recurring=CONST(No));
            }
            action("Cash Receipt Journals")
            {
                Caption = 'Cash Receipt Journals';
                Image = Journals;
                RunObject = Page 251;
                                RunPageView = WHERE(Template Type=CONST(Cash Receipts),
                                    Recurring=CONST(No));
            }
            action("General Journals")
            {
                Caption = 'General Journals';
                Image = Journal;
                RunObject = Page 251;
                                RunPageView = WHERE(Template Type=CONST(General),
                                    Recurring=CONST(No));
            }
            action("Direct Debit Collections")
            {
                Caption = 'Direct Debit Collections';
                RunObject = Page 1207;
            }
        }
        area(sections)
        {
            group("Posted Documents")
            {
                Caption = 'Posted Documents';
                Image = FiledPosted;
                action("Posted Sales Shipments")
                {
                    Caption = 'Posted Sales Shipments';
                    Image = PostedShipment;
                    RunObject = Page 142;
                }
                action("Posted Sales Invoices")
                {
                    Caption = 'Posted Sales Invoices';
                    Image = PostedOrder;
                    RunObject = Page 143;
                }
                action("Posted Return Receipts")
                {
                    Caption = 'Posted Return Receipts';
                    Image = PostedReturnReceipt;
                    RunObject = Page 6662;
                }
                action("Posted Sales Credit Memos")
                {
                    Caption = 'Posted Sales Credit Memos';
                    Image = PostedOrder;
                    RunObject = Page 144;
                }
                action("Posted Purchase Invoices")
                {
                    Caption = 'Posted Purchase Invoices';
                    RunObject = Page 146;
                }
                action("Posted Purchase Credit Memos")
                {
                    Caption = 'Posted Purchase Credit Memos';
                    RunObject = Page 147;
                }
                action("Issued Reminders")
                {
                    Caption = 'Issued Reminders';
                    Image = OrderReminder;
                    RunObject = Page 440;
                }
                action("Issued Fin. Charge Memos")
                {
                    Caption = 'Issued Fin. Charge Memos';
                    Image = PostedMemo;
                    RunObject = Page 452;
                }
                action("G/L Registers")
                {
                    Caption = 'G/L Registers';
                    Image = GLRegisters;
                    RunObject = Page 116;
                }
            }
        }
        area(processing)
        {
            separator(New)
            {
                Caption = 'New';
                IsHeader = true;
            }
            action("C&ustomer")
            {
                Caption = 'C&ustomer';
                Image = Customer;
                Promoted = false;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                RunObject = Page 21;
                                RunPageMode = Create;
            }
            group("&Sales")
            {
                Caption = '&Sales';
                Image = Sales;
                action("Sales &Order")
                {
                    Caption = 'Sales &Order';
                    Image = Document;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    RunObject = Page 42;
                                    RunPageMode = Create;
                }
                action("Sales &Invoice")
                {
                    Caption = 'Sales &Invoice';
                    Image = Invoice;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    RunObject = Page 43;
                                    RunPageMode = Create;
                }
                action("Sales &Credit Memo")
                {
                    Caption = 'Sales &Credit Memo';
                    Image = CreditMemo;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    RunObject = Page 44;
                                    RunPageMode = Create;
                }
                action("Sales &Fin. Charge Memo")
                {
                    Caption = 'Sales &Fin. Charge Memo';
                    Image = FinChargeMemo;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    RunObject = Page 446;
                                    RunPageMode = Create;
                }
                action("Sales &Reminder")
                {
                    Caption = 'Sales &Reminder';
                    Image = Reminder;
                    Promoted = false;
                    //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                    //PromotedCategory = Process;
                    RunObject = Page 434;
                                    RunPageMode = Create;
                }
            }
            separator(Tasks)
            {
                Caption = 'Tasks';
                IsHeader = true;
            }
            action("Cash Receipt &Journal")
            {
                Caption = 'Cash Receipt &Journal';
                Image = CashReceiptJournal;
                RunObject = Page 255;
            }
            separator()
            {
            }
            action("Combine Shi&pments")
            {
                Caption = 'Combine Shi&pments';
                Ellipsis = true;
                Image = "Action";
                RunObject = Report 295;
            }
            action("Combine Return S&hipments")
            {
                Caption = 'Combine Return S&hipments';
                Ellipsis = true;
                Image = "Action";
                RunObject = Report 6653;
            }
            action("Create Recurring Invoices")
            {
                Caption = 'Create Recurring Invoices';
                Ellipsis = true;
                Image = CreateDocument;
                RunObject = Report 172;
            }
            separator(Administration)
            {
                Caption = 'Administration';
                IsHeader = true;
            }
            action("Sales && Recei&vables Setup")
            {
                Caption = 'Sales && Recei&vables Setup';
                Image = Setup;
                RunObject = Page 459;
            }
            separator(History)
            {
                Caption = 'History';
                IsHeader = true;
            }
            action("Navi&gate")
            {
                Caption = 'Navi&gate';
                Image = Navigate;
                RunObject = Page 344;
            }
        }
    }
}

