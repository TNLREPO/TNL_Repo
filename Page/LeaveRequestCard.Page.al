page 50603 "Leave Request Card"
{
    PageType = Card;
    SourceTable = Table70009;

    layout
    {
        area(content)
        {
            group(General)
            {
                Editable = "1st Approval toEditable";
                field("Request No."; "Request No.")
                {
                    Editable = false;

                    trigger OnValidate()
                    begin
                        IF "1st Approval Status" = "1st Approval Status"::Approved THEN
                            ERROR('You cannot change Request No  after approval has been made!');
                    end;
                }
                field("Entry Date"; "Entry Date")
                {
                    Editable = true;
                }
                field(Requester; Requester)
                {
                    Editable = false;
                }
                field("Requester Name"; "Requester Name")
                {
                }
                field("Employee No."; "Employee No.")
                {

                    trigger OnValidate()
                    begin
                        IF EmpREc.GET("Employee No.") THEN
                            "Request Type" := EmpREc."Leave Grade";
                    end;
                }
                field(EmpREc.GetFullName("Employee No.");
                    EmpREc.GetFullName("Employee No."))
                {
                    Caption = 'Employee Name';
                }
                field("Request Type"; "Request Type")
                {
                    Visible = false;
                }
                field("Global Dimension 1 code"; "Global Dimension 1 code")
                {
                    Caption = 'Department';
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                    Caption = 'Branch';
                }
                field("Employment Date"; "Employment Date")
                {
                }
                field("Leave Period"; "Leave Period")
                {

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        "Leave Period" := SelectYear;
                    end;
                }
                field("Actual Start Date"; "Actual Start Date")
                {
                }
                field("Actual End Date"; "Actual End Date")
                {
                    Editable = false;
                }
                field("Actual Duration"; "Actual Duration")
                {

                    trigger OnValidate()
                    begin
                        IF NOT ("Leave Category" = 'MATERNITY') AND ("Actual Duration" > 15) THEN
                            ERROR('You cant request more than 15 days Annual Leave at once');
                    end;
                }
                field("Leave Category"; "Leave Category")
                {
                }
                field("Total Leaves Due"; "Total Leaves Due")
                {
                    Visible = false;
                }
                field("Total Consuming"; "Total Consuming")
                {
                    Visible = false;
                }
                field("Total Annual"; "Total Annual")
                {
                    Visible = false;
                }
                field(RemainingLeave; RemainingLeave)
                {
                    Caption = 'Balance Leave to Enjoy';
                    Editable = false;
                }
                field("Send for Approval"; "Send for Approval")
                {
                    Caption = 'Send';
                    Editable = "Send for ApprovalEditable";

                    trigger OnValidate()
                    begin
                        TESTFIELD("Request Type");
                    end;
                }
            }
            group(Approvals)
            {
                field("Sent Time"; "Sent Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
                field("1st Approval"; "1st Approval")
                {
                    Caption = 'To';
                    Editable = "1st Approval toEditable";

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        // HOD
                        IF "Request Type" = "Request Type"::HOD THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\IBIDAPO-OBE', 'TOYOTANIGERIA\KOLAWOLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::"MD OFFICE") AND ("Global Dimension 1 code" = '01EXADMIN') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\IBIDAPO-OBE', 'TOYOTANIGERIA\KOLAWOLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::HOD1) THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1', 'TOYOTANIGERIA\BUNMI');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        //Manager

                        IF ("Request Type" = "Request Type"::Manager) AND ("Global Dimension 1 code" = '07FINACC') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\paa', 'TOYOTANIGERIA\BUNMI');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::Manager) AND ("Global Dimension 1 code" = '08AUDSYS') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\ADEWUMI', 'TOYOTANIGERIA\AGBESUA');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::Manager) AND ("Global Dimension 1 code" = '09MARKET') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\AJUYAH', 'TOYOTANIGERIA\BAYO');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::Manager) AND ("Global Dimension 1 code" = '05PARTS') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\RAVINDER', 'TOYOTANIGERIA\AKINDELE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::Manager) AND ("Global Dimension 1 code" = '02ADMINHR') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\LAWAL', 'TOYOTANIGERIA\KOLAWOLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::Manager) AND ("Global Dimension 1 code" = '06SERVICE') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2|%3', 'TOYOTANIGERIA\INGALE', 'TOYOTANIGERIA\SYLVESTER', 'TOYOTANIGERIA\BAMIDELE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::Manager) AND ("Global Dimension 1 code" = '03OPLOGIC') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\TOLA', 'TOYOTANIGERIA\SEGUN');
                            //UserSetup.SETFILTER("User ID",'%1|%2','TOYOTANIGERIA\LAWAL','TOYOTANIGERIA\KOLAWOLE');

                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN

                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        //Junior staff - Deputy Manager
                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Global Dimension 1 code" = '08AUDSYS') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\ADEWUMI', 'TOYOTANIGERIA\AGBESUA');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Global Dimension 1 code" = '09MARKET') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\AJUYAH', 'TOYOTANIGERIA\BAYO');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Global Dimension 1 code" = '05PARTS') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\RAVINDER', 'TOYOTANIGERIA\AKINDELE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Global Dimension 1 code" = '02ADMINHR') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2|%3', 'TOYOTANIGERIA\IBIDAPO-OBE', 'TOYOTANIGERIA\KOLAWOLE', 'TOYOTANIGERIA\LAWAL');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Global Dimension 1 code" = '06SERVICE') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2|%3', 'TOYOTANIGERIA\INGALE', 'TOYOTANIGERIA\SYLVESTER', 'TOYOTANIGERIA\BAMIDELE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Global Dimension 1 code" = '07FINACC') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\PAA', 'TOYOTANIGERIA\BUNMI');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Global Dimension 1 code" = '04DDEV') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1', 'TOYOTANIGERIA\HENRY');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Global Dimension 1 code" = '03OPLOGIC') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\TOLA', 'TOYOTANIGERIA\SEGUN');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        //Branch
                        IF "Request Type" = "Request Type"::Branch THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2|%3|%4|%5', 'TOYOTANIGERIA\NISHANT', 'TOYOTANIGERIA\EOT', 'TOYOTANIGERIA\BAYONLE', 'TOYOTANIGERIA\MOSES', 'TOYOTANIGERIA\ISUEKEBHO');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        //FG
                        IF "Request Type" = "Request Type"::FG THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\NISHANT', 'TOYOTANIGERIA\EOT');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "1st Approval" := UserSetup."User ID";
                                "1st Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                    end;

                    trigger OnValidate()
                    begin
                        IF NOT ("Leave Category" = 'MATERNITY') AND ("Actual Duration" > 15) THEN
                            ERROR('You cant request more than 15 days Annual Leave at once');
                    end;
                }
                field("1st Approver"; "1st Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("1st Approval Status"; "1st Approval Status")
                {
                    Caption = 'Action';
                    Editable = "1st Apprv. StatusEditable";

                    trigger OnValidate()
                    begin
                        IF ("Leave Category" = 'CASUAL') AND ("Actual Duration" > 3) THEN
                            ERROR('Casual leave cannot be more than 3 working days');

                        TESTFIELD("2nd Approver");

                        IF "1st Approval Status" = "1st Approval Status"::Approved THEN BEGIN
                            "2nd Approval toEditable" := FALSE;
                            "Send for ApprovalEditable" := FALSE;
                        END ELSE BEGIN
                            "2nd Approval toEditable" := TRUE;
                            "Send for ApprovalEditable" := TRUE;
                        END;
                        IF "Request Type" = "Request Type"::HOD THEN BEGIN
                            "3rd_Approver_Visible" := FALSE;
                            "3rd_Approver_Visible" := FALSE;
                        END ELSE BEGIN
                            "3rd_Approver_Visible" := TRUE;
                            "3rd_Approver_Visible" := TRUE;
                        END;
                    end;
                }
                field("1st Approval Time"; "1st Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("Level 1")
            {
                Visible = Level_1;
                field("2nd Approval"; "2nd Approval")
                {
                    Caption = 'To';
                    Editable = "2nd Approval toEditable";

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        IF "Request Type" = "Request Type"::HOD THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1', 'TOYOTANIGERIA\OLAKUNLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "2nd Approval" := UserSetup."User ID";
                                "2nd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::"MD OFFICE") AND ("Global Dimension 1 code" = '01EXADMIN') THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1', 'TOYOTANIGERIA\OLAKUNLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "2nd Approval" := UserSetup."User ID";
                                "2nd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF "Request Type" = "Request Type"::HOD1 THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\IBIDAPO-OBE', 'TOYOTANIGERIA\KOLAWOLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "2nd Approval" := UserSetup."User ID";
                                "2nd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::Manager) OR ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\IBIDAPO-OBE', 'TOYOTANIGERIA\KOLAWOLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "2nd Approval" := UserSetup."User ID";
                                "2nd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                        IF ("Request Type" = "Request Type"::Branch) //AND //("Global Dimension 1 code" = '05PARTS')/
                        THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2|%3|4%', 'TOYOTANIGERIA\SYLVESTER', 'TOYOTANIGERIA\RAVINDER', 'TOYOTANIGERIA\BAMIDELE', 'TOYOTANIGERIA\PAA');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "2nd Approval" := UserSetup."User ID";
                                "2nd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::FG) //AND //("Global Dimension 1 code" = '05PARTS')/
                        THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2|%3|4%', 'TOYOTANIGERIA\RAVINDER', 'TOYOTANIGERIA\INGALE', 'TOYOTANIGERIA\SYLVESTER', 'TOYOTANIGERIA\AKINDELE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "2nd Approval" := UserSetup."User ID";
                                "2nd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                    end;
                }
                field("2nd Approver"; "2nd Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                }
                field("Send to MD for Approval"; "Send to MD for Approval")
                {
                    Visible = To_Visible;

                    trigger OnValidate()
                    begin
                        IF ("Request Type" = "Request Type"::HOD) OR ("Request Type" = "Request Type"::Manager) OR ("Request Type" = "Request Type"::Branch) THEN
                            ERROR('You cannot send the leave request to the next level');
                    end;
                }
                field("2nd Approval Status"; "2nd Approval Status")
                {
                    Caption = 'Action';
                    Editable = "2nd Apprv. StatusEditable";

                    trigger OnValidate()
                    begin

                        IF "2nd Approval Status" = "2nd Approval Status"::Approved THEN BEGIN
                            "3rd Approval toEditable" := TRUE;
                            "1st Apprv. StatusEditable" := FALSE;
                        END ELSE BEGIN
                            "3rd Approval toEditable" := FALSE;
                            "1st Apprv. StatusEditable" := TRUE;
                        END;
                        IF "Request Type" = "Request Type"::Manager THEN BEGIN
                            "4th_Approver_Visible" := FALSE;
                            "4th_Apprv_Visible" := FALSE
                        END ELSE BEGIN
                            "4th_Approver_Visible" := TRUE;
                            "4th_Apprv_Visible" := TRUE;
                        END;
                    end;
                }
                field("2nd Approval Time"; "2nd Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group("Level 2")
            {
                Visible = Level_2;
                field("3rd Approval"; "3rd Approval")
                {
                    Caption = 'To';
                    Editable = "3rd Approval toEditable";
                    Visible = To_Visible;

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        IF "Request Type" = "Request Type"::Manager THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1', 'TOYOTANIGERIA\OLAKUNLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "3rd Approval" := UserSetup."User ID";
                                "3rd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF "Request Type" = "Request Type"::HOD1 THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1', 'TOYOTANIGERIA\OLAKUNLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "3rd Approval" := UserSetup."User ID";
                                "3rd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Send to MD for Approval" = TRUE) THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1', 'TOYOTANIGERIA\OLAKUNLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "3rd Approval" := UserSetup."User ID";
                                "3rd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::Branch) THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\IBIDAPO-OBE', 'TOYOTANIGERIA\KOLAWOLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "3rd Approval" := UserSetup."User ID";
                                "3rd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;

                        IF ("Request Type" = "Request Type"::FG) THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1|%2', 'TOYOTANIGERIA\IBIDAPO-OBE', 'TOYOTANIGERIA\KOLAWOLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "3rd Approval" := UserSetup."User ID";
                                "3rd Approver" := UserSetup.Name;
                                //"Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                    end;

                    trigger OnValidate()
                    begin
                        IF ("Request Type" = "Request Type"::HOD) OR (("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND ("Send to MD for Approval" = FALSE)) THEN
                            ERROR('You can only Appover this Leave Approval Request');
                    end;
                }
                field("3rd Approver"; "3rd Approver")
                {
                    Caption = 'Name';
                    Editable = false;
                    Visible = To_Visible;
                }
                field("3rd Approval Status"; "3rd Approval Status")
                {
                    Caption = 'Action';
                    Editable = "3rd Apprv. StatusEditable";

                    trigger OnValidate()
                    begin
                        IF "3rd Approval Status" = "3rd Approval Status"::Approved THEN BEGIN
                            "4th Approval toEditable" := TRUE;
                            "2nd Apprv. StatusEditable" := FALSE
                        END ELSE BEGIN
                            "4th Approval toEditable" := FALSE;
                            "2nd Apprv. StatusEditable" := TRUE
                        END;
                    end;
                }
                field("3rd  Approval Time"; "3rd  Approval Time")
                {
                    Caption = 'Time';
                    Editable = false;
                }
            }
            group()
            {
                Editable = "4th Approval toEditable";
                Visible = Level_3;
                field("4th Approval"; "4th Approval")
                {
                    Editable = "4th Approval toEditable";

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        IF "Request Type" = "Request Type"::FG THEN BEGIN
                            UserSetup.SETFILTER("User ID", '%1', 'TOYOTANIGERIA\OLAKUNLE');
                            IF PAGE.RUNMODAL(0, UserSetup) = ACTION::LookupOK THEN BEGIN
                                "4th Approval" := UserSetup."User ID";
                                "4th  Approver" := UserSetup.Name;
                                // "Current pending Person" := UserSetup."User ID";
                            END;
                        END;
                    end;
                }
                field("4th  Approver"; "4th  Approver")
                {
                }
                field("4th  Approval Status"; "4th  Approval Status")
                {
                }
                field("4th Approval Time"; "4th Approval Time")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Planned Leave")
            {
                Caption = 'Planned Leave';
                Image = CreateForm;
                Promoted = true;

                trigger OnAction()
                begin

                    IF CONFIRM('Do you want to raise a Plan Leave') THEN BEGIN
                        LPlanRec.INIT;
                        LPlanRec.Leave_Request := "Request No.";
                        LPlanRec."Employee No." := "Employee No.";
                        LPlanRec."Leave Period" := "Leave Period";
                        LPlanRec."Leave Category" := "Leave Category";
                        LPlanRec.INSERT(TRUE);
                        COMMIT;
                        LPlanRec.SETRANGE(Leave_Request, "Request No.");
                        PAGE.RUNMODAL(50092, LPlanRec);
                    END;
                end;
            }
            action("Actual Leave")
            {
                Caption = 'Actual Leave';
                Image = CreateForm;
                Promoted = true;

                trigger OnAction()
                begin

                    IF ("2nd Approval Status" <> "2nd Approval Status"::Approved) AND ("Request Type" = "Request Type"::HOD) THEN
                        ERROR('The leave request has not been approved!');
                    IF ("2nd Approval Status" <> "2nd Approval Status"::Approved) AND ("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND
                       ("Send to MD for Approval" = FALSE) THEN
                        ERROR('The leave request has not been approved!');


                    IF ("3rd Approval Status" <> "3rd Approval Status"::Approved) AND ("Request Type" = "Request Type"::HOD1) THEN
                        ERROR('The leave request has not been approved!');

                    IF ("3rd Approval Status" <> "3rd Approval Status"::Approved) AND ("Request Type" = "Request Type"::Manager) THEN
                        ERROR('The leave request has not been approved!');


                    IF ("3rd Approval Status" <> "3rd Approval Status"::Approved) AND ("Request Type" = "Request Type"::Branch) THEN
                        ERROR('The leave request has not been approved!');


                    IF ("3rd Approval Status" <> "3rd Approval Status"::Approved) AND (("Request Type" = "Request Type"::"Junior staff - Deputy Manager") AND
                       ("Send to MD for Approval" = TRUE)) THEN
                        ERROR('The leave request has not been approved!');


                    TESTFIELD(Treated, FALSE);
                    IF CONFIRM('Do you want to raise a leave plan?') THEN BEGIN
                        LPlanRec.INIT;
                        LPlanRec.Leave_Request := "Request No.";
                        LPlanRec."Employee No." := "Employee No.";
                        LPlanRec."Leave Period" := "Leave Period";
                        LPlanRec."Leave Category" := "Leave Category";
                        LPlanRec."Actual Start Date" := "Actual Start Date";
                        LPlanRec."Actual End Date" := "Actual End Date";
                        LPlanRec."Actual Duration" := "Actual Duration";
                        LPlanRec."Entry Type" := LPlanRec."Entry Type"::ACTUAL;
                        LPlanRec."Global Dimension 1 Code" := "Global Dimension 1 code";
                        LPlanRec."Global Dimension 2 Code" := "Global Dimension 2 Code";
                        LPlanRec."Entry Type" := LPlanRec."Entry Type"::ACTUAL;
                        LPlanRec.Treated := TRUE;
                        Treated := TRUE;
                        LPlanRec.INSERT(TRUE);
                        COMMIT;

                        LPlanRec.SETRANGE(Leave_Request, "Request No.");
                        PAGE.RUNMODAL(70056, LPlanRec);
                    END;
                end;
            }
        }
    }

    trigger OnAfterGetCurrRecord()
    begin
        FastTabControl;
    end;

    trigger OnAfterGetRecord()
    begin
        FastTabControl;
    end;

    trigger OnOpenPage()
    begin


        IF ("Send for Approval" = TRUE) THEN
            Level_1 := TRUE

        ELSE
            Level_1 := FALSE;

        IF "1st Approval Status" <> "1st Approval Status"::" " THEN
            Level_2 := TRUE

        ELSE
            Level_2 := FALSE;

        IF "Request Type" = "Request Type"::FG THEN
            Level_3 := TRUE;

        //IF  ( "2nd Approval Status" <> "2nd Approval Status":: " " ) THEN
        // Level_3 := TRUE;
        //IF ("Request Type"= "Request Type":: Manager) OR ("Send for Approval" = TRUE) THEN
        //  Level_2 := TRUE;

        IF "Send for Approval" = TRUE THEN
            "1st Approval toEditable" := FALSE
        ELSE
            "1st Approval toEditable" := TRUE;
        IF "1st Approval Status" = "1st Approval Status"::Approved THEN BEGIN
            "2nd Approval toEditable" := FALSE;
            "Send for ApprovalEditable" := FALSE
        END ELSE BEGIN
            "2nd Approval toEditable" := TRUE;
            "Send for ApprovalEditable" := TRUE
        END;
        IF "2nd Approval Status" = "2nd Approval Status"::Approved THEN BEGIN
            "3rd Approval toEditable" := FALSE;
            "1st Apprv. StatusEditable" := FALSE
        END ELSE BEGIN
            "3rd Approval toEditable" := TRUE;
            "1st Apprv. StatusEditable" := TRUE
        END;
        IF "3rd Approval Status" = "3rd Approval Status"::Approved THEN BEGIN
            "4th Approval toEditable" := TRUE;
            "1st Apprv. StatusEditable" := FALSE
        END ELSE BEGIN
            "4th Approval toEditable" := FALSE;
            "1st Apprv. StatusEditable" := TRUE
        END;

        IF "4th  Approval Status" = "4th  Approval Status"::Approved THEN BEGIN
            "2nd Apprv. StatusEditable" := FALSE;
            "4th Approval toEditable" := FALSE
        END ELSE BEGIN
            "2nd Apprv. StatusEditable" := TRUE;
            "4th Approval toEditable" := TRUE
        END;

        //IF "4th  Approval Status" ="4th  Approval Status"::Approved THEN
        //  "2nd Apprv. StatusEditable" := FALSE
        //ELSE
        //  "2nd Apprv. StatusEditable" := TRUE;

        IF "4th  Approval Status" = "4th  Approval Status"::Approved THEN
            "3rd Apprv. StatusEditable" := FALSE
        ELSE
            "3rd Apprv. StatusEditable" := TRUE;
        IF ("3rd Approval Status" = "3rd Approval Status"::Approved) AND
           (("Request Type" = "Request Type"::Branch) OR ("Send to MD for Approval")) THEN
            "4th Apprv. StatusEditable" := TRUE
        ELSE
            "4th Apprv. StatusEditable" := TRUE;
        FastTabControl;
        IF "Request Type" = "Request Type"::HOD THEN
            To_Visible := FALSE
        ELSE
            To_Visible := TRUE;
    end;

    var
        GenPCode: Codeunit "50004";
        EmpREc: Record 5200;
        EmpName: Text[60];
        PayRec: Record 50076;
        LRosteRec: Record 50077;
        ActualLeaves: Integer;
        ConSumingLeaves: Integer;
        Annual: Integer;
        RemLeaves: Integer;
        DtFilter: Text[30];
        "Net Total Leaves": Integer;
        LCat: Record 50074;
        LPlanRec: Record 50075;
        LeaveYr: Integer;
        DateRec: Record 2000000007;
        DateForm: Page 50098;
        CurrentYr: Integer;
        [InDataSet]
        Level_1: Boolean;
        [InDataSet]
        Level_2: Boolean;
        Level_3: Boolean;
        "4th ApprovalVisible": Boolean;
        [InDataSet]
        Level_4: Boolean;
        [InDataSet]
        "No.Editable": Boolean;
        [InDataSet]
        "1st Approval toEditable": Boolean;
        [InDataSet]
        "2nd Approval toEditable": Boolean;
        [InDataSet]
        "Send for ApprovalEditable": Boolean;
        [InDataSet]
        "3rd Approval toEditable": Boolean;
        "4th Approval toEditable": Boolean;
        [InDataSet]
        "1st Apprv. StatusEditable": Boolean;
        [InDataSet]
        "2nd Apprv. StatusEditable": Boolean;
        [InDataSet]
        "Entry DateEditable": Boolean;
        "3rd Apprv. StatusEditable": Boolean;
        "4th Apprv. StatusEditable": Boolean;
        UserSetup: Record 91;
        "4th_Apprv_Visible": Boolean;
        "4th_Approver_Visible": Boolean;
        "3rd_Apprv_Visible": Boolean;
        "3rd_Approver_Visible": Boolean;
        LeaveRegister: Record 70008;
        To_Visible: Boolean;
        Name_Visible: Boolean;
        Send_Visible: Boolean;

    [Scope('Internal')]
    procedure EnableSubFrm()
    begin
        /*
        LCat.RESET;
        IF LCat.GET("Leave Category") AND (LCat."Payment Allowed") THEN
          CurrPage.SubFrm.ENABLED(TRUE)
        ELSE
          CurrPage.SubFrm.ENABLED(FALSE);
         */

    end;

    [Scope('Internal')]
    procedure SelectYear(): Integer
    begin
        CLEAR(DateRec);
        CurrentYr := DATE2DMY(TODAY, 3);
        DateRec.RESET;

        DateRec.FILTERGROUP(7);
        DateRec.SETRANGE(DateRec."Period Type", DateRec."Period Type"::Year);
        DateRec.SETRANGE(DateRec."Period No.", 1900, 9999);
        REPEAT
            DateRec.NEXT;
        UNTIL (DateRec."Period No." = CurrentYr);

        DateRec.FILTERGROUP(0);
        DateForm.SETTABLEVIEW(DateRec);

        IF PAGE.RUNMODAL(PAGE::Date, DateRec) = ACTION::LookupOK THEN EXIT(DateRec."Period No.");

        EXIT(0);
    end;

    local procedure FastTabControl()
    begin
        IF "Send for Approval" THEN
            Level_1 := TRUE
        ELSE
            Level_1 := FALSE;

        IF (("Request Type" = "Request Type"::HOD1) OR ("Request Type" = "Request Type"::Manager) OR ("Request Type" = "Request Type"::FG) OR
            ("Request Type" = "Request Type"::Branch)) OR ("Send to MD for Approval" = TRUE) THEN
            Level_2 := TRUE
        ELSE
            Level_2 := FALSE;

        //IF "1st Approval Status"= "1st Approval Status"::Approved THEN
        //   Level_2:= TRUE
        //ELSE
        //   Level_2:= FALSE;

        //IF  ( "2nd Approval Status" = "2nd Approval Status"::Approved) AND (("Request Type" ="Request Type"::HOD1) OR ("Request Type" ="Request Type"::Manager) OR
        //    ("Request Type" ="Request Type":: Branch)) OR ("Send to MD for Approval"= TRUE) THEN
        //   Level_3 := TRUE
        //ELSE
        //   Level_3:= FALSE;

        //IF ("3rd Approval Status" = "3rd Approval Status"::Approved ) AND (("Request Type" ="Request Type":: Branch) OR ("Send to MD for Approval"))THEN
        //   Level_4:= TRUE
        //ELSE
        //   Level_4:= FALSE;
    end;
}

