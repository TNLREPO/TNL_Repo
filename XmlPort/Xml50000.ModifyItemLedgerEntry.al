xmlport 50000 "Modify Item Ledger Entry"
{

    Format = VariableText;
    Caption = 'Modify Item Ledger Entry';
    Permissions = tabledata "Item Ledger Entry" = rimd;

    schema
    {
        textelement(RootNodeName)
        {
            tableelement(Integer; "Integer")
            {
                XmlName = 'ModifyILE';
                AutoSave = false;
                SourceTableView = SORTING(Number) WHERE(Number = CONST(1));

                textelement(EntryNo)
                {

                }
                textelement(ExtColorName)
                {

                }

                textelement(ExtColorCode)
                {

                }


                trigger OnAfterInsertRecord()
                var
                    ItemLedgEntry: Record "Item Ledger Entry";

                begin

                    if ItemLedgEntry.get(EntryNo) then begin
                        ItemLedgEntry."Exterior Colour Name" := ExtColorName;
                        ItemLedgEntry."Exterior Colour Code" := ExtColorCode;
                        ItemLedgEntry.Modify();
                    end;

                end;
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
    trigger OnInitXmlPort()
    var
        myInt: Integer;
    begin

    end;

    trigger OnPostXmlPort()
    var
        myInt: Integer;
    begin

    end;
}
