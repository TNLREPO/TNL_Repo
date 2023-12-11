report 50336 "Stores Issue To Consum Voucher"
{
    DefaultLayout = RDLC;
    RDLCLayout = './StoresIssueToConsumVoucher.rdlc';

    dataset
    {
        dataitem(CopyLoop; Table2000000026)
        {
            DataItemTableView = SORTING (Number);
            dataitem(DataItem8780; Table233)
            {
                DataItemTableView = SORTING (Journal Template Name, Name);
                column(GOODS_RECEIVED_BY______________________________________________________Caption; GOODS_RECEIVED_BY______________________________________________________CaptionLbl)
                {
                }
                column(GOODS_ISSUED_BY___________________________________________________________________________Caption; GOODS_ISSUED_BY___________________________________________________________________________CaptionLbl)
                {
                }
                column(SIGN______________________________________________DATE_______________________Caption; SIGN______________________________________________DATE_______________________CaptionLbl)
                {
                }
                column(SIGN______________________________________________DATE_______________________Caption_Control6; SIGN______________________________________________DATE_______________________Caption_Control6Lbl)
                {
                }
                column(ISSUE_APPROVED_BY______________________________________________________Caption; ISSUE_APPROVED_BY______________________________________________________CaptionLbl)
                {
                }
                column(SIGN______________________________________________DATE_______________________Caption_Control15; SIGN______________________________________________DATE_______________________Caption_Control15Lbl)
                {
                }
                column(Item_Journal_Batch_Journal_Template_Name; "Journal Template Name")
                {
                }
                column(Item_Journal_Batch_Name; Name)
                {
                }
                dataitem(DataItem8280; Table83)
                {
                    DataItemLink = Journal Template Name=FIELD(Journal Template Name),
                                   Journal Batch Name=FIELD(Name);
                    DataItemTableView = SORTING(Journal Template Name,Journal Batch Name,Line No.);
                    RequestFilterFields = "Journal Template Name","Journal Batch Name";
                    column(Item_Journal_Batch___Global_Dimension_1_Code_;"Item Journal Batch"."Global Dimension 1 Code")
                    {
                    }
                    column(Item_Journal_Line__Journal_Batch_Name_;"Journal Batch Name")
                    {
                    }
                    column(Item_Journal_Batch___Requisition_No__;"Item Journal Batch"."Requisition No.")
                    {
                    }
                    column(CopyText;CopyText)
                    {
                    }
                    column(Item_Journal_Line__Job_No__;"Job No.")
                    {
                    }
                    column(Item_Journal_Line__Location_Code_;"Location Code")
                    {
                    }
                    column(No____Variant_Code_;"No."+"Variant Code")
                    {
                    }
                    column(Item_Journal_Line_Description;Description)
                    {
                    }
                    column(Item_Journal_Line_Quantity;Quantity)
                    {
                    }
                    column(Item_Journal_Line__Unit_of_Measure_Code_;"Unit of Measure Code")
                    {
                    }
                    column(Serial_No_;"Serial No")
                    {
                    }
                    column(Item_Journal_Line__Shortcut_Dimension_1_Code_;"Shortcut Dimension 1 Code")
                    {
                    }
                    column(Item_Journal_Line__Qty__On_Request_;"Qty. On Request")
                    {
                    }
                    column(Item_Journal_Line__Unit_Amount_;"Unit Amount")
                    {
                    }
                    column(Item_Journal_Line_Amount;Amount)
                    {
                    }
                    column(Item_Journal_Line_Quantity_Control1000000002;Quantity)
                    {
                    }
                    column(ItemDescription_2_;ItemDescription[2])
                    {
                    }
                    column(ItemDescription_3_;ItemDescription[3])
                    {
                    }
                    column(ItemDescription_4_;ItemDescription[4])
                    {
                    }
                    column(ItemDescription_5_;ItemDescription[5])
                    {
                    }
                    column(STORE_GENERAL_MATERIAL_ISSUE_VOUCHERCaption;STORE_GENERAL_MATERIAL_ISSUE_VOUCHERCaptionLbl)
                    {
                    }
                    column(Item_Journal_Batch___Global_Dimension_1_Code_Caption;Item_Journal_Batch___Global_Dimension_1_Code_CaptionLbl)
                    {
                    }
                    column(Item_Journal_Line__Journal_Batch_Name_Caption;Item_Journal_Line__Journal_Batch_Name_CaptionLbl)
                    {
                    }
                    column(Item_Journal_Batch___Requisition_No__Caption;Item_Journal_Batch___Requisition_No__CaptionLbl)
                    {
                    }
                    column(Item_Journal_Line__Job_No__Caption;FIELDCAPTION("Job No."))
                    {
                    }
                    column(Item_Journal_Line__Location_Code_Caption;FIELDCAPTION("Location Code"))
                    {
                    }
                    column(No____Variant_Code_Caption;No____Variant_Code_CaptionLbl)
                    {
                    }
                    column(Item_Journal_Line_DescriptionCaption;Item_Journal_Line_DescriptionCaptionLbl)
                    {
                    }
                    column(Item_Journal_Line_QuantityCaption;Item_Journal_Line_QuantityCaptionLbl)
                    {
                    }
                    column(Item_Journal_Line__Unit_of_Measure_Code_Caption;Item_Journal_Line__Unit_of_Measure_Code_CaptionLbl)
                    {
                    }
                    column(Serial_No_Caption;Serial_No_CaptionLbl)
                    {
                    }
                    column(Item_Journal_Line__Shortcut_Dimension_1_Code_Caption;FIELDCAPTION("Shortcut Dimension 1 Code"))
                    {
                    }
                    column(Item_Journal_Line__Qty__On_Request_Caption;FIELDCAPTION("Qty. On Request"))
                    {
                    }
                    column(Item_Journal_Line__Unit_Amount_Caption;FIELDCAPTION("Unit Amount"))
                    {
                    }
                    column(Item_Journal_Line_AmountCaption;FIELDCAPTION(Amount))
                    {
                    }
                    column(Item_Journal_Line_Quantity_Control1000000002Caption;FIELDCAPTION(Quantity))
                    {
                    }
                    column(Control14Caption;Control14CaptionLbl)
                    {
                    }
                    column(Item_Journal_Line_Journal_Template_Name;"Journal Template Name")
                    {
                    }
                    column(Item_Journal_Line_Line_No_;"Line No.")
                    {
                    }

                    trigger OnAfterGetRecord()
                    begin
                        IF item.GET("Item Journal Line"."No.") THEN  ;
                        //descPart := item.Description +' '+ item."Man. Part No.";

                        //TOTAMOUNT := TOTAMOUNT + "Job Journal Line"."Total Cost (LCY)";

                        //BreakItemDescription(descPart,34);
                    end;
                }

                trigger OnAfterGetRecord()
                begin
                    IF NOT CurrReport.PREVIEW THEN BEGIN
                      "Item Journal Batch"."Printed Copies" := "Item Journal Batch"."Printed Copies" + 1;
                      "Item Journal Batch".MODIFY;
                    END;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                IF Number > 1 THEN
                  CopyText := 'COPY ' + FORMAT(Number) + ' of ' + FORMAT(NoofCopies);
                CurrReport.PAGENO := 1;
            end;

            trigger OnPreDataItem()
            begin
                IF NoofCopies <= 0 THEN
                  NoofCopies := 1;
                CopyText := '';
                SETRANGE(Number,1,NoofCopies);
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

    trigger OnInitReport()
    begin
        TOTAMOUNT := 0;
        //AMOUNTINWORD := '';
        NoofCopies := 1;
    end;

    trigger OnPreReport()
    begin
        setfilter := "Item Journal Batch".GETFILTERS;
        IF setfilter = '' THEN ERROR('You must specify the voucher you want to print');
           IF "Item Journal Line".Quantity<0 THEN
           //"Item Journal Line"."Total Cost (LCY)" :=0
    end;

    var
        "Serial No": Integer;
        CopyText: Text[30];
        NoofCopies: Integer;
        Number: Integer;
        TOTAMOUNT: Decimal;
        AMOUNTINWORD: Text[250];
        setfilter: Text[50];
        item: Record "27";
        descPart: Text[100];
        ItemDescription: array [5] of Text[50];
        i: Integer;
        CompanyInfo: Record "79";
        GOODS_RECEIVED_BY______________________________________________________CaptionLbl: Label 'GOODS RECEIVED BY .....................................................';
        GOODS_ISSUED_BY___________________________________________________________________________CaptionLbl: Label 'GOODS ISSUED BY:..........................................................................';
        SIGN______________________________________________DATE_______________________CaptionLbl: Label 'SIGN............................................. DATE.......................';
        SIGN______________________________________________DATE_______________________Caption_Control6Lbl: Label 'SIGN............................................. DATE.......................';
        ISSUE_APPROVED_BY______________________________________________________CaptionLbl: Label 'ISSUE APPROVED BY .....................................................';
        SIGN______________________________________________DATE_______________________Caption_Control15Lbl: Label 'SIGN............................................. DATE.......................';
        STORE_GENERAL_MATERIAL_ISSUE_VOUCHERCaptionLbl: Label 'STORE GENERAL MATERIAL ISSUE VOUCHER';
        Item_Journal_Batch___Global_Dimension_1_Code_CaptionLbl: Label 'User Department';
        Item_Journal_Line__Journal_Batch_Name_CaptionLbl: Label 'SIV No.';
        Item_Journal_Batch___Requisition_No__CaptionLbl: Label 'SRV No.';
        No____Variant_Code_CaptionLbl: Label 'Item No.';
        Item_Journal_Line_DescriptionCaptionLbl: Label 'Item Description';
        Item_Journal_Line_QuantityCaptionLbl: Label 'Qty. Issued';
        Item_Journal_Line__Unit_of_Measure_Code_CaptionLbl: Label 'Unit of Measure';
        Serial_No_CaptionLbl: Label 'S/No.';
        Control14CaptionLbl: Label 'Label14';

    [Scope('Internal')]
    procedure BreakItemDescription(xDescription: Text[250];xLen: Integer)
    var
        TempDescription: Text[100];
        TempDescriptionI: Text[50];
        Okay: Boolean;
    begin
        TempDescription := xDescription;
        i := 1;
        WHILE i <= 5 DO BEGIN
          ItemDescription[i] := '';
          Okay := TRUE;
          WHILE (STRLEN(ItemDescription[i]) <= xLen) AND Okay AND (DELCHR(TempDescription) <> '') DO BEGIN
            IF STRPOS(TempDescription,' ') > 0 THEN
              TempDescriptionI := COPYSTR(TempDescription,1,STRPOS(TempDescription,' ') -1)
            ELSE
              TempDescriptionI := TempDescription;
          /*    IF STRLEN(ItemDescription[i] + ' ' + TempDescription) > xLen THEN
                TempDescriptionI := COPYSTR(TempDescription,1,xLen - STRLEN(ItemDescription[i]) - 1)
              ELSE
                TempDescriptionI := TempDescription;
           */
            IF STRLEN(ItemDescription[i] + ' ' + TempDescriptionI) <= xLen THEN BEGIN
              ItemDescription[i] := ItemDescription[i] + ' ' + TempDescriptionI;
              TempDescription := DELSTR(TempDescription,1,STRLEN(TempDescriptionI));
              TempDescription := DELCHR(TempDescription,'<',' ');
            END ELSE
              Okay := FALSE;
          END;
            i := i + 1;
        END;

    end;
}

