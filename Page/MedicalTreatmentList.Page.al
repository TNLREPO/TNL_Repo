page 70000 "Medical Treatment List"
{
    CardPageID = "Medical Treatment Costs";
    PageType = List;
    SourceTable = "Medical Record";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Employee No";Rec."Employee No")
                {
                }
                field("Transaction Date";Rec."Transaction Date")
                {
                }
                field("Transaction Type";Rec."Transaction Type")
                {
                }
                field("Transaction Description";Rec."Transaction Description")
                {
                }
                field("Hospital Code";Rec."Hospital Code")
                {
                }
                field("Yearly Medical Limit";Rec."Yearly Medical Limit")
                {
                }
                field(Beneficiary;Rec. Beneficiary)
                {
                }
                field("Ref No.";Rec."Ref No.")
                {
                }
                field(Amount;Rec. Amount)
                {
                }
                field("Global Dimension 1 Code";Rec."Global Dimension 1 Code")
                {
                }
            }
        }
    }

    actions
    {
    }
}

