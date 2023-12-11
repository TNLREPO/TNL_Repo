report 50024 "CASH  Pay List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CASHPayList.rdlc';

    dataset
    {
        dataitem(DataItem7528; Table5200)
        {
            DataItemTableView = SORTING (Business Unit, Global Dimension 1 Code);
            RequestFilterFields = "Business Unit", "Posting Group", "Mode of payment", "Period Filter", "ED Filter";
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(COMPANYNAME; COMPANYNAME)
            {
            }
            column(Employee__Business_Unit_; "Business Unit")
            {
            }
            column(Employee__No__; "No.")
            {
            }
            column(FullName; FullName)
            {
            }
            column(Employee__Mode_of_payment_; "Mode of payment")
            {
            }
            column(Employee_EDAmount; EDAmount)
            {
            }
            column(Employee__Global_Dimension_1_Code_; "Global Dimension 1 Code")
            {
            }
            column(TotalFor___FIELDCAPTION__Business_Unit__; TotalFor + FIELDCAPTION("Business Unit"))
            {
            }
            column(Employee_EDAmount_Control32; EDAmount)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(CASH__Pay_ListCaption; CASH__Pay_ListCaptionLbl)
            {
            }
            column(Employee__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(NameCaption; NameCaptionLbl)
            {
            }
            column(Employee__Mode_of_payment_Caption; FIELDCAPTION("Mode of payment"))
            {
            }
            column(Employee_EDAmountCaption; FIELDCAPTION(EDAmount))
            {
            }
            column(SignatureCaption; SignatureCaptionLbl)
            {
            }
            column(Employee__Global_Dimension_1_Code_Caption; FIELDCAPTION("Global Dimension 1 Code"))
            {
            }
            column(Employee__Business_Unit_Caption; FIELDCAPTION("Business Unit"))
            {
            }
            column(EmptyStringCaption; EmptyStringCaptionLbl)
            {
            }

            trigger OnAfterGetRecord()
            begin
                IF Employee.Blocked THEN CurrReport.SKIP; //Added by Adam to skip Blocked Employees
                //Employee.SETFILTER(Employee."ED Filter",'3000');
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO("Business Unit");
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
        TotalFor: Label 'Total for ';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        CASH__Pay_ListCaptionLbl: Label 'CASH  Pay List';
        NameCaptionLbl: Label 'Name';
        SignatureCaptionLbl: Label 'Signature';
        EmptyStringCaptionLbl: Label '...................................................................................';
}

