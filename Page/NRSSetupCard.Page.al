page 50000 "NRS Setup"
{
    ApplicationArea = All;
    Caption = 'NRS Setup';
    PageType = Card;
    SourceTable = "NRS Setup";
    UsageCategory = Administration;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field("Sales Invoice Url"; Rec."Sales Invoice Url")
                {
                    ToolTip = 'Specifies the value of the Sales Invoice Url field.', Comment = '%';
                    MultiLine = true;
                }
                field("Service Invoice Url"; Rec."Service Invoice Url")
                {
                    ToolTip = 'Specifies the value of the Service Invoice Url field.', Comment = '%';
                    MultiLine = true;
                }
                field("Supplier Key"; Rec."Supplier Key")
                {
                    ToolTip = 'Specifies the value of the Supplier Key field.', Comment = '%';
                }
            }
        }
    }
    actions
    {
        area(Navigation)
        {
            action(Initialize)
            {
                Image = Insert;
                Caption = 'Initialize Setup';
                ApplicationArea = All;

                trigger OnAction()
                var
                    NRSSetup: Record "NRS Setup";
                begin
                    NRSSetup.SetRange("Primary Key");
                    if NRSSetup.FindFirst() then
                        exit;

                    Rec.Init();
                    Rec."Primary Key" := '';
                    Rec.Insert();
                end;
            }
        }
    }
}
