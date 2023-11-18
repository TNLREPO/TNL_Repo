page 50161 "Warranty Claim card"
{
    CardPageID = "Warrantee Claim Subform";
    PageType = Card;
    SourceTable = Table50038;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Claim No."; "Claim No.")
                {

                    trigger OnAssistEdit()
                    begin
                        AssistEdit(xRec);
                        CurrPage.UPDATE;
                    end;
                }
                field("Dealer Code"; "Dealer Code")
                {
                }
                field("Dealer Name"; "Dealer Name")
                {
                }
                field("Process Date"; "Process Date")
                {
                }
                field("Vehicle Identification No."; "Vehicle Identification No.")
                {
                }
                field("Owners Name"; "Owners Name")
                {
                }
                field("Vehicle Engine No."; "Vehicle Engine No.")
                {
                }
                field("Vehicle Model"; "Vehicle Model")
                {
                }
                field("Model Year"; "Model Year")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Odometer Reading"; "Odometer Reading")
                {
                }
                field("Settlement Report No."; "Settlement Report No.")
                {
                }
                field("SRN Date"; "SRN Date")
                {
                }
                field("Under Warranty"; "Under Warranty")
                {
                }
                field("Warranty Expired"; "Warranty Expired")
                {
                    Style = StandardAccent;
                    StyleExpr = TRUE;
                }
                field("Warranty Claim Exist"; "Warranty Claim Exist")
                {
                }
                field("Warranty Expired Date"; "Warranty Expired Date")
                {
                }
                field("TWC No."; "TWC No.")
                {
                }
                field("Total Material Claim cost"; "Total Material Claim cost")
                {
                }
                field("Total Labour Claim"; "Total Labour Claim")
                {
                }
                field("Warranty Refund Account"; "Warranty Refund Account")
                {
                }
                field("Mat Amt Refunded by TMC(FCY)"; "Mat Amt Refunded by TMC(FCY)")
                {
                }
                field("Labor Amt Refunded by TMC(FCY)"; "Labor Amt Refunded by TMC(FCY)")
                {
                }
                field("Labour Charge accepted by TMC"; "Labour Charge accepted by TMC")
                {
                }
                field("Batch No."; "Batch No.")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                }
                field("Material Claim Approved"; "Material Claim Approved")
                {
                }
                field("Replace Dealer Material Claim"; "Replace Dealer Material Claim")
                {
                }
                field("Labour Claim Approved"; "Labour Claim Approved")
                {
                }
                field("Refund Dealer Labour Claim"; "Refund Dealer Labour Claim")
                {
                }
                field("Claim Materials Posted"; "Claim Materials Posted")
                {
                }
                field("Claim Charges Posted"; "Claim Charges Posted")
                {
                }
                field("Department Code"; "Department Code")
                {
                }
                field("Branch Code"; "Branch Code")
                {
                }
                field("Claim Approved by TNL"; "Claim Approved by TNL")
                {
                }
                field("Claim Refund by TMC"; "Claim Refund by TMC")
                {
                }
                field("Claim Settled by TMC"; "Claim Settled by TMC")
                {
                }
                field("Warranty Closed"; "Warranty Closed")
                {
                    Editable = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
            }
            part("<ConWarranty Claims"; 50162)
            {
                SubPageLink = Claim No.=FIELD(Claim No.),
                              Vehicle identification Number=FIELD(Vehicle Identification No.);
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Print Picking List")
            {
                Caption = 'Print Picking List';
                Promoted = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                begin
                    recrep.SETRANGE(recrep."Claim No.","Claim No.");
                    IF recrep.FIND('-') THEN
                    REPORT.RUNMODAL(50254,TRUE,TRUE,recrep);
                end;
            }
            action("Print Picking List.")
            {
                Caption = 'Print Picking List.';
                Promoted = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                begin
                    recrep.SETRANGE(recrep."Claim No.","Claim No.");
                    IF recrep.FIND('-') THEN
                    REPORT.RUNMODAL(50237,TRUE,TRUE,recrep);
                end;
            }
            action("Print Invoice")
            {
                Caption = 'Print Invoice';
                Promoted = true;
                PromotedCategory = Process;
                Visible = false;

                trigger OnAction()
                begin
                    recrep.SETRANGE(recrep."Claim No.","Claim No.");
                    IF recrep.FIND('-') THEN
                    REPORT.RUNMODAL(50229,TRUE,TRUE,recrep);
                end;
            }
            group("Pri&nt")
            {
                Caption = 'Pri&nt';
                action("Picking List")
                {
                    Caption = 'Picking List';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;

                    trigger OnAction()
                    begin
                        recrep.SETRANGE(recrep."Claim No.","Claim No.");
                        IF recrep.FIND('-') THEN
                        REPORT.RUNMODAL(50237,TRUE,TRUE,recrep);
                    end;
                }
                action("Print Invoice")
                {
                    Caption = 'Print Invoice';
                    Ellipsis = true;
                    Image = Print;
                    Promoted = true;

                    trigger OnAction()
                    begin
                        recrep.SETRANGE(recrep."Claim No.","Claim No.");
                        IF recrep.FIND('-') THEN
                        REPORT.RUNMODAL(50229,TRUE,TRUE,recrep);
                    end;
                }
            }
        }
    }

    var
        recrep: Record "50038";
}

