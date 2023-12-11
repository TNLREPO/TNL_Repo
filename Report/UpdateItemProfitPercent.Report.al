report 50000 "Update Item Profit Percent"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem(DataItem1000000000; Table27)
        {
            //The property 'DataItemTableView' shouldn't have an empty value.
            //DataItemTableView = '';
            RequestFilterFields = "No.";

            trigger OnAfterGetRecord()
            begin
                Window.UPDATE(1, "No.");

                // ItemRec.GET("No.");
                // ItemRec.SETFILTER("Inventory Posting Group",'N_PARTS');
                // IF ItemRec.FIND('-') THEN BEGIN
                VALIDATE("Price/Profit Calculation");
                MODIFY;
                //ItemRec.VALIDATE(ItemRec."Last Direct Cost");
            end;

            trigger OnPostDataItem()
            begin
                MESSAGE('Completed...!');
            end;

            trigger OnPreDataItem()
            begin
                Window.OPEN(Text000);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        ItemRec: Record 27;
        Text000: Label 'Processing Items #1##########';
        Window: Dialog;
}

