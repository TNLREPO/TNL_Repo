page 70189 "Generate Credit Note"
{
    CardPageID = "Warranty Claim card";
    PageType = List;
    SourceTable = Table50038;
    SourceTableView = WHERE (Labour Claim Approved=CONST(Yes),
                            Material Claim Approved=CONST(Yes),
                            Replace Dealer Material Claim=CONST(Yes),
                            Claim Refund by TMC=CONST(Yes),
                            Claim Settle by TNL=CONST(No),
                            Warranty Closed=CONST(Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Claim No."; "Claim No.")
                {
                }
                field("Invoice No."; "Invoice No.")
                {
                }
                field("TWC No."; "TWC No.")
                {
                }
                field("Settlement Report No."; "Settlement Report No.")
                {
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
                field("Total Material Claim cost"; "Total Material Claim cost")
                {
                }
                field("Total Labour Claim"; "Total Labour Claim")
                {
                }
                field("Part Refunded by TMC(LCY)"; "Mat Amt Refunded by TMC(LCY)")
                {
                }
                field("LaborAmt  Refunded by TMC(LCY)"; "LaborAmt  Refunded by TMC(LCY)")
                {
                }
                field("Vehicle Identification No."; "Vehicle Identification No.")
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
                field("Part Refunded by TMC(FCY)"; "Mat Amt Refunded by TMC(FCY)")
                {
                }
                field("Labor Amt Refunded by TMC(FCY)"; "Labor Amt Refunded by TMC(FCY)")
                {
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("Settlement Report")
            {
                Caption = 'Settlement Report';
                Ellipsis = true;
                Image = Print;
                Promoted = true;

                trigger OnAction()
                begin
                    MESSAGE('Settlement Report was Successfully Generated');
                    WarrantyClaim.SETRANGE("Labour Claim Approved", TRUE);
                    WarrantyClaim.SETRANGE("Material Claim Approved", TRUE);
                    WarrantyClaim.SETRANGE("Replace Dealer Material Claim", TRUE);
                    WarrantyClaim.SETRANGE("Claim Refund by TMC", TRUE);
                    IF WarrantyClaim.FINDSET THEN BEGIN
                        REPEAT
                            WarrantyClaim."Claim Settle by TNL" := TRUE;
                            WarrantyClaim.MODIFY;
                        UNTIL WarrantyClaim.NEXT = 0;
                    END;


                    // WarrantyClaim.SETRANGE(WarrantyClaim."Settlement Report No.","Settlement Report No.");
                    // IF WarrantyClaim.FINDSET THEN BEGIN
                    //  REPORT.RUNMODAL(50608,TRUE,TRUE,WarrantyClaim);
                    //END;



                    //IOURegister2.SETRANGE("Final Apprv. Status",2);
                    //IOURegister2.SETRANGE(Treated,FALSE);
                    //IF IOURegister2.FINDSET THEN
                    //  REPEAT
                    //    IOURegister2.Treated:=TRUE;
                    //    IOURegister2.MODIFY;
                    //  UNTIL IOURegister2.NEXT = 0;
                    //END;
                    //IOURec.SETRANGE(IOURec."IOU No.","IOU No.");
                    //IF IOURec.FINDFIRST THEN BEGIN
                    //  IOUReport.SETTABLEVIEW(IOURec);
                    //  IOUReport.RUN;
                    //END;
                    //ReqRec.SETRANGE(ReqRec."Document Type","Document Type");
                    //ReqRec.SETRANGE(ReqRec."No.","No.");
                    //IF ReqRec.FINDFIRST THEN BEGIN
                    //  IF ReqRec."Multiple Balance Account" OR ReqRec."Multiple Account" THEN
                    //  REPORT.RUNMODAL(50006,TRUE,TRUE,ReqRec) ELSE
                    //  REPORT.RUNMODAL(50003,TRUE,TRUE,ReqRec);
                    //END;
                end;
            }
        }
    }

    var
        WarrantyClaim: Record "50038";
        SettlementReport: Report "50608";
}

