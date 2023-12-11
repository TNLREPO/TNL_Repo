report 50397 "Delivery Monitor"
{
    DefaultLayout = RDLC;
    RDLCLayout = './DeliveryMonitor.rdlc';

    dataset
    {
        dataitem(DataItem5444; Table2000000026)
        {
            DataItemTableView = SORTING (Number)
                                WHERE (Number = CONST (1));
            column(FORMAT_TODAY_0_4_; FORMAT(TODAY, 0, 4))
            {
            }
            column(CurrReport_PAGENO; CurrReport.PAGENO)
            {
            }
            column(USERID; USERID)
            {
            }
            column(IntegerCaption; IntegerCaptionLbl)
            {
            }
            column(CurrReport_PAGENOCaption; CurrReport_PAGENOCaptionLbl)
            {
            }
            column(Integer_Number; Number)
            {
            }

            trigger OnAfterGetRecord()
            begin
                VehMonitor.SETCURRENTKEY(Delivered, "Posting Date");
                VehMonitor.SETRANGE(Delivered, FALSE);
                VehMonitor.SETFILTER("Posting Date", '<%1', TODAY - 19);
                IF VehMonitor.FINDSET THEN BEGIN
                    REPEAT
                        VehMonitor.Overdue := TRUE;
                        VehMonitor.MODIFY;
                    UNTIL VehMonitor.NEXT = 0;
                END;
            end;

            trigger OnPostDataItem()
            begin
                MESSAGE('Overdue vehicles have been checked!');
            end;

            trigger OnPreDataItem()
            begin
                LastFieldNo := FIELDNO(Number);
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
        LastFieldNo: Integer;
        FooterPrinted: Boolean;
        VehMonitor: Record "50056";
        IntegerCaptionLbl: Label 'Integer';
        CurrReport_PAGENOCaptionLbl: Label 'Page';
}

