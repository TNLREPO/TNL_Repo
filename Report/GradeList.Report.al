report 50010 "Grade List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './GradeList.rdlc';

    dataset
    {
        dataitem(DataItem9548; Table50009)
        {
            DataItemTableView = SORTING (Code);
            RequestFilterFields = "Code";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(Payroll_Employee_Group_Header__Code; Code)
            {
            }
            column(amount_1_; amount[1])
            {
            }
            column(amount_5_; amount[5])
            {
            }
            column(amount_6_; amount[6])
            {
            }
            column(amount_7_; amount[7])
            {
            }
            column(amount_8_; amount[8])
            {
            }
            column(gross; gross)
            {
            }
            column(Payroll_Employee_Group_Header___Search_Name_; "Search Name")
            {
            }
            column(Grade_ListCaption; Grade_ListCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Payroll_Employee_Group_Header__CodeCaption; FIELDCAPTION(Code))
            {
            }
            column(BASICCaption; BASICCaptionLbl)
            {
            }
            column(HOUSINGCaption; HOUSINGCaptionLbl)
            {
            }
            column(TRANSPORTCaption; TRANSPORTCaptionLbl)
            {
            }
            column(MEALCaption; MEALCaptionLbl)
            {
            }
            column(UTILITYCaption; UTILITYCaptionLbl)
            {
            }
            column(GROSS_AMTCaption; GROSS_AMTCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                "pay master line".SETRANGE("pay master line"."Employee Group", "Payroll-Employee Group Header.".Code);
                IF "pay master line".FIND('-') THEN
                    REPEAT
                        CASE "pay master line"."E/D Code" OF
                            '10000':
                                amount[1] := "pay master line"."Default Amount" * 12;
                            '11000':
                                amount[5] := "pay master line"."Default Amount" * 12;
                            '10500':
                                amount[6] := "pay master line"."Default Amount" * 12;
                            '13000':
                                amount[7] := "pay master line"."Default Amount" * 12;
                            '18500':
                                amount[8] := "pay master line"."Default Amount" * 12;
                                // '19900' : amount[6] := "pay master line"."Default Amount" * 12;
                                // '70' : amount[7] := "pay master line"."Default Amount" * 12;
                                // '80' : amount[8] := "pay master line"."Default Amount" * 12;
                        END;
                    UNTIL "pay master line".NEXT = 0;
                gross := amount[1] + amount[5] + amount[6] + amount[7] + amount[8];
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO(Code);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        amount: array[10] of Decimal;
        gross: Decimal;
        "pay master line": Record "50008";
        "pay master head": Record "50009";
        recofEDCODE: Record 50001;
        Grade_ListCaptionLbl: Label 'Grade List';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        BASICCaptionLbl: Label 'BASIC';
        HOUSINGCaptionLbl: Label 'HOUSING';
        TRANSPORTCaptionLbl: Label 'TRANSPORT';
        MEALCaptionLbl: Label 'MEAL';
        UTILITYCaptionLbl: Label 'UTILITY';
        GROSS_AMTCaptionLbl: Label 'GROSS AMT';
}

