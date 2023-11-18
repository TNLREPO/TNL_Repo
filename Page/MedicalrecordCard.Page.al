page 50087 "Medical record Card"
{
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Table50092;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Employee No"; "Employee No")
                {

                    trigger OnValidate()
                    begin
                        CurrPage.SAVERECORD;
                        CurrPage.UPDATE;
                    end;
                }
                field("Employee Name"; employee.GetFullName("Employee No"))
                {
                }
                field(Beneficiary; Beneficiary)
                {
                }
                field("Transaction Type"; "Transaction Type")
                {
                    Caption = 'Transaction Code';

                    trigger OnValidate()
                    begin
                        CheckTransType
                    end;
                }
                field("Transaction Description"; "Transaction Description")
                {
                }
                field("Hospital Code"; "Hospital Code")
                {
                    Editable = "Hospital CodeEditable";

                    trigger OnValidate()
                    begin
                        IF Vendor.GET("Hospital Code") THEN
                            VendName := Vendor.Name
                        ELSE
                            VendName := '';
                    end;
                }
                field("Vendor Name"; VendName)
                {
                    Editable = false;
                }
                field("Transaction Date"; "Transaction Date")
                {

                    trigger OnValidate()
                    begin
                        CurrPage.SAVERECORD;
                    end;
                }
                field("Ref No."; "Ref No.")
                {
                    Editable = "Ref No.Editable";
                }
                field("Yearly Medical Limit"; "Yearly Medical Limit")
                {
                }
                field("Medical Cost (YTD)"; "Medical Cost (YTD)")
                {
                    Caption = 'Medical Cost (YTD)';
                    Style = StrongAccent;
                    StyleExpr = TRUE;
                }
                field(Amount; Amount)
                {
                    Caption = 'This Expense Amount';

                    trigger OnValidate()
                    begin
                        CurrPage.SAVERECORD;
                        AmountOnAfterValidate;
                    end;
                }
                field("Remaining For The Year"; RemForYear)
                {
                    Caption = 'Remaining For The Year';
                    Editable = false;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("HHR Approval"; "HHR Approval")
                {
                }
            }
            group(Employee)
            {
                Caption = 'Employee';
                field("Business Unit"; "Business Unit")
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Medical Expense Total"; "Medical Expense Total")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("&Overview")
            {
                Caption = '&Overview';
                Image = "Action";
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50084;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        CheckTransType;
        HospitalCodeOnFormat;
    end;

    trigger OnInit()
    begin
        "Ref No.Editable" := TRUE;
        "Hospital CodeEditable" := TRUE;
    end;

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        NewRec := TRUE;
    end;

    trigger OnModifyRecord(): Boolean
    begin
        CheckTransType
    end;

    var
        employee: Record 5200;
        VendName: Text[100];
        Vendor: Record "23";
        YTDCost: Decimal;
        NewRec: Boolean;
        [InDataSet]
        "Hospital CodeEditable": Boolean;
        [InDataSet]
        "Ref No.Editable": Boolean;

    [Scope('Internal')]
    procedure CheckTransType()
    begin

        IF "Transaction Type" <> "Transaction Type"::H THEN BEGIN
            "Hospital CodeEditable" := FALSE;
            "Ref No.Editable" := FALSE;
            "Hospital Code" := '';
            "Ref No." := ''
        END
        ELSE BEGIN
            "Hospital CodeEditable" := TRUE;
            "Ref No.Editable" := TRUE;
        END
    end;

    [Scope('Internal')]
    procedure RemForYear(): Decimal
    var
        YrRem: Decimal;
    begin
        EXIT("Yearly Medical Limit" - "Medical Cost (YTD)")
    end;

    local procedure AmountOnAfterValidate()
    begin
        IF NewRec AND (RemForYear < 0) THEN
            ERROR('You CANNOT enter this value!\\Employee Will Overshoot his Yearly Allowed Medical Limit\You Need The HHR Approval.');
    end;

    local procedure HospitalCodeOnFormat()
    begin
        IF Vendor.GET("Hospital Code") THEN
            VendName := Vendor.Name
        ELSE
            VendName := '';
    end;
}

