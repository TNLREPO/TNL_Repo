page 70200 "VAT Output Doc Template"
{
    Caption = 'VAT Output Doc Template';
    PageType = Document;
    SourceTable = Table50200;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                }
                field("Document Date"; "Document Date")
                {
                }
                field(Description; Description)
                {
                }
                field("Sum VAT Amount"; "Sum VAT Amount")
                {

                    trigger OnValidate()
                    begin
                        SETFILTER("No.", VATOutputTempLine."Document No.");
                        IF VATOutputTemplate.GET(VATOutputTempLine."Document No.") THEN BEGIN
                            IF VATOutputTempLine.FIND('-') THEN
                                REPEAT
                                    Linecount := VATOutputTempLine.COUNT;
                                    VATOutputTempLine."Input VAT Amount" := (VATOutputTemplate."Sum VAT Amount" / (Linecount));

                                UNTIL VATOutputTempLine.NEXT = 0;

                        END;
                    end;
                }
                field(Confirmed; Confirmed)
                {
                }
                field("User ID"; "User ID")
                {
                }
            }
            part("VAT Spread Line"; 70500)
            {
                Caption = 'VAT Spread Line';
                SubPageLink = Document No.=FIELD(No.);
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Spread VAT")
            {
                Image = ShowMatrix;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    TESTFIELD("Sum VAT Amount");
                    IF CONFIRM('Do you want to spread the VAT Amount of %1 to the listed line entries?', FALSE, "Sum VAT Amount") THEN BEGIN
                        //Get the line entries by filtering the Line Table with Header No
                        VATOutputTempLine.SETFILTER("Document No.", "No.");
                        IF VATOutputTempLine.FINDSET THEN BEGIN
                            //Count the no of entries
                            Linecount := VATOutputTempLine.COUNT;
                            //Divide the SumVAT by the no of entries. That gives line VAT Amount
                            LineVATResult := "Sum VAT Amount" / Linecount;
                            //Update each line entry with line VAT Amount
                            REPEAT
                                VATOutputTempLine."Input VAT Amount" := LineVATResult;
                                VATOutputTempLine.MODIFY;
                            UNTIL VATOutputTempLine.NEXT = 0;
                        END;
                        MESSAGE('Successfully spread.');
                    END;
                end;
            }
        }
    }

    var
        VATOutputTempLine: Record "50201";
        "LineNo.": Integer;
        VATOutputTemplate: Record "50200";
        Linecount: Decimal;
        LineVATResult: Decimal;
}

