report 50415 Testing
{
    DefaultLayout = RDLC;
    RDLCLayout = './Testing.rdlc';

    dataset
    {
        dataitem(Inflow; Table21)
        {
            DataItemTableView = SORTING (Document No.)
                                WHERE (Amount (LCY)=FILTER(<0),
                                      Document Type=FILTER(' '),
                                      Document No.=FILTER(TRQ*|TRC*|TRET*));
            RequestFilterFields = "Posting Date";
            column(FORMAT_TODAY_0_4_;FORMAT(TODAY,0,4))
            {
            }
            column(COMPANYNAME;COMPANYNAME)
            {
            }
            column(CurrReport_PAGENO;CurrReport.PAGENO)
            {
            }
            column(USERID;USERID)
            {
            }
            column(Inflow__Document_No__;"Document No.")
            {
            }
            column(Inflow_Description;Description)
            {
            }
            column(Inflow__Amount__LCY__;"Amount (LCY)")
            {
            }
            column(Inflow__Amount__LCY___Control1000000016;"Amount (LCY)")
            {
            }
            column(Cust__Ledger_EntryCaption;Cust__Ledger_EntryCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption;CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Inflow__Document_No__Caption;FIELDCAPTION("Document No."))
            {
            }
            column(Inflow_DescriptionCaption;FIELDCAPTION(Description))
            {
            }
            column(Inflow__Amount__LCY__Caption;FIELDCAPTION("Amount (LCY)"))
            {
            }
            column(Inflow_Entry_No_;"Entry No.")
            {
            }
        }
        dataitem(Outflow;Table25)
        {
            DataItemLinkReference = Inflow;
            DataItemTableView = SORTING(Document No.)
                                WHERE(Document Type=FILTER(' '),
                                      Amount (LCY)=FILTER(>0));
            RequestFilterFields = "Posting Date";
            column(Outflow__Amount__LCY__;"Amount (LCY)")
            {
            }
            column(Outflow_Description;Description)
            {
            }
            column(Outflow__Document_No__;"Document No.")
            {
            }
            column(Outflow__Amount__LCY___Control1000000017;"Amount (LCY)")
            {
            }
            column(Outflow_Entry_No_;"Entry No.")
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

    var
        Cust__Ledger_EntryCaptionLbl: Label 'Cust. Ledger Entry';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

