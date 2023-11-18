page 50205 "Stores Requisition Card"
{
    PageType = Card;
    SourceTable = Table50101;
    SourceTableView = SORTING (No., Type)
                      WHERE (Type = CONST (Issue));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    Editable = false;
                }
                field(Date; Date)
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Fixed Assets No."; "Fixed Assets No.")
                {
                }
                field("FA Description"; "FA Description")
                {
                }
                field("Maintenance Code"; "Maintenance Code")
                {
                }
                field("User/ Drivers Name"; "User/ Drivers Name")
                {
                }
                field("Registration No."; "Registration No.")
                {
                }
                field("Total Amount"; "Total Amount")
                {
                }
                field("COF No"; "COF No")
                {
                }
            }
            part("Requisition Lines"; 50206)
            {
                SubPageLink = Document No.=FIELD(No.),
                              Document Type=FIELD(Type);
            }
            group("Alloy Wheel")
            {
                Caption = 'Alloy Wheel';
                field("Invoice No.";"Invoice No.")
                {
                }
                field("Waybill No.";"Waybill No.")
                {
                    Editable = false;
                }
                field("Waybill Date";"Waybill Date")
                {
                    Editable = false;
                }
                field("Dealer Name";"Dealer Name")
                {
                    Editable = false;
                }
                field(Description;Description)
                {
                }
                field(Description2;Description2)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("New Requistion")
            {
                Caption = 'New Requistion';
                Image = NewDocument;
                Promoted = true;

                trigger OnAction()
                begin
                    storeReqHead.INIT;
                    Rec := storeReqHead;
                    NEWREQ;
                    Type := Doctype;
                    INSERT(TRUE);
                    /*IF UserRec.GET("User ID") THEN
                    BEGIN
                    VALIDATE("Global Dimension 1 Code",UserRec."Department Code");
                    MODIFY;
                    END;*/

                end;
            }
            action("Alloy New Requisition")
            {
                Caption = 'Alloy New Requisition';
                Image = NewDocument;
                Promoted = true;

                trigger OnAction()
                begin
                    storeReqHead.INIT;
                    Rec := storeReqHead;
                    ALLOYNEWREQ;
                    Type := Doctype;
                    INSERT(TRUE);
                    /*IF UserRec.GET("User ID") THEN
                    BEGIN
                    VALIDATE("Global Dimension 1 Code",UserRec."Department Code");
                    MODIFY;
                    END;*/

                end;
            }
            action(CreateIssue)
            {
                Caption = 'Notify &Store';
                Image = Allocate;
                //The property 'PromotedCategory' can only be set if the property 'Promoted' is set to 'true'
                //PromotedCategory = Process;
                Visible = CreateIssueVisible;

                trigger OnAction()
                begin
                    IF NOT CONFIRM('Are you sure that you want to notify stores?') THEN
                      EXIT;

                    CreateIssueAlloy;

                    StoreReqHeader := Rec;
                    IF Type = Type::Issue THEN
                      StoreReqHeader.Type := StoreReqHeader.Type::"Posted Issue";
                    IF Type = Type::Return  THEN
                      StoreReqHeader.Type := StoreReqHeader.Type::"Posted Return";

                    StoreReqHeader."Date Issued" := TODAY;
                    StoreReqHeader.INSERT;

                    // copy lines to posted entry
                    StoreReqLine.SETRANGE(StoreReqLine."Document Type",Type);
                    StoreReqLine.SETRANGE(StoreReqLine."Document No.","No.");
                    StoreReqLine.FINDFIRST;
                    REPEAT
                      StoreReqLine2 := StoreReqLine;
                      StoreReqLine2."Document Type" := StoreReqHeader.Type;
                      StoreReqLine2.INSERT;
                    UNTIL StoreReqLine.NEXT = 0;

                    // delete req.
                    StoreReqLine.DELETEALL;
                    DELETE;
                end;
            }
            action("Print Alloy Rims")
            {
                Caption = 'Print Alloy Rims';
                Image = Print;
                Promoted = true;

                trigger OnAction()
                begin
                    StoreReqHeader.SETRANGE(StoreReqHeader."No.","No.");
                    IF StoreReqHeader.FINDFIRST THEN
                      REPORT.RUNMODAL(50385,TRUE,TRUE,StoreReqHeader);
                end;
            }
        }
    }

    trigger OnInit()
    begin
        CreateIssueVisible := TRUE;
        PrintVisible := TRUE;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        NEWREQ;
    end;

    trigger OnOpenPage()
    begin
        FILTERGROUP(3);

        "Doc. Type" := GETFILTER(Type);
         CASE "Doc. Type" OF
         'Issue' : Doctype := 0;
         'Return': Doctype := 1;
        END;
        SETRANGE(Type,Doctype);
        FILTERGROUP(2);

          IF Type > 1 THEN
          BEGIN
            CurrPage.EDITABLE := FALSE;
            PrintVisible :=TRUE;
            CreateIssueVisible := FALSE;
          END
          ELSE
          BEGIN
            CurrPage.EDITABLE := TRUE;
            PrintVisible :=TRUE;
            CreateIssueVisible := TRUE;
          END;


        InvtSetup.GET;
        IF UserRec.GET(USERID) THEN
        BEGIN
        IF InvtSetup."Material Requisition Nos" <>'' THEN
        Noseriesrec.GET(InvtSetup."Material Requisition Nos") ELSE ERROR('Please specify requistion no. series!');
        NoseriesLinerec.SETRANGE(NoseriesLinerec."Series Code",Noseriesrec.Code);
        IF NOT NoseriesLinerec.FIND('-') THEN ERROR('No Series is not specified!');
        END;
    end;

    var
        StoreReqHeader: Record "50101";
        StoreReqLine: Record "50102";
        StoreReqLine2: Record "50102";
        UserRec: Record "91";
        InvtSetup: Record "313";
        NoSeriesMgt: Codeunit "396";
        Noseriesrec: Record "308";
        NoseriesLinerec: Record "309";
        storeReqHead: Record "50101";
        DepartmentRec: Record "349";
        operationType: Integer;
        Doctype: Option;
        "Doc. Type": Text[30];
        [InDataSet]
        PrintVisible: Boolean;
        [InDataSet]
        CreateIssueVisible: Boolean;

    [Scope('Internal')]
    procedure NEWREQ()
    begin
        InvtSetup.GET;
        IF "No." = '' THEN BEGIN
          InvtSetup.TESTFIELD(InvtSetup."Material Requisition Nos");

          NoSeriesMgt.InitSeries(InvtSetup."Material Requisition Nos",InvtSetup."Material Requisition Nos",0D,"No.",
          InvtSetup."Material Requisition Nos");
         "Workshop Document" := TRUE;
        END;
    end;

    [Scope('Internal')]
    procedure ALLOYNEWREQ()
    begin
        InvtSetup.GET;
        IF "No." = '' THEN BEGIN
          InvtSetup.TESTFIELD(InvtSetup."Alloy Rim Requisition Nos");
          NoSeriesMgt.InitSeries(InvtSetup."Alloy Rim Requisition Nos",InvtSetup."Alloy Rim Requisition Nos",0D,"No.",
          InvtSetup."Alloy Rim Requisition Nos");
         "Workshop Document" := TRUE;
        END;
    end;
}

