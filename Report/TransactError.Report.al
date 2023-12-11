report 50448 "Transact Error"
{
    DefaultLayout = RDLC;
    RDLCLayout = './TransactError.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table17)
        {
            column(EntryNo_GLEntry; "G/L Entry"."Entry No.")
            {
            }
            column(TransactionNo_GLEntry; "G/L Entry"."Transaction No.")
            {
            }
            column(PostingDate_GLEntry; "G/L Entry"."Posting Date")
            {
            }
            column(DocumentNo_GLEntry; "G/L Entry"."Document No.")
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

