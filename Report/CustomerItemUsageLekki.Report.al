report 50320 "Customer Item Usage Lekki"
{
    DefaultLayout = RDLC;
    RDLCLayout = './CustomerItemUsageLekki.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5902)
        {
            DataItemTableView = WHERE (Type = FILTER (Item),
                                      Location Code=FILTER(113LEK|114SER),
                                      Quantity=FILTER(<>0),
                                      Customer No.=FILTER(TC*));
            RequestFilterFields = "Posting Date","Location Code";
            column(CustomerNo_ServiceLine;"Service Line"."Customer No.")
            {
            }
            column(DocumentNo_ServiceLine;"Service Line"."Document No.")
            {
            }
            column(No_ServiceLine;"Service Line"."No.")
            {
            }
            column(LocationCode_ServiceLine;"Service Line"."Location Code")
            {
            }
            column(Description_ServiceLine;"Service Line".Description)
            {
            }
            column(UnitofMeasure_ServiceLine;"Service Line"."Unit of Measure")
            {
            }
            column(Quantity_ServiceLine;"Service Line".Quantity)
            {
            }
            column(ServiceItemNo_ServiceLine;"Service Line"."Service Item No.")
            {
            }
            column(PostingDate_ServiceLine;"Service Line"."Posting Date")
            {
            }
            column(UnitCostLCY_ServiceLine;"Service Line"."Unit Cost (LCY)")
            {
            }
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

