page 50119 "Expense Analysis List"
{
    CardPageID = "Expense Analysis Card";
    PageType = List;
    SourceTable = Table50112;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("G/L Account No."; "G/L Account No.")
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
                field("Account Name"; "Account Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

