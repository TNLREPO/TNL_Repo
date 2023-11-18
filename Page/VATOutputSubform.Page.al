page 70500 "VAT Output Subform"
{
    AutoSplitKey = true;
    Caption = 'VAT Output Subform';
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = Table50183;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Line No."; "Line No.")
                {
                }
                field("Chasis No."; "Chasis No.")
                {

                    trigger OnValidate()
                    begin
                        SETFILTER("Document No.", VATOutputTemplate."No.");
                        IF VATOutputTemplate.GET(VATOutputTempLine."Document No.") THEN BEGIN
                            IF VATOutputTempLine.FIND('-') THEN
                                REPEAT
                                    Linecount := VATOutputTempLine.COUNT;
                                    VATOutputTempLine."Input VAT Amount" := (VATOutputTemplate."Sum VAT Amount" / (Linecount));

                                UNTIL VATOutputTempLine.NEXT = 0;

                        END;
                    end;
                }
                field("Input VAT Amount"; "Input VAT Amount")
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        VATOutputTempLine: Record "50201";
        "LineNo.": Integer;
        VATOutputTemplate: Record "50200";
        Linecount: Decimal;
}

