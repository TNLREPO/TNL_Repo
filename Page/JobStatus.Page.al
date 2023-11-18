page 50374 "Job Status"
{
    Caption = 'Job Status';
    CardPageID = "Labour and Operation Card";
    DataCaptionFields = "Document Type", "No.";
    PageType = List;
    SourceTable = Table5900;
    SourceTableView = WHERE (Posted = CONST (No));

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Status; Status)
                {
                }
                field("No."; "No.")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field(Model; Model)
                {
                }
                field(Chassis; Chassis)
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field(Make; Make)
                {
                }
                field("Odometer Reading Reception"; "Odometer Reading Reception")
                {
                }
                field("Order Date"; "Order Date")
                {
                }
                field("Order Time"; "Order Time")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Ship-to Code"; "Ship-to Code")
                {
                }
                field(Name; Name)
                {
                }
                field("Response Date"; "Response Date")
                {
                    Visible = "Response DateVisible";
                }
                field("Response Time"; "Response Time")
                {
                    Visible = "Response TimeVisible";
                }
                field("Starting Date"; "Starting Date")
                {
                }
                field("Starting Time"; "Starting Time")
                {
                }
                field("Finishing Date"; "Finishing Date")
                {
                }
                field("Finishing Time"; "Finishing Time")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(1);
                    end;
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(2);
                    end;
                }
                field("Assigned User ID"; "Assigned User ID")
                {
                }
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

