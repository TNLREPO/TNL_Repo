page 50221 "Retirement Lines"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = ListPart;
    SourceTable = Table50106;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Account Type"; "Account Type")
                {
                }
                field("Account No."; "Account No.")
                {

                    trigger OnValidate()
                    begin
                        AccountNoOnAfterValidate;
                    end;
                }
                field("FA Posting Type"; "FA Posting Type")
                {
                }
                field("Maintenance Code"; "Maintenance Code")
                {
                }
                field(Description; Description)
                {
                }
                field(Amount; Amount)
                {
                    Editable = AmountEditable;

                    trigger OnValidate()
                    begin
                        VALIDATE(Amount);
                        AmountOnAfterValidate;
                    end;
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
                field("IOU No."; "IOU No.")
                {
                    Editable = false;
                }
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        IOURetire.GET("Retirement No.");
        IF (IOURetire."2nd Apprv. Status" = IOURetire."2nd Apprv. Status"::Approved) OR
          (IOURetire."1st Approval to" = 'ADEWUMI') AND (IOURetire."1st Apprv. Status" = IOURetire."1st Apprv. Status"::Approved)
           THEN
            AmountEditable := FALSE;

        IF (IOURetire."2nd Apprv. Status" = IOURetire."2nd Apprv. Status"::Approved) OR
         (IOURetire."1st Approval to" = 'AGBESUA') AND (IOURetire."1st Apprv. Status" = IOURetire."1st Apprv. Status"::Approved)
           THEN
            AmountEditable := FALSE;
    end;

    trigger OnInit()
    begin
        AmountEditable := TRUE;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        IF IOURetire.GET("Retirement No.") THEN
            IF IOURetire."IOU No." <> '' THEN BEGIN
                "IOU No." := IOURetire."IOU No.";
            END;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        IF IOURetire.GET("Retirement No.") THEN
            IF IOURetire."IOU No." <> '' THEN BEGIN
                "IOU No." := IOURetire."IOU No.";
            END;
    end;

    var
        IOURetire: Record "50107";
        [InDataSet]
        AmountEditable: Boolean;

    local procedure AccountNoOnAfterValidate()
    begin
        CurrPage.UPDATE;
    end;

    local procedure AmountOnAfterValidate()
    begin
        VALIDATE(Amount);
    end;
}

