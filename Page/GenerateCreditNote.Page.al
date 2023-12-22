page 70189 "Generate Credit Note"
{
    CardPageID = "Warranty Claim card";
    PageType = List;
    SourceTable = "Warranty Claim Header";
    SourceTableView = WHERE("Labour Claim Approved" = FILTER(True),
                            "Material Claim Approved" = FILTER(True),
                            "Replace Dealer Material Claim" = FILTER(True),
                            "Claim Refund by TMC" = FILTER(True),
                            "Claim Settle by TNL" = FILTER(False),
                            "Warranty Closed" = FILTER(True));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Claim No."; Rec."Claim No.")
                {
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                }
                field("TWC No."; Rec."TWC No.")
                {
                }
                field("Settlement Report No."; Rec."Settlement Report No.")
                {
                }
                field("Dealer Code"; Rec."Dealer Code")
                {
                }
                field("Dealer Name"; Rec."Dealer Name")
                {
                }
                field("Process Date"; Rec."Process Date")
                {
                }
                field("Total Material Claim cost"; Rec."Total Material Claim cost")
                {
                }
                field("Total Labour Claim"; Rec."Total Labour Claim")
                {
                }
                field("Part Refunded by TMC(LCY)"; Rec."Mat Amt Refunded by TMC(LCY)")
                {
                }
                field("LaborAmt  Refunded by TMC(LCY)"; Rec."LaborAmt  Refunded by TMC(LCY)")
                {
                }
                field("Vehicle Identification No."; Rec."Vehicle Identification No.")
                {
                }
                field("Model Year"; Rec."Model Year")
                {
                }
                field("Delivery Date"; Rec."Delivery Date")
                {
                }
                field("Odometer Reading"; Rec."Odometer Reading")
                {
                }
                field("Part Refunded by TMC(FCY)"; Rec."Mat Amt Refunded by TMC(FCY)")
                {
                }
                field("Labor Amt Refunded by TMC(FCY)"; Rec."Labor Amt Refunded by TMC(FCY)")
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
                    WarrantyClaim.SETRANGE(Rec."Labour Claim Approved", TRUE);
                    WarrantyClaim.SETRANGE(Rec."Material Claim Approved", TRUE);
                    WarrantyClaim.SETRANGE(Rec."Replace Dealer Material Claim", TRUE);
                    WarrantyClaim.SETRANGE(Rec."Claim Refund by TMC", TRUE);
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
        WarrantyClaim: Record 50038;
        SettlementReport: Report "50608";
}

