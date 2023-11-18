page 70062 "Request For Quote Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    DeleteAllowed = true;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = Table70001;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Vendor Name"; "Vendor Name")
                {
                }
                field(Address; Address)
                {
                }
                field(Preferred; Preferred)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Payment Terms"; "Payment Terms")
                {
                }
                field("Advance Payment"; "Advance Payment")
                {
                    Editable = false;
                }
                field(Balance; Balance)
                {
                    Editable = false;
                }
                field("Incoming Document Entry No."; "Incoming Document Entry No.")
                {

                    trigger OnAssistEdit()
                    begin
                        IF "Incoming Document Entry No." > 0 THEN
                            HYPERLINK(GetIncomingDocumentURL);
                    end;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        IncomingDocument.SETRANGE("Entry No.", "Incoming Document Entry No.");
                        IF PAGE.RUNMODAL(0, IncomingDocument) = ACTION::LookupOK THEN
                            "Incoming Document Entry No." := IncomingDocument."Entry No.";
                    end;
                }
                field(Description; Description)
                {
                }
                field(Remark; Remark)
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("View Details")
            {
                Caption = 'View Details';
                Image = ViewDetails;
                RunObject = Page 70121;
                RunPageLink = Document Type=FIELD(Document Type),
                              Document No.=FIELD(Document No.),
                              Capex Line No.=FIELD(Line No.);
            }
            action("Generate LPO")
            {
                Caption = 'Generate LPO';
                Image = CreateFinanceChargememo;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin

                    PaymentRec3.SETRANGE(PaymentRec3."No.","Document No.");
                    PaymentRec3.SETRANGE(PaymentRec3."Adv. Pymt. Required",FALSE);
                    IF PaymentRec3.FINDFIRST THEN
                    //PaymentRec3.TESTFIELD(PaymentRec3."Move to LPO",TRUE);


                     IF PaymentRec3."Proposed Purchase Amount" < 150000 THEN
                        ERROR('You didnt need an LPO this transaction');
                     IF  PaymentRec3."Opex Type" IN [ PaymentRec3."Opex Type"::SLA, PaymentRec3."Opex Type"::SE] THEN
                          ERROR('You do not need an LPO this transaction');

                    LPO.SETRANGE("Purch.Requisition No","Document No.");
                    IF LPO.FINDFIRST THEN
                    ERROR('The LPO has been generated!');

                    IF  CONFIRM(Text001)  THEN BEGIN
                        SETRANGE(Preferred,TRUE);
                       IF FINDFIRST THEN  BEGIN
                         LPO.INIT;
                         LPO."Vendor Name" :="Vendor Name";
                         LPO.Address := Address;
                         LPO.Amount:=Amount;
                         LPO.Description:=Description;
                         LPO."Payment Terms":="Payment Terms";
                         LPO."Capex-Opex No." :="Document No.";
                         LPO."Purch.Requisition No":= "Document No.";
                         "LPO No.":=LPO."LPO No.";
                         LPO.INSERT(TRUE);
                         COMMIT;
                         MESSAGE(Text002);
                         LPO.SETRANGE("Capex-Opex No.","Document No.");
                      IF LPO.FINDFIRST THEN
                        PAGE.RUNMODAL(70142,LPO);
                       END;
                       END;
                end;
            }
        }
    }

    var
        IncomingDocument: Record "130";
        ProcurementLine3: Record "70001";
        PaymentRec3: Record "70008";
        LPO: Record "70010";
        Text001: Label 'Are you sure you want to generate an LPO?';
        Text002: Label 'An LPO has been raised!';
        CapexOpexLine: Record "70001";
        CapexOpexReq: Record "70008";
}

