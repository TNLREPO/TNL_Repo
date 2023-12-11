report 50054 "Isolo Report"
{
    DefaultLayout = RDLC;
    RDLCLayout = './IsoloReport.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table5993)
        {
            column(CustomerNo_ServiceInvoiceLine; "Service Invoice Line"."Customer No.")
            {
            }
            column(DocumentNo_ServiceInvoiceLine; "Service Invoice Line"."Document No.")
            {
            }
            column(LineNo_ServiceInvoiceLine; "Service Invoice Line"."Line No.")
            {
            }
            column(Description_ServiceInvoiceLine; "Service Invoice Line".Description)
            {
            }
            column(Type_ServiceInvoiceLine; "Service Invoice Line".Type)
            {
            }
            column(No_ServiceInvoiceLine; "Service Invoice Line"."No.")
            {
            }
            column(CustomerOrderNo_ServiceInvoiceLine; "Service Invoice Line"."Customer Order No.")
            {
            }
            column(GLAccTableCaption2; TABLECAPTION + ': ' + GLFilter2)
            {
            }
            column(GLFilter2; GLFilter2)
            {
            }
            column(Quantity_ServiceInvoiceLine; "Service Invoice Line".Quantity)
            {
            }
            column(UnitPrice_ServiceInvoiceLine; "Service Invoice Line"."Unit Price")
            {
            }
            column(RegistrationNo_ServiceInvoiceLine; "Service Invoice Line"."Registration No.")
            {
            }
            column(UnitCostLCY_ServiceInvoiceLine; "Service Invoice Line"."Unit Cost (LCY)")
            {
            }
            column(AmountIncludingVAT_ServiceInvoiceLine; "Service Invoice Line"."Amount Including VAT")
            {
            }

            trigger OnAfterGetRecord()
            begin
                GLFilter2 := "Service Invoice Line".GETFILTERS;
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

    trigger OnPreReport()
    begin
        GLFilter := "Service Invoice Line".GETFILTERS;
    end;

    var
        GLDateFilter: Text[30];
        GLFilter: Text;
        GLFilter2: Text;
}

