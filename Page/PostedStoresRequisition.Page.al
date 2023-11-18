page 50478 "Posted Stores Requisition"
{
    CardPageID = "Posted Stores Requsition Card";
    Editable = false;
    PageType = List;
    SourceTable = Table50101;
    SourceTableView = SORTING (No., Type)
                      WHERE (Type = CONST (Posted Issue));

    layout
    {
        area(content)
        {
            repeater(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    Editable = false;
                }
                field(Date; Date)
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Fixed Assets No."; "Fixed Assets No.")
                {
                }
                field("FA Description"; "FA Description")
                {
                }
                field("Maintenance Code"; "Maintenance Code")
                {
                }
                field("User/ Drivers Name"; "User/ Drivers Name")
                {
                }
                field("Registration No."; "Registration No.")
                {
                }
                field("Total Amount"; "Total Amount")
                {
                }
                field("COF No"; "COF No")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group(Print)
            {
                Caption = 'Print';
                action("Store Requisition")
                {
                    Caption = 'Store Requisition';

                    trigger OnAction()
                    begin
                        /*IF "Printed Copies" <> 0 THEN BEGIN
                          IF NOT MemberOf.FIND('-') THEN
                            ERROR('Store Requisition already printed!');
                          IF NOT CONFIRM('Store Requisition already printed!\Print anyway?') THEN
                            ERROR('Store Requisition not re-printed!');
                        END;        */
                        TestForValidity;


                        StoreReqHeader.SETRANGE(StoreReqHeader."No.", "No.");
                        IF StoreReqHeader.FINDFIRST THEN
                            REPORT.RUNMODAL(50335, TRUE, TRUE, StoreReqHeader);

                        /*
                        SETRANGE("No.","No.");
                        REPORT.RUNMODAL(REPORT::"Stores Requisition Voucher",TRUE,FALSE,Rec);
                        SETRANGE("No.");
                        */

                    end;
                }
                separator()
                {
                }
                action("Alloy Rim")
                {
                    Caption = 'Alloy Rim';

                    trigger OnAction()
                    begin
                        StoreReqHeader.SETRANGE(StoreReqHeader."No.", "No.");
                        IF StoreReqHeader.FINDFIRST THEN
                            REPORT.RUNMODAL(50385, TRUE, TRUE, StoreReqHeader);
                    end;
                }
            }
        }
    }

    var
        StoreReqHeader: Record 50101;
        StoreReqLine: Record 50102;
        StoreReqLine2: Record 50102;
        UserRec: Record 91;
        InvtSetup: Record 313;
        NoSeriesMgt: Codeunit 396;
        Noseriesrec: Record 308;
        NoseriesLinerec: Record 309;
        storeReqHead: Record 50101;
        DepartmentRec: Record 349;
        operationType: Integer;
        Doctype: Option;
        "Doc. Type": Text[30];

    [Scope('Internal')]
    procedure NEWREQ()
    begin
    end;

    [Scope('Internal')]
    procedure ALLOYNEWREQ()
    begin
    end;
}

