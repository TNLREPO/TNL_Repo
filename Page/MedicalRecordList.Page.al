page 50086 "Medical Record List"
{
    CardPageID = "Medical record Card";
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50092;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Employee No"; "Employee No")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Transaction Type"; "Transaction Type")
                {
                }
                field("Transaction Description"; "Transaction Description")
                {
                }
                field("Hospital Code"; "Hospital Code")
                {
                }
                field("Yearly Medical Limit"; "Yearly Medical Limit")
                {
                }
                field(Beneficiary; Beneficiary)
                {
                }
                field("Ref No."; "Ref No.")
                {
                }
                field(Amount; Amount)
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

