page 50224 "Date Picker"
{
    Caption = 'Date Picker';
    DataCaptionExpression = FORMAT("Period Start", 0, '<Year4> <Month Text>');
    PageType = Card;
    SourceTable = Table2000000007;
    SourceTableView = SORTING (Period Type, Period Start)
                      WHERE (Period Type=CONST(Month));

    layout
    {
    }

    actions
    {
        area(processing)
        {
            action(btnPrevYear)
            {
                Enabled = btnPrevYearEnable;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    IF g_intCurrYear = 1 THEN BEGIN
                        btnPrevYearEnable := FALSE;
                        btnNextYearEnable := TRUE;
                    END ELSE BEGIN
                        g_intCurrYear -= 1;
                        btnPrevYearEnable := TRUE;
                        btnNextYearEnable := TRUE;
                        InitWholeMonth;
                        CurrPage.UPDATE(FALSE);
                    END;
                end;
            }
            action(btnNextYear)
            {
                Enabled = btnNextYearEnable;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    IF g_intCurrYear = 9999 THEN BEGIN
                        btnPrevYearEnable := TRUE;
                        btnNextYearEnable := FALSE;
                    END ELSE BEGIN
                        g_intCurrYear += 1;
                        btnPrevYearEnable := TRUE;
                        btnNextYearEnable := TRUE;
                        InitWholeMonth;
                        CurrPage.UPDATE(FALSE);
                    END;
                end;
            }
            action(btnPrevMonth)
            {
                Enabled = btnPrevMonthEnable;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    IF g_intCurrMonth = 1 THEN BEGIN
                        btnPrevMonthEnable := FALSE;
                        btnNextMonthEnable := TRUE;
                    END ELSE BEGIN
                        g_intCurrMonth -= 1;
                        btnPrevMonthEnable := TRUE;
                        btnNextMonthEnable := TRUE;
                        InitWholeMonth;
                        CurrPage.UPDATE(FALSE);
                    END;
                end;
            }
            action(btnNextMonth)
            {
                Enabled = btnNextMonthEnable;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    IF g_intCurrMonth = 12 THEN BEGIN
                        btnPrevMonthEnable := TRUE;
                        btnNextMonthEnable := FALSE;
                    END ELSE BEGIN
                        g_intCurrMonth += 1;
                        btnPrevMonthEnable := TRUE;
                        btnNextMonthEnable := TRUE;
                        InitWholeMonth;
                        CurrPage.UPDATE(FALSE);
                    END;
                end;
            }
            action(btn01Sun)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn01SunVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn01Sun');
                end;
            }
            action(btn01Mon)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn01MonVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn01Mon');
                end;
            }
            action(btn01Tue)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn01TueVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn01Tue');
                end;
            }
            action(btn01Wed)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn01WedVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn01Wed');
                end;
            }
            action(btn02Sun)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn02SunVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn02Sun');
                end;
            }
            action(btn02Mon)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn02MonVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn02Mon');
                end;
            }
            action(btn03Sun)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn03SunVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn03Sun');
                end;
            }
            action(btn03Mon)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn03MonVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn03Mon');
                end;
            }
            action(btn04Sun)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn04SunVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn04Sun');
                end;
            }
            action(btn04Mon)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn04MonVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn04Mon');
                end;
            }
            action(btn05Sun)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn05SunVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn05Sun');
                end;
            }
            action(btn05Mon)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn05MonVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn05Mon');
                end;
            }
            action(btn06Sun)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn06SunVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn06Sun');
                end;
            }
            action(btn01Thu)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn01ThuVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn01Thu');
                end;
            }
            action(btn06Mon)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn06MonVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn06Mon');
                end;
            }
            action(btn01Fri)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn01FriVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn01Fri');
                end;
            }
            action(btn02Tue)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn02TueVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn02Tue');
                end;
            }
            action(btn01Sat)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn01SatVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn01Sat');
                end;
            }
            action(btn02Wed)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn02WedVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn02Wed');
                end;
            }
            action(btn02Thu)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn02ThuVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn02Thu');
                end;
            }
            action(btn02Fri)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn02FriVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn02Fri');
                end;
            }
            action(btn03Tue)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn03TueVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn03Tue');
                end;
            }
            action(btn02Sat)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn02SatVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn02Sat');
                end;
            }
            action(btn03Wed)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn03WedVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn03Wed');
                end;
            }
            action(btn03Thu)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn03ThuVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn03Thu');
                end;
            }
            action(btn03Fri)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn03FriVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn03Fri');
                end;
            }
            action(btn04Tue)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn04TueVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn04Tue');
                end;
            }
            action(btn03Sat)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn03SatVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn03Sat');
                end;
            }
            action(btn04Wed)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn04WedVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn04Wed');
                end;
            }
            action(btn04Thu)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn04ThuVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn04Thu');
                end;
            }
            action(btn04Fri)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn04FriVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn04Fri');
                end;
            }
            action(btn05Tue)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn05TueVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn05Tue');
                end;
            }
            action(btn04Sat)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn04SatVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn04Sat');
                end;
            }
            action(btn05Wed)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn05WedVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn05Wed');
                end;
            }
            action(btn05Thu)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn05ThuVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn05Thu');
                end;
            }
            action(btn05Fri)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn05FriVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn05Fri');
                end;
            }
            action(btn05Sat)
            {
                Caption = '           ';
                Promoted = true;
                PromotedCategory = Process;
                Visible = btn05SatVisible;

                trigger OnAction()
                begin
                    UpdateSelectControl('btn05Sat');
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        /*FORMATgdatWholeMonth5440443960Day6239OnFormat;
        FORMATgdatWholeMonth35440443960Day6239OnFormat;
        FORMATgdatWholeMonth28440443960Day6239OnFormat;
        FORMATgdatWholeMonth21440443960Day6239OnFormat;
        FORMATgdatWholeMonth14440443960Day6239OnFormat;
        FORMATgdatWholeMonth7440443960Day6239OnFormat;
        FORMATgdatWholeMonth34440443960Day6239OnFormat;
        FORMATgdatWholeMonth27440443960Day6239OnFormat;
        FORMATgdatWholeMonth20440443960Day6239OnFormat;
        FORMATgdatWholeMonth13440443960Day6239OnFormat;
        FORMATgdatWholeMonth6440443960Day6239OnFormat;
        FORMATgdatWholeMonth29440443960Day6239OnFormat;
        FORMATgdatWholeMonth30440443960Day6239OnFormat;
        FORMATgdatWholeMonth31440443960Day6239OnFormat;
        FORMATgdatWholeMonth32440443960Day6239OnFormat;
        FORMATgdatWholeMonth33440443960Day6239OnFormat;
        FORMATgdatWholeMonth26440443960Day6239OnFormat;
        FORMATgdatWholeMonth19440443960Day6239OnFormat;
        FORMATgdatWholeMonth12440443960Day6239OnFormat;
        FORMATgdatWholeMonth25440443960Day6239OnFormat;
        FORMATgdatWholeMonth18440443960Day6239OnFormat;
        FORMATgdatWholeMonth11440443960Day6239OnFormat;
        FORMATgdatWholeMonth4440443960Day6239OnFormat;
        FORMATgdatWholeMonth22440443960Day6239OnFormat;
        FORMATgdatWholeMonth23440443960Day6239OnFormat;
        FORMATgdatWholeMonth24440443960Day6239OnFormat;
        FORMATgdatWholeMonth17440443960Day6239OnFormat;
        FORMATgdatWholeMonth10440443960Day6239OnFormat;
        FORMATgdatWholeMonth3440443960Day6239OnFormat;
        FORMATgdatWholeMonth15440443960Day6239OnFormat;
        FORMATgdatWholeMonth16440443960Day6239OnFormat;
        FORMATgdatWholeMonth9440443960Day6239OnFormat;
        FORMATgdatWholeMonth2440443960Day6239OnFormat;
        FORMATgdatWholeMonth8440443960Day6239OnFormat;
        FORMATgdatWholeMonth1440443960Day6239OnFormat;
        FORMATgdatWholeMonth37440443960Day6239OnFormat;
        FORMATgdatWholeMonth36440443960Day6239OnFormat;
                                                       */

    end;

    trigger OnInit()
    begin
        btn06SunVisible := TRUE;
        btn06MonVisible := TRUE;
        btn01SunVisible := TRUE;
        btn02SunVisible := TRUE;
        btn01MonVisible := TRUE;
        btn02MonVisible := TRUE;
        btn03MonVisible := TRUE;
        btn03SunVisible := TRUE;
        btn01TueVisible := TRUE;
        btn02TueVisible := TRUE;
        btn03TueVisible := TRUE;
        btn04TueVisible := TRUE;
        btn04MonVisible := TRUE;
        btn04SunVisible := TRUE;
        btn01WedVisible := TRUE;
        btn02WedVisible := TRUE;
        btn03WedVisible := TRUE;
        btn04WedVisible := TRUE;
        btn02ThuVisible := TRUE;
        btn03ThuVisible := TRUE;
        btn04ThuVisible := TRUE;
        btn05ThuVisible := TRUE;
        btn05WedVisible := TRUE;
        btn05TueVisible := TRUE;
        btn05MonVisible := TRUE;
        btn05SunVisible := TRUE;
        btn01FriVisible := TRUE;
        btn02FriVisible := TRUE;
        btn03FriVisible := TRUE;
        btn04FriVisible := TRUE;
        btn05FriVisible := TRUE;
        btn01SatVisible := TRUE;
        btn02SatVisible := TRUE;
        btn03SatVisible := TRUE;
        btn04SatVisible := TRUE;
        btn05SatVisible := TRUE;
        btn01ThuVisible := TRUE;
        btnNextMonthEnable := TRUE;
        btnPrevMonthEnable := TRUE;
        btnNextYearEnable := TRUE;
        btnPrevYearEnable := TRUE;
        g_datCurrDate := WORKDATE;
        g_intCurrYear := DATE2DMY(WORKDATE, 3);
        g_intCurrMonth := DATE2DMY(WORKDATE, 2);
        g_codLastControlCode := '';
        g_codCurrControlCode := '';
    end;

    trigger OnOpenPage()
    begin
        InitWholeMonth;
    end;

    var
        g_intCurrYear: Integer;
        g_intCurrMonth: Integer;
        g_datWholeMonth: array[37] of Date;
        g_datCurrDate: Date;
        g_codLastControlCode: Code[30];
        g_codCurrControlCode: Code[30];
        [InDataSet]
        btnPrevYearEnable: Boolean;
        [InDataSet]
        btnNextYearEnable: Boolean;
        [InDataSet]
        btnPrevMonthEnable: Boolean;
        [InDataSet]
        btnNextMonthEnable: Boolean;
        [InDataSet]
        btn01ThuVisible: Boolean;
        [InDataSet]
        tboxDate01ThuEmphasize: Boolean;
        [InDataSet]
        btn05SatVisible: Boolean;
        [InDataSet]
        tboxDate05SatEmphasize: Boolean;
        [InDataSet]
        btn04SatVisible: Boolean;
        [InDataSet]
        tboxDate04SatEmphasize: Boolean;
        [InDataSet]
        btn03SatVisible: Boolean;
        [InDataSet]
        tboxDate03SatEmphasize: Boolean;
        [InDataSet]
        btn02SatVisible: Boolean;
        [InDataSet]
        tboxDate02SatEmphasize: Boolean;
        [InDataSet]
        btn01SatVisible: Boolean;
        [InDataSet]
        tboxDate01SatEmphasize: Boolean;
        [InDataSet]
        btn05FriVisible: Boolean;
        [InDataSet]
        tboxDate05FriEmphasize: Boolean;
        [InDataSet]
        btn04FriVisible: Boolean;
        [InDataSet]
        tboxDate04FriEmphasize: Boolean;
        [InDataSet]
        btn03FriVisible: Boolean;
        [InDataSet]
        tboxDate03FriEmphasize: Boolean;
        [InDataSet]
        btn02FriVisible: Boolean;
        [InDataSet]
        tboxDate02FriEmphasize: Boolean;
        [InDataSet]
        btn01FriVisible: Boolean;
        [InDataSet]
        tboxDate01FriEmphasize: Boolean;
        [InDataSet]
        btn05SunVisible: Boolean;
        [InDataSet]
        tboxDate05SunEmphasize: Boolean;
        [InDataSet]
        btn05MonVisible: Boolean;
        [InDataSet]
        tboxDate05MonEmphasize: Boolean;
        [InDataSet]
        btn05TueVisible: Boolean;
        [InDataSet]
        tboxDate05TueEmphasize: Boolean;
        [InDataSet]
        btn05WedVisible: Boolean;
        [InDataSet]
        tboxDate05WedEmphasize: Boolean;
        [InDataSet]
        btn05ThuVisible: Boolean;
        [InDataSet]
        tboxDate05ThuEmphasize: Boolean;
        [InDataSet]
        btn04ThuVisible: Boolean;
        [InDataSet]
        tboxDate04ThuEmphasize: Boolean;
        [InDataSet]
        btn03ThuVisible: Boolean;
        [InDataSet]
        tboxDate03ThuEmphasize: Boolean;
        [InDataSet]
        btn02ThuVisible: Boolean;
        [InDataSet]
        tboxDate02ThuEmphasize: Boolean;
        [InDataSet]
        btn04WedVisible: Boolean;
        [InDataSet]
        tboxDate04WedEmphasize: Boolean;
        [InDataSet]
        btn03WedVisible: Boolean;
        [InDataSet]
        tboxDate03WedEmphasize: Boolean;
        [InDataSet]
        btn02WedVisible: Boolean;
        [InDataSet]
        tboxDate02WedEmphasize: Boolean;
        [InDataSet]
        btn01WedVisible: Boolean;
        [InDataSet]
        tboxDate01WedEmphasize: Boolean;
        [InDataSet]
        btn04SunVisible: Boolean;
        [InDataSet]
        tboxDate04SunEmphasize: Boolean;
        [InDataSet]
        btn04MonVisible: Boolean;
        [InDataSet]
        tboxDate04MonEmphasize: Boolean;
        [InDataSet]
        btn04TueVisible: Boolean;
        [InDataSet]
        tboxDate04TueEmphasize: Boolean;
        [InDataSet]
        btn03TueVisible: Boolean;
        [InDataSet]
        tboxDate03TueEmphasize: Boolean;
        [InDataSet]
        btn02TueVisible: Boolean;
        [InDataSet]
        tboxDate02TueEmphasize: Boolean;
        [InDataSet]
        btn01TueVisible: Boolean;
        [InDataSet]
        tboxDate01TueEmphasize: Boolean;
        [InDataSet]
        btn03SunVisible: Boolean;
        [InDataSet]
        tboxDate03SunEmphasize: Boolean;
        [InDataSet]
        btn03MonVisible: Boolean;
        [InDataSet]
        tboxDate03MonEmphasize: Boolean;
        [InDataSet]
        btn02MonVisible: Boolean;
        [InDataSet]
        tboxDate02MonEmphasize: Boolean;
        [InDataSet]
        btn01MonVisible: Boolean;
        [InDataSet]
        tboxDate01MonEmphasize: Boolean;
        [InDataSet]
        btn02SunVisible: Boolean;
        [InDataSet]
        tboxDate02SunEmphasize: Boolean;
        [InDataSet]
        btn01SunVisible: Boolean;
        [InDataSet]
        tboxDate01SunEmphasize: Boolean;
        [InDataSet]
        btn06MonVisible: Boolean;
        [InDataSet]
        tboxDate06MonEmphasize: Boolean;
        [InDataSet]
        btn06SunVisible: Boolean;
        [InDataSet]
        tboxDate06SunEmphasize: Boolean;
        Text19042668: Label ' ';
        Text19064905: Label 'SUN';
        Text19071699: Label 'MON';
        Text19030605: Label 'TUE';
        Text19065387: Label 'WED';
        Text19045213: Label 'THU';
        Text19063203: Label 'FRI';
        Text19062519: Label 'SAT';

    [Scope('Internal')]
    procedure SetCurrDate(p_datCurrDate: Date)
    begin
        g_datCurrDate := p_datCurrDate;
        g_intCurrYear := DATE2DMY(p_datCurrDate, 3);
        g_intCurrMonth := DATE2DMY(p_datCurrDate, 2);
    end;

    [Scope('Internal')]
    procedure GetCurrDate(): Date
    begin
        EXIT(g_datCurrDate);
    end;

    [Scope('Internal')]
    procedure InitWholeMonth()
    var
        l_intLoop: Integer;
        l_datCalc: Date;
    begin
        GET("Period Type"::Month, DMY2DATE(1, g_intCurrMonth, g_intCurrYear));
        l_datCalc := "Period Start";

        FOR l_intLoop := 1 TO 37 DO BEGIN
            IF "Period Start" = l_datCalc THEN BEGIN
                IF (DATE2DWY("Period Start", 1) = 7) AND (l_intLoop = 1) THEN BEGIN
                    g_datWholeMonth[1] := "Period Start";
                    l_datCalc := CALCDATE('+1D', l_datCalc);
                END ELSE
                    IF (DATE2DWY("Period Start", 1) + 1) > l_intLoop THEN
                        g_datWholeMonth[l_intLoop] := 0D
                    ELSE BEGIN
                        g_datWholeMonth[l_intLoop] := l_datCalc;
                        l_datCalc := CALCDATE('+1D', l_datCalc);
                    END;
            END ELSE BEGIN
                IF "Period End" >= l_datCalc THEN
                    g_datWholeMonth[l_intLoop] := l_datCalc
                ELSE
                    g_datWholeMonth[l_intLoop] := 0D;

                l_datCalc := CALCDATE('+1D', l_datCalc);
            END;
        END;

        g_codLastControlCode := '';
        g_codCurrControlCode := '';
    end;

    [Scope('Internal')]
    procedure UpdateSelectControl(p_codControlCode: Code[30])
    begin
        IF g_codCurrControlCode = p_codControlCode THEN
            EXIT;

        g_codLastControlCode := g_codCurrControlCode;
        g_codCurrControlCode := p_codControlCode;

        CASE p_codControlCode OF
            'BTN01SUN':
                g_datCurrDate := g_datWholeMonth[1];
            'BTN01MON':
                g_datCurrDate := g_datWholeMonth[2];
            'BTN01TUE':
                g_datCurrDate := g_datWholeMonth[3];
            'BTN01WED':
                g_datCurrDate := g_datWholeMonth[4];
            'BTN01THU':
                g_datCurrDate := g_datWholeMonth[5];
            'BTN01FRI':
                g_datCurrDate := g_datWholeMonth[6];
            'BTN01SAT':
                g_datCurrDate := g_datWholeMonth[7];
            'BTN02SUN':
                g_datCurrDate := g_datWholeMonth[8];
            'BTN02MON':
                g_datCurrDate := g_datWholeMonth[9];
            'BTN02TUE':
                g_datCurrDate := g_datWholeMonth[10];
            'BTN02WED':
                g_datCurrDate := g_datWholeMonth[11];
            'BTN02THU':
                g_datCurrDate := g_datWholeMonth[12];
            'BTN02FRI':
                g_datCurrDate := g_datWholeMonth[13];
            'BTN02SAT':
                g_datCurrDate := g_datWholeMonth[14];
            'BTN03SUN':
                g_datCurrDate := g_datWholeMonth[15];
            'BTN03MON':
                g_datCurrDate := g_datWholeMonth[16];
            'BTN03TUE':
                g_datCurrDate := g_datWholeMonth[17];
            'BTN03WED':
                g_datCurrDate := g_datWholeMonth[18];
            'BTN03THU':
                g_datCurrDate := g_datWholeMonth[19];
            'BTN03FRI':
                g_datCurrDate := g_datWholeMonth[20];
            'BTN03SAT':
                g_datCurrDate := g_datWholeMonth[21];
            'BTN04SUN':
                g_datCurrDate := g_datWholeMonth[22];
            'BTN04MON':
                g_datCurrDate := g_datWholeMonth[23];
            'BTN04TUE':
                g_datCurrDate := g_datWholeMonth[24];
            'BTN04WED':
                g_datCurrDate := g_datWholeMonth[25];
            'BTN04THU':
                g_datCurrDate := g_datWholeMonth[26];
            'BTN04FRI':
                g_datCurrDate := g_datWholeMonth[27];
            'BTN04SAT':
                g_datCurrDate := g_datWholeMonth[28];
            'BTN05SUN':
                g_datCurrDate := g_datWholeMonth[29];
            'BTN05MON':
                g_datCurrDate := g_datWholeMonth[30];
            'BTN05TUE':
                g_datCurrDate := g_datWholeMonth[31];
            'BTN05WED':
                g_datCurrDate := g_datWholeMonth[32];
            'BTN05THU':
                g_datCurrDate := g_datWholeMonth[33];
            'BTN05FRI':
                g_datCurrDate := g_datWholeMonth[34];
            'BTN05SAT':
                g_datCurrDate := g_datWholeMonth[35];
            'BTN06SUN':
                g_datCurrDate := g_datWholeMonth[36];
            'BTN06MON':
                g_datCurrDate := g_datWholeMonth[37];
        END;
    end;

    local procedure gintCurrYearOnAfterValidate()
    begin
        btnPrevYearEnable := TRUE;
        btnNextYearEnable := TRUE;
        InitWholeMonth;
        CurrPage.UPDATE(FALSE);
    end;

    local procedure gintCurrMonthOnAfterValidate()
    begin
        btnPrevMonthEnable := TRUE;
        btnNextMonthEnable := TRUE;
        InitWholeMonth;
        CurrPage.UPDATE(FALSE);
    end;

    local procedure FORMATgdatWholeMonth5440443960()
    begin
        btn01ThuVisible := (g_datWholeMonth[5] <> 0D);
        IF g_codLastControlCode = 'BTN01THU' THEN
            tboxDate01ThuEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN01THU' THEN
                tboxDate01ThuEmphasize := TRUE
            ELSE
                tboxDate01ThuEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3544044396()
    begin
        btn05SatVisible := (g_datWholeMonth[35] <> 0D);
        IF g_codLastControlCode = 'BTN05SAT' THEN
            tboxDate05SatEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN05SAT' THEN
                tboxDate05SatEmphasize := TRUE
            ELSE
                tboxDate05SatEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2844044396()
    begin
        btn04SatVisible := (g_datWholeMonth[28] <> 0D);
        IF g_codLastControlCode = 'BTN04SAT' THEN
            tboxDate04SatEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN04SAT' THEN
                tboxDate04SatEmphasize := TRUE
            ELSE
                tboxDate04SatEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2144044396()
    begin
        btn03SatVisible := (g_datWholeMonth[21] <> 0D);
        IF g_codLastControlCode = 'BTN03SAT' THEN
            tboxDate03SatEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN03SAT' THEN
                tboxDate03SatEmphasize := TRUE
            ELSE
                tboxDate03SatEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1444044396()
    begin
        btn02SatVisible := (g_datWholeMonth[14] <> 0D);
        IF g_codLastControlCode = 'BTN02SAT' THEN
            tboxDate02SatEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN02SAT' THEN
                tboxDate02SatEmphasize := TRUE
            ELSE
                tboxDate02SatEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth7440443960()
    begin
        btn01SatVisible := (g_datWholeMonth[7] <> 0D);
        IF g_codLastControlCode = 'BTN01SAT' THEN
            tboxDate01SatEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN01SAT' THEN
                tboxDate01SatEmphasize := TRUE
            ELSE
                tboxDate01SatEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3444044396()
    begin
        btn05FriVisible := (g_datWholeMonth[34] <> 0D);
        IF g_codLastControlCode = 'BTN05FRI' THEN
            tboxDate05FriEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN05FRI' THEN
                tboxDate05FriEmphasize := TRUE
            ELSE
                tboxDate05FriEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2744044396()
    begin
        btn04FriVisible := (g_datWholeMonth[27] <> 0D);
        IF g_codLastControlCode = 'BTN04FRI' THEN
            tboxDate04FriEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN04FRI' THEN
                tboxDate04FriEmphasize := TRUE
            ELSE
                tboxDate04FriEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2044044396()
    begin
        btn03FriVisible := (g_datWholeMonth[20] <> 0D);
        IF g_codLastControlCode = 'BTN03FRI' THEN
            tboxDate03FriEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN03FRI' THEN
                tboxDate03FriEmphasize := TRUE
            ELSE
                tboxDate03FriEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1344044396()
    begin
        btn02FriVisible := (g_datWholeMonth[13] <> 0D);
        IF g_codLastControlCode = 'BTN02FRI' THEN
            tboxDate02FriEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN02FRI' THEN
                tboxDate02FriEmphasize := TRUE
            ELSE
                tboxDate02FriEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth6440443960()
    begin
        btn01FriVisible := (g_datWholeMonth[6] <> 0D);
        IF g_codLastControlCode = 'BTN01FRI' THEN
            tboxDate01FriEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN01FRI' THEN
                tboxDate01FriEmphasize := TRUE
            ELSE
                tboxDate01FriEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2944044396()
    begin
        btn05SunVisible := (g_datWholeMonth[29] <> 0D);
        IF g_codLastControlCode = 'BTN05SUN' THEN
            tboxDate05SunEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN05SUN' THEN
                tboxDate05SunEmphasize := TRUE
            ELSE
                tboxDate05SunEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3044044396()
    begin
        btn05MonVisible := (g_datWholeMonth[30] <> 0D);
        IF g_codLastControlCode = 'BTN05MON' THEN
            tboxDate05MonEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN05MON' THEN
                tboxDate05MonEmphasize := TRUE
            ELSE
                tboxDate05MonEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3144044396()
    begin
        btn05TueVisible := (g_datWholeMonth[31] <> 0D);
        IF g_codLastControlCode = 'BTN05TUE' THEN
            tboxDate05TueEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN05TUE' THEN
                tboxDate05TueEmphasize := TRUE
            ELSE
                tboxDate05TueEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3244044396()
    begin
        btn05WedVisible := (g_datWholeMonth[32] <> 0D);
        IF g_codLastControlCode = 'BTN05WED' THEN
            tboxDate05WedEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN05WED' THEN
                tboxDate05WedEmphasize := TRUE
            ELSE
                tboxDate05WedEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3344044396()
    begin
        btn05ThuVisible := (g_datWholeMonth[33] <> 0D);
        IF g_codLastControlCode = 'BTN05THU' THEN
            tboxDate05ThuEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN05THU' THEN
                tboxDate05ThuEmphasize := TRUE
            ELSE
                tboxDate05ThuEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2644044396()
    begin
        btn04ThuVisible := (g_datWholeMonth[26] <> 0D);
        IF g_codLastControlCode = 'BTN04THU' THEN
            tboxDate04ThuEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN04THU' THEN
                tboxDate04ThuEmphasize := TRUE
            ELSE
                tboxDate04ThuEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1944044396()
    begin
        btn03ThuVisible := (g_datWholeMonth[19] <> 0D);
        IF g_codLastControlCode = 'BTN03THU' THEN
            tboxDate03ThuEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN03THU' THEN
                tboxDate03ThuEmphasize := TRUE
            ELSE
                tboxDate03ThuEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1244044396()
    begin
        btn02ThuVisible := (g_datWholeMonth[12] <> 0D);
        IF g_codLastControlCode = 'BTN02THU' THEN
            tboxDate02ThuEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN02THU' THEN
                tboxDate02ThuEmphasize := TRUE
            ELSE
                tboxDate02ThuEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2544044396()
    begin
        btn04WedVisible := (g_datWholeMonth[25] <> 0D);
        IF g_codLastControlCode = 'BTN04WED' THEN
            tboxDate04WedEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN04WED' THEN
                tboxDate04WedEmphasize := TRUE
            ELSE
                tboxDate04WedEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1844044396()
    begin
        btn03WedVisible := (g_datWholeMonth[18] <> 0D);
        IF g_codLastControlCode = 'BTN03WED' THEN
            tboxDate03WedEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN03WED' THEN
                tboxDate03WedEmphasize := TRUE
            ELSE
                tboxDate03WedEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1144044396()
    begin
        btn02WedVisible := (g_datWholeMonth[11] <> 0D);
        IF g_codLastControlCode = 'BTN02WED' THEN
            tboxDate02WedEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN02WED' THEN
                tboxDate02WedEmphasize := TRUE
            ELSE
                tboxDate02WedEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth4440443960()
    begin
        btn01WedVisible := (g_datWholeMonth[4] <> 0D);
        IF g_codLastControlCode = 'BTN01WED' THEN
            tboxDate01WedEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN01WED' THEN
                tboxDate01WedEmphasize := TRUE
            ELSE
                tboxDate01WedEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2244044396()
    begin
        btn04SunVisible := (g_datWholeMonth[22] <> 0D);
        IF g_codLastControlCode = 'BTN04SUN' THEN
            tboxDate04SunEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN04SUN' THEN
                tboxDate04SunEmphasize := TRUE
            ELSE
                tboxDate04SunEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2344044396()
    begin
        btn04MonVisible := (g_datWholeMonth[23] <> 0D);
        IF g_codLastControlCode = 'BTN04MON' THEN
            tboxDate04MonEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN04MON' THEN
                tboxDate04MonEmphasize := TRUE
            ELSE
                tboxDate04MonEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2444044396()
    begin
        btn04TueVisible := (g_datWholeMonth[24] <> 0D);
        IF g_codLastControlCode = 'BTN04TUE' THEN
            tboxDate04TueEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN04TUE' THEN
                tboxDate04TueEmphasize := TRUE
            ELSE
                tboxDate04TueEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1744044396()
    begin
        btn03TueVisible := (g_datWholeMonth[17] <> 0D);
        IF g_codLastControlCode = 'BTN03TUE' THEN
            tboxDate03TueEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN03TUE' THEN
                tboxDate03TueEmphasize := TRUE
            ELSE
                tboxDate03TueEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1044044396()
    begin
        btn02TueVisible := (g_datWholeMonth[10] <> 0D);
        IF g_codLastControlCode = 'BTN02TUE' THEN
            tboxDate02TueEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN02TUE' THEN
                tboxDate02TueEmphasize := TRUE
            ELSE
                tboxDate02TueEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3440443960()
    begin
        btn01TueVisible := (g_datWholeMonth[3] <> 0D);
        IF g_codLastControlCode = 'BTN01TUE' THEN
            tboxDate01TueEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN01TUE' THEN
                tboxDate01TueEmphasize := TRUE
            ELSE
                tboxDate01TueEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1544044396()
    begin
        btn03SunVisible := (g_datWholeMonth[15] <> 0D);
        IF g_codLastControlCode = 'BTN03SUN' THEN
            tboxDate03SunEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN03SUN' THEN
                tboxDate03SunEmphasize := TRUE
            ELSE
                tboxDate03SunEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1644044396()
    begin
        btn03MonVisible := (g_datWholeMonth[16] <> 0D);
        IF g_codLastControlCode = 'BTN03MON' THEN
            tboxDate03MonEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN03MON' THEN
                tboxDate03MonEmphasize := TRUE
            ELSE
                tboxDate03MonEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth9440443960()
    begin
        btn02MonVisible := (g_datWholeMonth[9] <> 0D);
        IF g_codLastControlCode = 'BTN02MON' THEN
            tboxDate02MonEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN02MON' THEN
                tboxDate02MonEmphasize := TRUE
            ELSE
                tboxDate02MonEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth2440443960()
    begin
        btn01MonVisible := (g_datWholeMonth[2] <> 0D);
        IF g_codLastControlCode = 'BTN01MON' THEN
            tboxDate01MonEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN01MON' THEN
                tboxDate01MonEmphasize := TRUE
            ELSE
                tboxDate01MonEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth8440443960()
    begin
        btn02SunVisible := (g_datWholeMonth[8] <> 0D);
        IF g_codLastControlCode = 'BTN02SUN' THEN
            tboxDate02SunEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN02SUN' THEN
                tboxDate02SunEmphasize := TRUE
            ELSE
                tboxDate02SunEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth1440443960()
    begin
        btn01SunVisible := (g_datWholeMonth[1] <> 0D);
        IF g_codLastControlCode = 'BTN01SUN' THEN
            tboxDate01SunEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN01SUN' THEN
                tboxDate01SunEmphasize := TRUE
            ELSE
                tboxDate01SunEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3744044396()
    begin
        btn06MonVisible := (g_datWholeMonth[37] <> 0D);
        IF g_codLastControlCode = 'BTN06MON' THEN
            tboxDate06MonEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN06MON' THEN
                tboxDate06MonEmphasize := TRUE
            ELSE
                tboxDate06MonEmphasize := FALSE;
    end;

    local procedure FORMATgdatWholeMonth3644044396()
    begin
        btn06SunVisible := (g_datWholeMonth[36] <> 0D);
        IF g_codLastControlCode = 'BTN06SUN' THEN
            tboxDate06SunEmphasize := FALSE
        ELSE
            IF g_codCurrControlCode = 'BTN06SUN' THEN
                tboxDate06SunEmphasize := TRUE
            ELSE
                tboxDate06SunEmphasize := FALSE;
    end;
}

