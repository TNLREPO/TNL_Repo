report 50025 "employee list"
{
    DefaultLayout = RDLC;
    RDLCLayout = './employeelist.rdlc';

    dataset
    {
        dataitem(DataItem7528; Table5200)
        {
            DataItemTableView = SORTING (No.);
            RequestFilterFields = "No.";
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
            column(Employee__No__; "No.")
            {
            }
            column(FullName; FullName)
            {
            }
            column(Employee__Global_Dimension_1_Code_; "Global Dimension 1 Code")
            {
            }
            column(Employee__Posting_Group_; "Posting Group")
            {
            }
            column(Employee__Employment_Group_; "Employment Group")
            {
            }
            column(Employee_Designation; Designation)
            {
            }
            column(EmployeeCaption; EmployeeCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Employee__No__Caption; FIELDCAPTION("No."))
            {
            }
            column(NamesCaption; NamesCaptionLbl)
            {
            }
            column(Employee__Global_Dimension_1_Code_Caption; FIELDCAPTION("Global Dimension 1 Code"))
            {
            }
            column(Employee__Posting_Group_Caption; FIELDCAPTION("Posting Group"))
            {
            }
            column(Employee__Employment_Group_Caption; FIELDCAPTION("Employment Group"))
            {
            }
            column(Employee_DesignationCaption; FIELDCAPTION(Designation))
            {
            }

            trigger OnPreDataItem()
            begin
                DefaultPostingGroup := 'TNL';        //gpc.GetStoredGroup();
                FILTERGROUP(10);
                SETRANGE("Posting Group", DefaultPostingGroup);
                FILTERGROUP(0);
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
        gpc: Codeunit 50004;
        DefaultPostingGroup: Code[20];
        EmployeeCaptionLbl: Label 'Employee';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
        NamesCaptionLbl: Label 'Names';
}

