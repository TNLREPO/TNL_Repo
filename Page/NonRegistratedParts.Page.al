page 50109 "Non Registrated Parts"
{
    PageType = Card;
    SourceTable = Table50095;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Part No"; "Part No")
                {
                }
                field("Part Description"; "Part Description")
                {
                }
                field("Quantity Demanded"; "Quantity Demanded")
                {
                    Caption = 'Quantity';
                    DecimalPlaces = 0 : 0;
                }
                field("Model Name"; "Model Name")
                {
                }
                field(Urgent; Urgent)
                {
                }
                field(Commited; Commited)
                {
                }
                field("Request Date"; "Request Date")
                {
                }
                field("Time of Request"; "Time of Request")
                {
                }
                field("Stock Type"; "Stock Type")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Frequency of Request"; "Frequency of Request")
                {
                }
                field(Ordered; Ordered)
                {
                }
            }
            group(Details)
            {
                Caption = 'Details';
                field("User ID"; "User ID")
                {
                }
                field("Request by"; "Request by")
                {
                }
                field("Request Customer Name"; "Request Customer Name")
                {
                }
                field("Request Customer Address"; "Request Customer Address")
                {
                }
                field("Request Customer Contact"; "Request Customer Contact")
                {
                }
                field("Request phone"; "Request phone")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field("General Prod Posting Group"; "General Prod Posting Group")
                {
                }
                field("Inventory Posting Group"; "Inventory Posting Group")
                {
                }
                field(Variant; Variant)
                {
                }
                field("Commited Value"; "Commited Value")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group(List)
            {
                Caption = 'List';
                action(List)
                {
                    Caption = 'List';
                    RunObject = Page 50110;
                    ShortCutKey = 'Shift+Ctrl+L';
                }
            }
        }
        area(processing)
        {
            action("Register The Item")
            {
                Caption = 'Register The Item';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    IF CONFIRM('Are You Sure You want to register the Parts? ', FALSE) THEN
                        InsertItem;
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        OnAfterGetCurrRecord;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        //"Entry No":="Entry No"+1;;
        OnAfterGetCurrRecord;
    end;

    local procedure OnAfterGetCurrRecord()
    begin
        xRec := Rec;
        "Request Date" := TODAY;
        // "Entry No":="Entry No"+1;
    end;
}

