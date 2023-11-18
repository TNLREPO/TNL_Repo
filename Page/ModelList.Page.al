page 50037 "Model List"
{
    CardPageID = "Parts By Model Card";
    DeleteAllowed = false;
    ModifyAllowed = true;
    PageType = List;
    SourceTable = Table50014;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Model Description"; "Model Description")
                {
                }
                field(unitinoperation; unitinoperation)
                {
                    Caption = 'Units in Operation';
                    DecimalPlaces = 0 : 0;
                }
                field("Inventory Line Item"; "Inventory Line Item")
                {
                }
                field("Other Specification"; "Other Specification")
                {
                }
                field("Prod Date"; "Prod Date")
                {
                }
            }
        }
    }

    actions
    {
    }
}

