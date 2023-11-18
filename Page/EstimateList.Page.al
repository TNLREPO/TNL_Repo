page 80009 "Estimate List"
{
    CardPageID = "Estimate Card";
    PageType = List;
    SourceTable = Table50121;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Operation Code"; "Operation Code")
                {
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
    }
}

