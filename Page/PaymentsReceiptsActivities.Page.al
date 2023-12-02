page 50266 "Payments/Receipts Activities"
{
    PageType = CardPart;
    SourceTable = "Payment-Receipts Cue";

    layout
    {
        area(content)
        {
            cuegroup("Cash Payments")
            {
                Caption = 'Cash Payments';
                field("Pending Cash Requisition"; Rec."Pending Cash Requisition")
                {
                    DrillDownPageID = "Scholarship payment subform";
                    LookupPageID = "Scholarship payment subform";
                }
                field("Posted Cash Requisition"; Rec."Posted Cash Requisition")
                {
                }
                field("Cancelled Cash Requisition"; Rec."Cancelled Cash Requisition")
                {
                }

                actions
                {
                    action("New Cash Payment")
                    {
                        Caption = 'New Cash Payment';
                        RunObject = Page 70015;
                        RunPageMode = Create;
                        RunPageView = WHERE("Document Type" = CONST(Requisition),
                                            "Cash/Cheque" = CONST(Cash),
                                            "Send for Approval" = filter(false));
                    }
                }
            }
            cuegroup("Cheque Payments")
            {
                Caption = 'Cheque Payments';
                field("Pending Cheque Requisition"; Rec."Pending Cheque Requisition")
                {
                }
                field("Posted Cheque Requisition"; Rec."Posted Cheque Requisition")
                {
                }
                field("Cancelled Cheque Requisition"; Rec."Cancelled Cheque Requisition")
                {
                }

                actions
                {
                    action("New Cheque Payment")
                    {
                        Caption = 'New Cheque Payment';
                        RunObject = Page 70016;
                        RunPageMode = Create;
                        RunPageView = WHERE("Document Type" = CONST(Requisition),
                                            "Cash/Cheque" = CONST(Cheque),
                                            "Send for Approval" = filter(false));
                    }
                }
            }
            cuegroup("Cash Receipts")
            {
                Caption = 'Cash Receipts';
                field("Pending Cash Receipts"; Rec."Pending Cash Receipts")
                {
                }
                field("Posted Cash Receipts"; Rec."Posted Cash Receipts")
                {
                }
                field("Cancelled Cash Receipts"; Rec."Cancelled Cash Receipts")
                {
                }

                actions
                {
                    action("New Cash Receipt")
                    {
                        Caption = 'New Cash Receipt';
                        RunObject = Page 70013;
                        RunPageMode = Create;
                        RunPageView = WHERE("Document Type" = CONST(Receipt),
                                            "Cash/Cheque" = CONST(Cash),
                                            "Send for Approval" = filter(false));
                    }
                    action("Print Daily Receipt Report")
                    {
                        Caption = 'Print Daily Receipt Report';
                        RunObject = Report 50418;
                    }
                }
            }
            cuegroup("Cheque Receipts")
            {
                Caption = 'Cheque Receipts';
                field("Pending Cheque Receipts"; Rec."Pending Cheque Receipts")
                {
                }
                field("Posted Cheque Receipts"; Rec."Posted Cheque Receipts")
                {
                }
                field("Cancelled Cheque Receipts"; Rec."Cancelled Cheque Receipts")
                {
                }

                actions
                {
                    action("New Cheque Receipt")
                    {
                        Caption = 'New Cheque Receipt';
                        RunObject = Page 70014;
                        RunPageMode = Create;
                    }
                    action("Print Daily Receipt Report")
                    {
                        Caption = 'Print Daily Receipt Report';
                        RunObject = Report 50418;
                    }
                }
            }
        }
    }

    actions
    {
    }
}

