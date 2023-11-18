page 50347 "Pending Purchase Requests"
{
    Caption = 'Req. Wksh. Names';
    DataCaptionExpression = DataCaption;
    PageType = List;
    SourceTable = Table245;
    SourceTableView = WHERE (Worksheet Template Name=CONST(REQ.),
                            Request Type=CONST(Parts));

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Name; Name)
                {
                }
                field("COF No."; "COF No.")
                {
                }
                field("Veh. Reg. No."; "Veh. Reg. No.")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field(Description; Description)
                {
                }
                field("No. Of Lines"; "No. Of Lines")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Edit Worksheet")
            {
                Caption = 'Edit Worksheet';
                Image = OpenWorksheet;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                ShortCutKey = 'Return';

                trigger OnAction()
                begin
                    ReqJnlManagement.TemplateSelectionFromBatch(Rec);
                end;
            }
        }
    }

    trigger OnInit()
    begin
        SETRANGE("Worksheet Template Name");
    end;

    var
        ReqJnlManagement: Codeunit "330";

    local procedure DataCaption(): Text[250]
    var
        ReqWkshTmpl: Record 244;
    begin
        IF NOT CurrPage.LOOKUPMODE THEN
            IF GETFILTER("Worksheet Template Name") <> '' THEN
                IF GETRANGEMIN("Worksheet Template Name") = GETRANGEMAX("Worksheet Template Name") THEN
                    IF ReqWkshTmpl.GET(GETRANGEMIN("Worksheet Template Name")) THEN
                        EXIT(ReqWkshTmpl.Name + ' ' + ReqWkshTmpl.Description);
    end;
}

