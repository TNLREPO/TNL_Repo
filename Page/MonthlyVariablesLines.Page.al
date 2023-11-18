page 50027 "Monthly Variables Lines."
{
    CardPageID = "Monthly Var. Header Survey.";
    PageType = List;
    SourceTable = Table50017;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("E/D Code"; "E/D Code")
                {
                }
                field(Quantity; Quantity)
                {
                }
                field(Rate; Rate)
                {
                }
                field(Amount; Amount)
                {
                }
                field("Variable Unit"; "Variable Unit")
                {
                }
                field("Payslip Text"; "Payslip Text")
                {
                }
            }
        }
    }

    actions
    {
    }
}

