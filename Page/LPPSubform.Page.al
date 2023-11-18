page 70191 "LPP Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = Table70019;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Document No."; "Document No.")
                {
                }
                field("Order Type"; "Order Type")
                {
                }
                field("Item No"; "Item No")
                {
                }
                field("Item Name"; "Item Name")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field("Quantity Available"; "Quantity Available")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                }
                field(Amount; Amount)
                {
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
            }
        }
    }

    actions
    {
    }

    var
        IncomingDocument: Record 130;

    [Scope('Internal')]
    procedure GetIncomingDocumentURL(): Text[1000]
    var
        IncomingDocument: Record 130;
    begin
        IF "Incoming Document Entry No." = 0 THEN
            EXIT('');

        IncomingDocument.GET("Incoming Document Entry No.");
        EXIT(IncomingDocument.GetURL);
    end;
}

