page 50374 "Job Status"
{
    Caption = 'Job Status';
    CardPageID = "Labour and Operation Card";
    DataCaptionFields = "Document Type", "No.";
    PageType = List;
    SourceTable = "Service Header";
    SourceTableView = WHERE (Posted = filter (false));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Status;Rec. Status)
                {
                }
                field("No.";Rec. "No.")
                {
                }
                field("Vehicle Registration No.";Rec."Vehicle Registration No.")
                {
                }
                field(Model;Rec.Model)
                {
                }
                field(Chassis;Rec.Chassis)
                {
                }
                field("Engine No.";Rec."Engine No.")
                {
                }
                field(Make;Rec.Make)
                {
                }
                field("Odometer Reading Reception";Rec."Odometer Reading Reception")
                {
                }
                field("Order Date";Rec."Order Date")
                {
                }
                field("Order Time";Rec."Order Time")
                {
                }
                field("Customer No.";Rec."Customer No.")
                {
                }
                field("Ship-to Code";Rec."Ship-to Code")
                {
                }
                field(Name;Rec.Name)
                {
                }
                field("Response Date";Rec."Response Date")
                {
                    Visible = "Response DateVisible";
                }
                field("Response Time";Rec."Response Time")
                {
                    Visible = "Response TimeVisible";
                }
                field("Starting Date";Rec."Starting Date")
                {
                }
                field("Starting Time";Rec."Starting Time")
                {
                }
                field("Finishing Date";Rec."Finishing Date")
                {
                }
                field("Finishing Time";Rec."Finishing Time")
                {
                }
                field("Location Code";Rec."Location Code")
                {
                }
                field("Shortcut Dimension 1 Code";Rec."Shortcut Dimension 1 Code")
                {
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(1);
                    end;
                }
                field("Shortcut Dimension 2 Code";Rec."Shortcut Dimension 2 Code")
                {
                    Visible = false;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        DimMgt.LookupDimValueCodeNoUpdate(2);
                    end;
                }
                field("Assigned User ID";Rec."Assigned User ID")
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
        IF Rec."Document Type" = Rec."Document Type"::Order THEN BEGIN
            "Response DateVisible" := TRUE;
            "Response TimeVisible" := TRUE;
        END ELSE BEGIN
            "Response DateVisible" := FALSE;
            "Response TimeVisible" := FALSE;
        END;
    end;

    var
        DimMgt: Codeunit 408;
        [InDataSet]
        "Response DateVisible": Boolean;
        [InDataSet]
        "Response TimeVisible": Boolean;
}

