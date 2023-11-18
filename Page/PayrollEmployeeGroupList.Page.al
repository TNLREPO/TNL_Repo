page 50002 "Payroll-Employee Group List"
{
    CardPageID = "Employee Group Header.";
    DeleteAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50009;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Posting Group Code"; "Posting Group Code")
                {
                }
                field(Code; Code)
                {
                }
                field("Staff Name"; "Staff Name")
                {
                }
                field("Gross Pay"; "Gross Pay")
                {
                }
                field("Tax Charged"; "Tax Charged")
                {
                }
                field("Tax Deducted"; "Tax Deducted")
                {
                }
                field("Taxable Pay"; "Taxable Pay")
                {
                }
                field("Total Deductions"; "Total Deductions")
                {
                }
                field("Net Pay Due"; "Net Pay Due")
                {
                }
            }
        }
    }

    actions
    {
    }
}

