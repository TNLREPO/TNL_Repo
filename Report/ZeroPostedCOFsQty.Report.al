report 50239 "Zero Posted COFs Qty"
{
    DefaultLayout = RDLC;
    RDLCLayout = './ZeroPostedCOFsQty.rdlc';

    dataset
    {
        dataitem(DataItem6560; Table5902)
        {
            DataItemTableView = WHERE (Quantity = FILTER (<> 0),
                                      Posted = FILTER (Yes));

            trigger OnAfterGetRecord()
            begin
                "Service Line".VALIDATE("Service Line".Quantity, 0);
                "Service Line".MODIFY;
            end;

            trigger OnPostDataItem()
            begin
                MESSAGE('All posted COFs quantity has been successfully cleared');
            end;

            trigger OnPreDataItem()
            begin
                IF CONFIRM('Do you want to zero the quantity values for posted COFs') THEN
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
}

