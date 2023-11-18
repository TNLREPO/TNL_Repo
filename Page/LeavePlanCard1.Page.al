page 50092 "Leave Plan Card-1"
{
    PageType = Card;
    SourceTable = Table50075;
    SourceTableView = SORTING (Employee No., Leave Period, Entry Type)
                      WHERE (Entry Type=CONST(PLAN));

    layout
    {
        area(content)
        {
            group(Plan)
            {
                field("Employee No."; "Employee No.")
                {
                }
                field(EmpREc.GetFullName("Employee No.");
                    EmpREc.GetFullName("Employee No."))
                {
                    Caption = 'Employee Name';
                }
                field("Leave Period"; "Leave Period")
                {

                    trigger OnLookup(var Text: Text): Boolean
                    begin
                        VALIDATE("Leave Period", SelectYear);
                    end;
                }
                field("Annual Duration"; "Annual Duration")
                {
                }
                field("Amount Due"; "Amount Due")
                {
                }
                field("Amount Paid"; "Amount Paid")
                {
                }
                field("Total Leaves Due"; "Total Leaves Due")
                {
                }
                field("Total Compassionate"; "Total Compassionate")
                {
                }
                field("Total Exam"; "Total Exam")
                {
                }
                field("Total Others"; "Total Others")
                {
                }
                field("Total Consuming"; "Total Consuming")
                {
                }
                field(RemainingLeave; RemainingLeave)
                {
                    Caption = 'Balance Leave to Enjoy';
                }
            }
            group(Duration)
            {
                grid()
                {
                    GridLayout = Rows;
                    group()
                    {
                        field("Start Date1"; "Start Date1")
                        {
                            Caption = 'From';
                        }
                        field("End Date1"; "End Date1")
                        {
                            Caption = 'To';
                        }
                        field("No. Days1"; "No. Days1")
                        {
                            Caption = 'No. of Days';
                            Editable = true;
                        }
                    }
                    group()
                    {
                        field("Start Date2"; "Start Date2")
                        {
                            ShowCaption = false;
                        }
                        field("End Date2"; "End Date2")
                        {
                            ShowCaption = false;
                        }
                        field("No. Days2"; "No. Days2")
                        {
                            Editable = true;
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Start Date3"; "Start Date3")
                        {
                            Caption = 'From';
                            ShowCaption = false;
                        }
                        field("End Date3"; "End Date3")
                        {
                            Caption = 'To';
                            ShowCaption = false;
                        }
                        field("No. Days3"; "No. Days3")
                        {
                            Caption = 'No. of Days';
                            Editable = true;
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Start Date4"; "Start Date4")
                        {
                            Caption = 'From';
                            ShowCaption = false;
                        }
                        field("End Date4"; "End Date4")
                        {
                            Caption = 'To';
                            ShowCaption = false;
                        }
                        field("No. Days4"; "No. Days4")
                        {
                            Caption = 'No. of Days';
                            Editable = false;
                            ShowCaption = false;
                        }
                    }
                }
                field(Registered; Registered)
                {
                }
            }
            group(Admin)
            {
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Register")
            {
                Caption = '&Register';
                Image = "Action";

                trigger OnAction()
                begin
                    RegPlan;
                end;
            }
            action("&Create Annual Leaves Plan")
            {
                Caption = '&Create Annual Leaves Plan';
            }
        }
    }

    var
        GenPCode: Codeunit "50001";
        EmpREc: Record 5200;
        EmpName: Text[100];
        PayRec: Record 50076;
        LRosteRec: Record 50077;
        ActualLeaves: Integer;
        ConSumingLeaves: Integer;
        Annual: Integer;
        RemLeaves: Integer;
        DtFilter: Text[30];
        "Net Total Leaves": Integer;
        LCat: Record 50074;
        LeaveYr: Integer;
        DateRec: Record 2000000007;
        DateForm: Page 50098;
        CurrentYr: Integer;
        LPeTemp: Integer;

    [Scope('Internal')]
    procedure SelectYear(): Integer
    begin
        CLEAR(DateForm);
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

        IF PAGE.RUNMODAL(PAGE::Date, DateRec) = ACTION::LookupOK THEN BEGIN
            CLEAR(DateForm);
            EXIT(DateRec."Period No.");
        END;

        EXIT(0);
    end;
}

