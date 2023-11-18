page 50107 "Expense Analysis Card"
{
    PageType = Card;
    SourceTable = Table50112;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("G/L Account No."; "G/L Account No.")
                {
                }
                field("Account Name"; "Account Name")
                {
                }
                field("Start Date"; "Start Date")
                {
                }
                field("End Date"; "End Date")
                {
                }
            }
            group()
            {
                part("Current Year"; 50110)
                {
                    Caption = 'Current Year';
                    SubPageLink = G/L Account No.=FIELD(G/L Account No.);
                }
                part("<Expense Analysis Subform>"; 50115)
                {
                    Caption = 'Previous Year';
                    SubPageLink = G/L Account No.=FIELD(G/L Account No.);
                }
            }
        }
        area(factboxes)
        {
            systempart(; Notes)
            {
            }
            systempart(; Links)
            {
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Import Entries")
            {
                Image = ImplementCostChanges;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    ImportEntries;
                end;
            }
        }
    }
}

