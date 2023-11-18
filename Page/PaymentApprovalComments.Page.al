page 50291 "Payment Approval Comments"
{
    Caption = 'Approval Comments';
    DataCaptionFields = "Document Type", "Document No.";
    DelayedInsert = true;
    DeleteAllowed = false;
    LinksAllowed = false;
    ModifyAllowed = false;
    MultipleNewLines = true;
    PageType = Card;
    SourceTable = Table50137;

    layout
    {
        area(content)
        {
            field(DocNo; DocNo)
            {
                CaptionClass = FORMAT(DocType);
                Editable = false;
            }
            repeater()
            {
                field(Comment; Comment)
                {
                }
                field("User ID"; "User ID")
                {
                }
                field("Date and Time"; "Date and Time")
                {
                }
                field("Entry No."; "Entry No.")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        "Table ID" := NewTableId;
        "Document Type" := NewDocumentType;
        "Document No." := NewDocumentNo;
    end;

    var
        NewTableId: Integer;
        NewDocumentType: Option Initial,"1st Approval","2nd Approval","3rd Approval","Final Approval",Cashier;
        NewDocumentNo: Code[20];
        DocType: Option Initial,"1st Approval","2nd Approval","3rd Approval","Final Approval",Cashier;
        DocNo: Code[20];

    [Scope('Internal')]
    procedure SetUpLine(TableId: Integer; DocumentType: Option Initial,"1st Approval","2nd Approval","3rd Approval","Final Approval",Cashier; DocumentNo: Code[20])
    begin
        NewTableId := TableId;
        NewDocumentType := DocumentType;
        NewDocumentNo := DocumentNo;
    end;

    [Scope('Internal')]
    procedure Setfilters(TableId: Integer; DocumentType: Option Initial,"1st Approval","2nd Approval","3rd Approval","Final Approval",Cashier; DocumentNo: Code[20])
    begin
        IF TableId <> 0 THEN BEGIN
            FILTERGROUP(2);
            SETCURRENTKEY("Table ID", "Document Type", "Document No.");
            SETRANGE("Table ID", TableId);
            SETRANGE("Document Type", DocumentType);
            IF DocumentNo <> '' THEN
                SETRANGE("Document No.", DocumentNo);
            FILTERGROUP(0);
        END;

        DocType := DocumentType;
        DocNo := DocumentNo;
    end;
}

