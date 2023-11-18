page 70090 "Labour and Operations List"
{
    Caption = 'Service List';
    CardPageID = "Labour and Operation Card";
    DataCaptionFields = "Document Type", "No.";
    Editable = false;
    PageType = List;
    SourceTable = Table5900;
    SourceTableView = WHERE (Document Type=FILTER(Order));

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Status;Status)
                {
                }
                field("Document Type";"Document Type")
                {
                }
                field("No.";"No.")
                {
                }
                field("Order Date";"Order Date")
                {
                }
                field("Order Time";"Order Time")
                {
                }
                field("Customer No.";"Customer No.")
                {
                }
                field("Ship-to Code";"Ship-to Code")
                {
                }
                field(Name;Name)
                {
                }
                field("Location Code";"Location Code")
                {
                }
                field("Response Date";"Response Date")
                {
                    Visible = "Response DateVisible";
                }
                field("Response Time";"Response Time")
                {
                    Visible = "Response TimeVisible";
                }
                field(Priority;Priority)
                {
                }
                field("Shortcut Dimension 1 Code";"Shortcut Dimension 1 Code")
                {
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(1);
                    end;
                }
                field("Shortcut Dimension 2 Code";"Shortcut Dimension 2 Code")
                {
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(2);
                    end;
                }
                field("Assigned User ID";"Assigned User ID")
                {
                }
            }
        }
        area(factboxes)
        {
            systempart(;Links)
            {
                Visible = false;
            }
            systempart(;Notes)
            {
                Visible = false;
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Line")
            {
                Caption = '&Line';
                Image = Line;
                action(Card)
                {
                    Caption = 'Card';
                    Image = EditLines;
                    ShortCutKey = 'Shift+F7';

                    trigger OnAction()
                    begin
                        CASE "Document Type" OF
                          "Document Type"::Quote:
                            PAGE.RUN(PAGE::"Service Quote",Rec);
                          "Document Type"::Order:
                            PAGE.RUN(PAGE::"Service Order",Rec);
                          "Document Type"::Invoice:
                            PAGE.RUN(PAGE::"Service Invoice",Rec);
                          "Document Type"::"Credit Memo":
                            PAGE.RUN(PAGE::"Service Credit Memo",Rec);
                        END;
                    end;
                }
            }
        }
    }

    trigger OnInit()
    begin
        "Response TimeVisible" := TRUE;
        "Response DateVisible" := TRUE;
    end;

    trigger OnOpenPage()
    begin
        IF "Document Type" = "Document Type"::Order THEN BEGIN
          "Response DateVisible" := TRUE;
          "Response TimeVisible" := TRUE;
        END ELSE BEGIN
          "Response DateVisible" := FALSE;
          "Response TimeVisible" := FALSE;
        END;
    end;

    var
        DimMgt: Codeunit "408";
        [InDataSet]
        "Response DateVisible": Boolean;
        [InDataSet]
        "Response TimeVisible": Boolean;
}

