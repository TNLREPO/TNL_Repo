page 50111 "Warranty Couporn"
{
    AutoSplitKey = true;
    Caption = 'Warranty Couporn';
    CardPageID = "Toyota Warranty Registration";
    DelayedInsert = true;
    Editable = false;
    MultipleNewLines = true;
    PageType = List;
    PopulateAllFields = true;
    SourceTable = Table50022;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Dealer's No."; "Dealer's No.")
                {
                }
                field("Dealer's Name"; "Dealer's Name")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Chassis Number"; "Chassis Number")
                {
                    Editable = false;
                }
                field("Engine  Number"; "Engine  Number")
                {
                }
                field("Ledger No."; "Ledger No.")
                {
                    DrillDownPageID = "Item Tracking Entries Form";
                    LookupPageID = "Item Tracking Entries Form";
                }
                field(VIN; VIN)
                {
                    Editable = false;
                }
                field(Description; Description)
                {
                }
                field("Owner's Name"; "Owner's Name")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Warranty Cop Rec. Date"; "Warranty Cop Rec. Date")
                {
                }
                field(Address; Address)
                {
                }
                field(City; City)
                {
                }
                field("Delay Days"; "Delay Days")
                {
                    Editable = false;
                }
                field("Post Code"; "Post Code")
                {
                }
                field(State; State)
                {
                }
                field("Owner Type"; "Owner Type")
                {
                }
                field("Business Sector"; "Business Sector")
                {
                }
                field("Contact Persons"; "Contact Persons")
                {
                }
                field("Attach FTR"; "Attach FTR")
                {
                    Visible = false;
                }
                field("Attach TWC"; "Attach TWC")
                {
                    Visible = false;
                }
                field("Original Speedometer Rep Date"; "Original Speedometer Rep Date")
                {
                    Visible = false;
                }
                field("Original Speedometer Rep at"; "Original Speedometer Rep at")
                {
                    Visible = false;
                }
                field("Owner Age"; "Owner Age")
                {
                }
                field("Owner Sex"; "Owner Sex")
                {
                }
                field("Driver Name"; "Driver Name")
                {
                }
                field("Mobile Phone"; "Mobile Phone")
                {
                }
                field(Phone; Phone)
                {
                }
                field("Fax Line"; "Fax Line")
                {
                }
                field("Document Type"; "Document Type")
                {
                    Visible = false;
                }
                field("Document Code"; "Document Code")
                {
                    Visible = false;
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Attachment")
            {
                Caption = '&Attachment';
                action(Open)
                {
                    Caption = 'Open';
                    ShortCutKey = 'Return';

                    trigger OnAction()
                    var
                        InteractTemplLanguage: Record "50022";
                    begin
                        IF InteractTemplLanguage.GET(VIN) THEN
                        //  InteractTemplLanguage.OpenAttachment;
                    end;
                }
                action(Create)
                {
                    Caption = 'Create';
                    Ellipsis = true;

                    trigger OnAction()
                    var
                        InteractTemplLanguage: Record "50022";
                    begin
                        /*IF NOT InteractTemplLanguage.GET(VIN) THEN BEGIN
                          InteractTemplLanguage.INIT;
                          InteractTemplLanguage."Interaction Template Code" := Code;
                          InteractTemplLanguage."Language Code" := "Language Code (Default)";
                          InteractTemplLanguage.Description := Description;
                          InteractTemplLanguage.INSERT;
                        END;
                        */
                        IF InteractTemplLanguage.GET(VIN) THEN
                        //InteractTemplLanguage.CreateAttachment;
                        //CurrPage.UPDATE;

                    end;
                }
                action("Copy &from")
                {
                    Caption = 'Copy &from';
                    Ellipsis = true;

                    trigger OnAction()
                    var
                        InteractTemplLanguage: Record "50022";
                    begin
                        /*IF NOT InteractTemplLanguage.GET(Code,"Language Code (Default)") THEN BEGIN
                          InteractTemplLanguage.INIT;
                          InteractTemplLanguage."Interaction Template Code" := Code;
                          InteractTemplLanguage."Language Code" := "Language Code (Default)";
                          InteractTemplLanguage.Description := Description;
                          InteractTemplLanguage.INSERT;
                          COMMIT;
                        END;
                        */
                        IF InteractTemplLanguage.GET(VIN) THEN
                        //InteractTemplLanguage.CopyFromAttachment;
                        //CurrPage.UPDATE;

                    end;
                }
                action(Import)
                {
                    Caption = 'Import';
                    Ellipsis = true;

                    trigger OnAction()
                    var
                        InteractTemplLanguage: Record "50022";
                    begin
                        /*IF NOT InteractTemplLanguage.GET(Code,"Language Code (Default)") THEN BEGIN
                          InteractTemplLanguage.INIT;
                          InteractTemplLanguage."Interaction Template Code" := Code;
                          InteractTemplLanguage."Language Code" := "Language Code (Default)";
                          InteractTemplLanguage.Description := Description;
                          InteractTemplLanguage.INSERT;
                        END;
                        */
                        IF InteractTemplLanguage.GET(VIN) THEN
                        //InteractTemplLanguage.ImportAttachment;
                        //CurrPage.UPDATE;

                    end;
                }
                action("E&xport")
                {
                    Caption = 'E&xport';
                    Ellipsis = true;

                    trigger OnAction()
                    var
                        InteractTemplLanguage: Record "50022";
                    begin
                        IF InteractTemplLanguage.GET(VIN) THEN
                        //  InteractTemplLanguage.ExportAttachment;
                    end;
                }
                action(Remove)
                {
                    Caption = 'Remove';
                    Ellipsis = true;

                    trigger OnAction()
                    var
                        InteractTemplLanguage: Record "50022";
                    begin
                        IF InteractTemplLanguage.GET(VIN) THEN
                        //  InteractTemplLanguage.RemoveAttachment(TRUE);
                    end;
                }
            }
        }
    }
}

