page 50168 "Closed Warranty Claim card"
{
    InsertAllowed = false;
    PageType = Card;
    SourceTable = Table50038;
    SourceTableView = WHERE (Warranty Closed=CONST(Yes));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Claim No."; "Claim No.")
                {
                    Editable = false;

                    trigger OnAssistEdit()
                    begin
                        AssistEdit(xRec);
                        CurrPage.UPDATE;
                    end;
                }
                field("Dealer Code"; "Dealer Code")
                {
                    Editable = false;
                }
                field("Dealer Name"; "Dealer Name")
                {
                    Editable = false;
                }
                field("Process Date"; "Process Date")
                {
                    Editable = false;
                }
                field("Vehicle Identification No."; "Vehicle Identification No.")
                {
                    Editable = false;
                }
                field("Owners Name"; "Owners Name")
                {
                    Editable = false;
                }
                field("Vehicle Engine No."; "Vehicle Engine No.")
                {
                    Editable = false;
                }
                field("Vehicle Model"; "Vehicle Model")
                {
                    Editable = false;
                }
                field("Model Year"; "Model Year")
                {
                    Editable = false;
                }
                field("Delivery Date"; "Delivery Date")
                {
                    Editable = false;
                }
                field("Odometer Reading"; "Odometer Reading")
                {
                    Editable = false;
                }
                field("Settlement Report No."; "Settlement Report No.")
                {
                    Editable = false;
                }
                field("SRN Date"; "SRN Date")
                {
                    Editable = false;
                }
                field("Under Warranty"; "Under Warranty")
                {
                    Editable = false;
                }
                field("Warranty Expired"; "Warranty Expired")
                {
                    Editable = false;
                    Style = StandardAccent;
                    StyleExpr = TRUE;
                }
                field("Warranty Claim Exist"; "Warranty Claim Exist")
                {
                }
                field("Warranty Expired Date"; "Warranty Expired Date")
                {
                }
                field("Date Approved by TNL"; "Date Approved by TNL")
                {
                    Editable = false;
                }
                field("TWC No."; "TWC No.")
                {
                    Editable = false;
                }
                field("Total Material Claim cost"; "Total Material Claim cost")
                {
                }
                field("Total Labour Claim"; "Total Labour Claim")
                {
                }
                field("Warranty Refund Account"; "Warranty Refund Account")
                {
                    Editable = false;
                }
                field("Mat Amt Refunded by TMC(FCY)"; "Mat Amt Refunded by TMC(FCY)")
                {
                    Editable = false;
                }
                field("Labor Amt Refunded by TMC(FCY)"; "Labor Amt Refunded by TMC(FCY)")
                {
                    Editable = false;
                }
                field("Labour Charge accepted by TMC"; "Labour Charge accepted by TMC")
                {
                }
                field("Batch No."; "Batch No.")
                {
                    Editable = false;
                }
                field("Invoice No."; "Invoice No.")
                {
                    Editable = false;
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
                field("Claim Charges Posted"; "Claim Charges Posted")
                {
                }
                field("Claim Materials Posted"; "Claim Materials Posted")
                {
                }
                field("Department Code"; "Department Code")
                {
                    Editable = false;
                }
                field("Branch Code"; "Branch Code")
                {
                    Editable = false;
                }
                field("Claim Refund by TMC"; "Claim Refund by TMC")
                {
                }
                field("Claim Settled by TMC"; "Claim Settled by TMC")
                {
                    Visible = false;
                }
                field("Warranty Closed"; "Warranty Closed")
                {
                    Editable = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
            }
            part("Closed Claim"; 50169)
            {
                Editable = false;
                SubPageLink = Claim No.=FIELD(Claim No.),
                              Vehicle identification Number=FIELD(Vehicle Identification No.);
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("Pri&nt")
            {
                Caption = 'Pri&nt';
                action("Picking List")
                {
                    Caption = 'Picking List';

                    trigger OnAction()
                    begin
                        recrep.SETRANGE(recrep."Claim No.","Claim No.");
                        IF recrep.FIND('-') THEN
                        REPORT.RUNMODAL(50237,TRUE,TRUE,recrep);
                    end;
                }
                separator()
                {
                }
                action("Print Invoice")
                {
                    Caption = 'Print Invoice';

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

