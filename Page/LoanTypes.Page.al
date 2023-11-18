page 50020 "Loan Types"
{
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = List;
    SourceTable = Table50019;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Code; Code)
                {
                }
                field(Description; Description)
                {
                }
                field("Loan Control Account"; "Loan Control Account")
                {
                }
                field("Default Interest Percent"; "Default Interest Percent")
                {
                }
                field("Default Journal Batch"; "Default Journal Batch")
                {
                }
                field("Loan ED"; "Loan ED")
                {
                }
                field("Up-Front Payment"; "Up-Front Payment")
                {
                }
                field("Default Number of Payments"; "Default Number of Payments")
                {
                }
            }
        }
    }

    actions
    {
    }
}

