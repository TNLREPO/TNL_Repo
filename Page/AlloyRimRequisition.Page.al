page 50390 "Alloy Rim Requisition"
{
    PageType = Card;
    SourceTable = "Stores Requisition Header.";
    SourceTableView = SORTING("No.", Type) WHERE(Type = filter('Issue'));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; Rec."No.")
                {
                    Editable = false;
                }
                field("Global Dimension 1 Code"; Rec."Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; Rec."Global Dimension 2 Code")
                {
                }
                field(Date; Rec.Date)
                {
                }
            }
            part(SalesReqLines; "Stores Req. Subform")
            {
                SubPageLink = "Document No." = FIELD("No."), "Document Type" = FIELD(Type);
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(NewRequisition)
            {
                Caption = '&New Req.';
                Promoted = true;
                PromotedCategory = Process;
                Visible = NewRequisitionVisible;

                trigger OnAction()
                begin
                    storeReqHead.INIT;
                    Rec := storeReqHead;
                    NEWREQ;
                    Rec.Type := Doctype;
                    Rec.INSERT(TRUE);


                end;
            }
            action(CreateIssue)
            {
                Caption = 'Issue Alloy';
                Promoted = true;
                PromotedCategory = Process;
                Visible = CreateIssueVisible;

                trigger OnAction()
                begin

                    IF NOT CONFIRM('Are you Sure you want to Issue Alloy?') THEN
                        EXIT;
                    Rec.CreateIssueAlloy;

                    StoreReqHeader := Rec;
                    IF Rec.Type = Rec.Type::Issue THEN
                        StoreReqHeader.Type := StoreReqHeader.Type::"Posted Issue";
                    IF Rec.Type = Rec.Type::Return THEN
                        StoreReqHeader.Type := StoreReqHeader.Type::"Posted Return";

                    StoreReqHeader."Date Issued" := TODAY;
                    StoreReqHeader.INSERT;
                    // copy lines to posted entry
                    StoreReqLine.SETRANGE(StoreReqLine."Document Type", Rec.Type);
                    StoreReqLine.SETRANGE(StoreReqLine."Document No.", Rec."No.");
                    StoreReqLine.FindFirst();
                    REPEAT
                        StoreReqLine2 := StoreReqLine;
                        StoreReqLine2."Document Type" := StoreReqHeader.Type;
                        StoreReqLine2.INSERT;
                    UNTIL StoreReqLine.NEXT = 0;

                    // delete req.
                    StoreReqLine.DELETEALL;
                    Rec.DELETE;
                end;
            }
            action(Print)
            {
                Caption = '&Print';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                Visible = PrintVisible;
                trigger OnAction()
                begin

                end;
            }
        }
    }

    trigger OnInit()
    begin
        NewRequisitionVisible := TRUE;
        CreateIssueVisible := TRUE;
        PrintVisible := TRUE;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        NEWREQ;
    end;

    trigger OnOpenPage()
    begin
        Rec.FILTERGROUP(3);

        "Doc. Type" := Rec.GETFILTER(Type);
        CASE "Doc. Type" OF
            'Issue':
                Doctype := 0;
            'Return':
                Doctype := 1;
        END;
        Rec.SETRANGE(Type, Doctype);
        Rec.FILTERGROUP(2);

        IF Rec.Type > 1 THEN BEGIN
            CurrPage.EDITABLE := FALSE;
            PrintVisible := TRUE;
            CreateIssueVisible := FALSE;
            NewRequisitionVisible := FALSE;
        END
        ELSE BEGIN
            CurrPage.EDITABLE := TRUE;
            PrintVisible := TRUE;
            CreateIssueVisible := TRUE;
            NewRequisitionVisible := TRUE;
        END;


        InvtSetup.GET;
        IF UserRec.GET(USERID) THEN BEGIN
            IF InvtSetup."Material Requisition Nos" <> '' THEN
                Noseriesrec.GET(InvtSetup."Alloy Rim Requisition Nos") ELSE
                ERROR('Please specify requistion no. series!');
            NoseriesLinerec.SETRANGE(NoseriesLinerec."Series Code", Noseriesrec.Code);
            IF NOT NoseriesLinerec.FIND('-') THEN ERROR('No Series is not specified!');

        END;

    end;

    var
        StoreReqHeader: Record 50101;
        StoreReqLine: Record 50102;
        StoreReqLine2: Record 50102;
        UserRec: Record 91;
        InvtSetup: Record 313;
        NoSeriesMgt: Codeunit 396;
        Noseriesrec: Record 308;
        NoseriesLinerec: Record 309;
        storeReqHead: Record 50101;
        DepartmentRec: Record 349;
        operationType: Integer;
        Doctype: Option;
        "Doc. Type": Text[30];
        PrintVisible: Boolean;
        CreateIssueVisible: Boolean;
        NewRequisitionVisible: Boolean;


    procedure NEWREQ()
    begin
        InvtSetup.GET;
        IF Rec."No." = '' THEN BEGIN
            InvtSetup.TESTFIELD(InvtSetup."Alloy Rim Requisition Nos");

            NoSeriesMgt.InitSeries(InvtSetup."Alloy Rim Requisition Nos", InvtSetup."Alloy Rim Requisition Nos", 0D, Rec."No.",
            InvtSetup."Alloy Rim Requisition Nos");

        END;
    end;
}

