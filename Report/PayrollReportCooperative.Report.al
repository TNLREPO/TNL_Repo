report 50068 "Payroll Report Co-operative"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PayrollReportCooperative.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table50006)
        {
            column(EmployeeNo_PayrollPayslipLines; "Payroll-Payslip Lines."."Employee No")
            {
            }
            dataitem(DataItem1000000002; Table50001)
            {
                DataItemTableView = WHERE (E/D Code=CONST(22300|22400));
                column(EDCode_PayrollEDCodes; "Payroll-E/D Codes."."E/D Code")
                {
                }
                column(EDAmount_PayrollEDCodes; "Payroll-E/D Codes."."ED Amount")
                {
                }
            }
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
}

