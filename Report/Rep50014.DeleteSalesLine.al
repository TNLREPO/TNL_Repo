namespace AL_TNL.AL_TNL;

using Microsoft.Sales.Document;

report 50014 "Delete Sales Line"
{
    ApplicationArea = All;
    Caption = 'Delete Sales Line';
    UsageCategory = Lists;
    ProcessingOnly = true;

    dataset
    {
        dataitem(SalesLine; "Sales Line")
        {
            RequestFilterFields = "Document Type";
            RequestFilterHeading = 'Filters';
            trigger OnAfterGetRecord()
            var
                myInt: Integer;

            begin
                SalesLine.Delete(true);

            end;
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }
}
