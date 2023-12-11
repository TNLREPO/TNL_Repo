report 50257 "TNL Maintenance Code Analysis"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TNLMaintenanceCodeAnalysis.rdlc';
    Caption = 'TNL Maintenance Code Analysis';

    dataset
    {
        dataitem(DataItem3794; Table5600)
        {
            RequestFilterFields = "No.", "FA Class Code", "FA Subclass Code";
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(USERID; USERID)
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(DeprBookText; DeprBookText)
            {
            }
            column(Fixed_Asset__TABLECAPTION__________FAFilter; "Fixed Asset".TABLECAPTION + ': ' + FAFilter)
            {
            }
            column(HeadLineText_1_; HeadLineText[1])
            {
            }
            column(HeadLineText_2_; HeadLineText[2])
            {
            }
            column(HeadLineText_3_; HeadLineText[3])
            {
            }
            column(GroupCodeName; GroupCodeName)
            {
            }
            column(FANo; FANo)
            {
            }
            column(FADescription; FADescription)
            {
            }
            column(PrintDetails; PrintDetails)
            {
            }
            column(HeadLineText_6_; HeadLineText[6])
            {
            }
            column(HeadLineText_5_; HeadLineText[5])
            {
            }
            column(HeadLineText_4_; HeadLineText[4])
            {
            }
            column(GroupHeadLine; GroupHeadLine)
            {
            }
            column(Fixed_Asset__No__; "No.")
            {
            }
            column(Fixed_Asset_Description; Description)
            {
            }
            column(Amounts_1_; Amounts[1])
            {
                AutoFormatType = 1;
            }
            column(Amounts_2_; Amounts[2])
            {
                AutoFormatType = 1;
            }
            column(Amounts_3_; Amounts[3])
            {
                AutoFormatType = 1;
            }
            column(Amounts_6_; Amounts[6])
            {
                AutoFormatType = 1;
            }
            column(Amounts_5_; Amounts[5])
            {
                AutoFormatType = 1;
            }
            column(Amounts_4_; Amounts[4])
            {
                AutoFormatType = 1;
            }
            column(EmpRecFullName; EmpRec.FullName)
            {
            }
            column(GroupAmounts_1_; GroupAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_2_; GroupAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_3_; GroupAmounts[3])
            {
                AutoFormatType = 1;
            }
            column(Text000__________GroupHeadLine; Text000 + ': ' + GroupHeadLine)
            {
            }
            column(GroupAmounts_6_; GroupAmounts[6])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_5_; GroupAmounts[5])
            {
                AutoFormatType = 1;
            }
            column(GroupAmounts_4_; GroupAmounts[4])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_1_; TotalAmounts[1])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_2_; TotalAmounts[2])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_3_; TotalAmounts[3])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_6_; TotalAmounts[6])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_5_; TotalAmounts[5])
            {
                AutoFormatType = 1;
            }
            column(TotalAmounts_4_; TotalAmounts[4])
            {
                AutoFormatType = 1;
            }
            column(LineAmount; LineAmount)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Maintenance___AnalysisCaption; Maintenance___AnalysisCaptionLbl)
            {
            }
            column(TotalCaption; TotalCaptionLbl)
            {
            }
            column(Fixed_Asset_FA_Subclass_Code; "FA Subclass Code")
            {
            }
            column(Fixed_Asset_FA_Class_Code; "FA Class Code")
            {
            }
            column(Fixed_Asset_Global_Dimension_1_Code; "Global Dimension 1 Code")
            {
            }
            column(Fixed_Asset_Global_Dimension_2_Code; "Global Dimension 2 Code")
            {
            }
            column(Fixed_Asset_Component_of_Main_Asset; "Component of Main Asset")
            {
            }
            column(Fixed_Asset_FA_Location_Code; "FA Location Code")
            {
            }
            column(Fixed_Asset_FA_Posting_Group; "FA Posting Group")
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF Inactive THEN
                    CurrReport.SKIP;
                IF NOT FADeprBook.GET("No.", DeprBookCode) THEN
                    CurrReport.SKIP;

                IF GroupTotals = GroupTotals::"FA Posting Group" THEN
                    IF "FA Posting Group" <> FADeprBook."FA Posting Group" THEN
                        ERROR(Text005, FIELDCAPTION("FA Posting Group"), "No.");

                MaintenanceLedgEntry.SETRANGE("FA No.", "No.");
                Amounts[1] := CalculateAmount(MaintenanceCode1, Period1);
                Amounts[2] := CalculateAmount(MaintenanceCode2, Period2);
                Amounts[3] := CalculateAmount(MaintenanceCode3, Period3);
                Amounts[4] := CalculateAmount(MaintenanceCode4, Period4);
                Amounts[5] := CalculateAmount(MaintenanceCode5, Period5);
                Amounts[6] := CalculateAmount(MaintenanceCode6, Period6);
                IF (Amounts[1] = 0) AND (Amounts[2] = 0) AND (Amounts[3] = 0) AND
                   (Amounts[4] = 0) AND (Amounts[5] = 0) AND (Amounts[6] = 0) THEN
                    CurrReport.SKIP;

                IF ISSERVICETIER THEN BEGIN
                    FOR i := 1 TO 6 DO
                        GroupAmounts[i] := 0;
                    MakeGroupHeadLine;
                END;
            end;

            trigger OnPreDataItem()
            begin

                CASE GroupTotals OF
                    GroupTotals::"FA Class":
                        SETCURRENTKEY("FA Class Code");
                    GroupTotals::"FA SubClass":
                        SETCURRENTKEY("FA Subclass Code");
                    GroupTotals::"Main Asset":
                        SETCURRENTKEY("Component of Main Asset");
                    GroupTotals::"Global Dimension 1":
                        SETCURRENTKEY("Global Dimension 1 Code");
                    GroupTotals::"FA Location":
                        SETCURRENTKEY("FA Location Code");
                    GroupTotals::"Global Dimension 2":
                        SETCURRENTKEY("Global Dimension 2 Code");
                    GroupTotals::"FA Posting Group":
                        SETCURRENTKEY("FA Posting Group");
                END;
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(content)
            {
                group(Options)
                {
                    Caption = 'Options';
                    field(DeprBookCode; DeprBookCode)
                    {
                        Caption = 'Depreciation Book';
                        TableRelation = "Depreciation Book";
                    }
                    field(DateSelection; DateSelection)
                    {
                        Caption = 'Date Selection';
                        OptionCaption = 'FA Posting Date,Posting Date';
                    }
                    field(StartingDate; StartingDate)
                    {
                        Caption = 'Starting Date';
                    }
                    field(EndingDate; EndingDate)
                    {
                        Caption = 'Ending Date';
                    }
                    field(MaintenanceCode1; MaintenanceCode1)
                    {
                        Caption = 'Amount Field 1';
                        TableRelation = Maintenance;
                    }
                    field(Period1; Period1)
                    {
                        Caption = 'Period 1';
                        OptionCaption = 'before Starting Date,Net Change,at Ending Date';
                    }
                    field(MaintenanceCode2; MaintenanceCode2)
                    {
                        Caption = 'Amount Field 2';
                        TableRelation = Maintenance;
                    }
                    field(Period2; Period2)
                    {
                        Caption = 'Period 2';
                        OptionCaption = 'before Starting Date,Net Change,at Ending Date';
                    }
                    field(MaintenanceCode3; MaintenanceCode3)
                    {
                        Caption = 'Amount Field 3';
                        TableRelation = Maintenance;
                    }
                    field(Period3; Period3)
                    {
                        Caption = 'Period 3';
                        OptionCaption = 'before Starting Date,Net Change,at Ending Date';
                    }
                    field(GroupTotals; GroupTotals)
                    {
                        Caption = 'Group Totals';
                        OptionCaption = ' ,FA Class,FA SubClass,FA Location,Main Asset,Global Dimension 1,Global Dimension 2,FA Posting Group';
                    }
                    field(PrintDetails; PrintDetails)
                    {
                        Caption = 'Print per Fixed Asset';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnOpenPage()
        begin
            IF DeprBookCode = '' THEN BEGIN
                FASetup.GET;
                DeprBookCode := FASetup."Default Depr. Book";
            END;
        end;
    }

    labels
    {
    }

    trigger OnPreReport()
    begin
        DeprBook.GET(DeprBookCode);
        IF GroupTotals = GroupTotals::"FA Posting Group" THEN
            FAGenReport.SetFAPostingGroup("Fixed Asset", DeprBook.Code);

        IF DateSelection = DateSelection::"FA Posting Date" THEN
            FAGenReport.AppendFAPostingFilter("Fixed Asset", StartingDate, EndingDate);

        FAFilter := "Fixed Asset".GETFILTERS;

        IF DateSelection = DateSelection::"Posting Date" THEN
            FAGenReport.AppendPostingDateFilter(FAFilter, StartingDate, EndingDate);

        DeprBookText := STRSUBSTNO('%1%2 %3', DeprBook.TABLECAPTION, ':', DeprBookCode);
        MakeGroupTotalText;
        ValidateDates;
        MakeAmountHeadLine(1, MaintenanceCode1, Period1);
        MakeAmountHeadLine(2, MaintenanceCode2, Period2);
        MakeAmountHeadLine(3, MaintenanceCode3, Period3);
        MakeAmountHeadLine(4, MaintenanceCode4, Period4);
        MakeAmountHeadLine(5, MaintenanceCode5, Period5);
        MakeAmountHeadLine(6, MaintenanceCode6, Period6);
        IF DateSelection = DateSelection::"Posting Date" THEN
            MaintenanceLedgEntry.SETCURRENTKEY(
              "FA No.", "Depreciation Book Code", "Maintenance Code", "Posting Date")
        ELSE
            MaintenanceLedgEntry.SETCURRENTKEY(
              "FA No.", "Depreciation Book Code", "Maintenance Code", "FA Posting Date");
        MaintenanceLedgEntry.SETRANGE("Depreciation Book Code", DeprBookCode);
        IF PrintDetails THEN BEGIN
            FANo := "Fixed Asset".FIELDCAPTION("No.");
            FADescription := "Fixed Asset".FIELDCAPTION(Description);
        END;
    end;

    var
        Text000: Label 'Group Total';
        Text001: Label 'Group Totals';
        Text002: Label 'You must specify the starting date and the ending date.';
        Text003: Label 'The starting date is later than the ending date.';
        Text004: Label 'The starting date must be specified when you use the option %1.';
        Text005: Label '%1 has been modified in fixed asset %2';
        FASetup: Record "5603";
        DeprBook: Record "5611";
        FADeprBook: Record "5612";
        MaintenanceLedgEntry: Record "5625";
        FAGenReport: Codeunit "5626";
        FAFilter: Text[250];
        DeprBookText: Text[50];
        GroupCodeName: Text[80];
        GroupHeadLine: Text[50];
        FANo: Text[50];
        FADescription: Text[50];
        GroupTotals: Option " ","FA Class","FA SubClass","FA Location","Main Asset","Global Dimension 1","Global Dimension 2","FA Posting Group";
        GroupAmounts: array[6] of Decimal;
        TotalAmounts: array[6] of Decimal;
        HeadLineText: array[6] of Text[50];
        Amounts: array[6] of Decimal;
        MaintenanceCode1: Code[10];
        MaintenanceCode2: Code[10];
        MaintenanceCode3: Code[10];
        Period1: Option "before Starting Date","Net Change","at Ending Date";
        Period2: Option "before Starting Date","Net Change","at Ending Date";
        Period3: Option "before Starting Date","Net Change","at Ending Date";
        StartingDate: Date;
        EndingDate: Date;
        DeprBookCode: Code[10];
        PrintDetails: Boolean;
        DateSelection: Option "FA Posting Date","Posting Date";
        i: Integer;
        Text006: Label 'before Starting Date,Net Change,at Ending Date';
        Text007: Label ' ,FA Class,FA SubClass,FA Location,Main Asset,Global Dimension 1,Global Dimension 2,FA Posting Group';
        "---------": Integer;
        MaintenanceCode4: Code[10];
        MaintenanceCode5: Code[10];
        MaintenanceCode6: Code[10];
        Period4: Option "before Starting Date","Net Change","at Ending Date";
        Period5: Option "before Starting Date","Net Change","at Ending Date";
        Period6: Option "before Starting Date","Net Change","at Ending Date";
        EmpRec: Record 5200;
        LineAmount: Decimal;
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        Maintenance___AnalysisCaptionLbl: Label 'Maintenance - Analysis';
        TotalCaptionLbl: Label 'Total';

    local procedure MakeGroupTotalText()
    begin
        CASE GroupTotals OF
            GroupTotals::"FA Class":
                GroupCodeName := "Fixed Asset".FIELDCAPTION("FA Class Code");
            GroupTotals::"FA SubClass":
                GroupCodeName := "Fixed Asset".FIELDCAPTION("FA Subclass Code");
            GroupTotals::"Main Asset":
                GroupCodeName := "Fixed Asset".FIELDCAPTION("Main Asset/Component");
            GroupTotals::"Global Dimension 1":
                GroupCodeName := "Fixed Asset".FIELDCAPTION("Global Dimension 1 Code");
            GroupTotals::"FA Location":
                GroupCodeName := "Fixed Asset".FIELDCAPTION("FA Location Code");
            GroupTotals::"Global Dimension 2":
                GroupCodeName := "Fixed Asset".FIELDCAPTION("Global Dimension 2 Code");
            GroupTotals::"FA Posting Group":
                GroupCodeName := "Fixed Asset".FIELDCAPTION("FA Posting Group");
        END;
        IF GroupCodeName <> '' THEN
            GroupCodeName := Text001 + ': ' + GroupCodeName;
    end;

    local procedure ValidateDates()
    begin
        IF (EndingDate = 0D) OR (StartingDate = 0D) THEN
            ERROR(Text002);

        IF (EndingDate > 0D) AND (StartingDate > EndingDate) THEN
            ERROR(Text003);
    end;

    local procedure MakeAmountHeadLine(i: Integer; PostingType: Code[10]; Period: Option "before Starting Date","Net Change","at Ending Date")
    begin
        IF Period = Period::"before Starting Date" THEN
            IF StartingDate < 01010002D THEN
                ERROR(
                  Text004, SELECTSTR(Period + 1, Text006));
        IF PostingType <> '' THEN
            HeadLineText[i] := STRSUBSTNO('%1 %2', PostingType, SELECTSTR(Period + 1, Text006))
        ELSE
            HeadLineText[i] := STRSUBSTNO('%1', SELECTSTR(Period + 1, Text006));
    end;

    local procedure MakeGroupHeadLine()
    begin
        WITH "Fixed Asset" DO BEGIN
            CASE GroupTotals OF
                GroupTotals::"FA Class":
                    GroupHeadLine := "FA Class Code";
                GroupTotals::"FA SubClass":
                    GroupHeadLine := "FA Subclass Code";
                GroupTotals::"Main Asset":
                    BEGIN
                        GroupHeadLine := STRSUBSTNO('%1 %2', SELECTSTR(GroupTotals + 1, Text007), "Component of Main Asset");
                        IF "Component of Main Asset" = '' THEN
                            GroupHeadLine := GroupHeadLine + '*****';
                    END;
                GroupTotals::"Global Dimension 1":
                    GroupHeadLine := "Global Dimension 1 Code";
                GroupTotals::"FA Location":
                    GroupHeadLine := "FA Location Code";
                GroupTotals::"Global Dimension 2":
                    GroupHeadLine := "Global Dimension 2 Code";
                GroupTotals::"FA Posting Group":
                    GroupHeadLine := "FA Posting Group";
            END;
        END;
        IF GroupHeadLine = '' THEN
            GroupHeadLine := '*****';
    end;

    local procedure CalculateAmount(MaintenanceCode: Code[10]; Period: Option "before Starting Date","Net Change","at Ending Date"): Decimal
    var
        EndingDate2: Date;
    begin
        EndingDate2 := EndingDate;
        IF EndingDate2 = 0D THEN
            EndingDate2 := 31129999D;
        WITH MaintenanceLedgEntry DO BEGIN
            IF DateSelection = DateSelection::"Posting Date" THEN
                CASE Period OF
                    Period::"before Starting Date":
                        SETRANGE("Posting Date", 0D, StartingDate - 1);
                    Period::"Net Change":
                        SETRANGE("Posting Date", StartingDate, EndingDate2);
                    Period::"at Ending Date":
                        SETRANGE("Posting Date", 0D, EndingDate2);
                END;
            IF DateSelection = DateSelection::"FA Posting Date" THEN
                CASE Period OF
                    Period::"before Starting Date":
                        SETRANGE("FA Posting Date", 0D, StartingDate - 1);
                    Period::"Net Change":
                        SETRANGE("FA Posting Date", StartingDate, EndingDate2);
                    Period::"at Ending Date":
                        SETRANGE("FA Posting Date", 0D, EndingDate2);
                END;
            SETRANGE("Maintenance Code");
            IF MaintenanceCode <> '' THEN
                SETRANGE("Maintenance Code", MaintenanceCode);
            CALCSUMS(Amount);
            EXIT(Amount);
        END;
    end;
}

