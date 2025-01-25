xmlport 50151 "ILE Spool"
{
    Direction = Import;
    Format = VariableText;
    UseRequestPage = false;

    schema
    {
        textelement(Root)
        {
            tableelement(Table2000000026; Integer)
            {
                AutoSave = false;
                XmlName = 'Integer';
                SourceTableView = SORTING(Number)
                                  WHERE(Number = CONST(1));
                textelement(serialno)
                {
                    XmlName = 'Serial';
                }
                textelement(Description)
                {
                }
                textelement(ItemNo)
                {
                }

                trigger OnAfterInsertRecord()
                begin
                    //ItemLedgerEntry.SETRANGE("Document Type",ItemLedgerEntry."Document Type"::"Purchase Receipt");
                    //ItemLedgerEntry.SETRANGE("Serial No.",SerialNo);
                    //IF ItemLedgerEntry.FINDLAST THEN BEGIN
                    //    ItemLedgerEntry.Pick := TRUE;
                    //    ItemLedgerEntry.MODIFY;
                    //END;

                    ItemLedgerEntry.SETRANGE("Serial No.", SerialNo);
                    IF ItemLedgerEntry.FINDFIRST THEN BEGIN
                        REPEAT
                            ItemLedgerEntry."Item No." := ItemNo;
                            ItemLedgerEntry.Description := Description;
                            ItemLedgerEntry.MODIFY;
                        UNTIL ItemLedgerEntry.NEXT = 0;

                        //   PurchRecptLine.SETRANGE(PurchRecptLine."Posting Group",'N_CARS');
                        //
                        //  PurchRecptLine.SETRANGE(PurchRecptLine."Chassis No.",SerialNo);
                        //  IF PurchRecptLine.FINDFIRST THEN BEGIN
                        //  PurchRecptLine.Pick:= TRUE;
                        //   PurchRecptLine.MODIFY;
                        //   END;


                    END;

                    MESSAGE('Done!')
                end;
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

    trigger OnPostXmlPort()
    begin
        MESSAGE(Text001, Counter);
    end;

    var
        ItemLedgerEntry: Record 32;
        PurchRecptLine: Record 121;
        Counter: Integer;
        Text001: Label '%1 records were successfully inserted or modified.';
}

