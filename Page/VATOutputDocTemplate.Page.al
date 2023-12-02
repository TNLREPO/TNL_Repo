page 70200 "VAT Output Doc Template"
{
    Caption = 'VAT Output Doc Template';
    PageType = Document;
    SourceTable = "VAT Output Template";

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.")
                {
                }
                field("Document Date"; Rec."Document Date")
                {
                }
                field(Description; Rec.Description)
                {
                }
                field("Sum VAT Amount"; Rec."Sum VAT Amount")
                {

                    trigger OnValidate()
                    begin
                        Rec.SETFILTER("No.", VATOutputTempLine."Document No.");
                        IF VATOutputTemplate.GET(VATOutputTempLine."Document No.") THEN BEGIN
                            IF VATOutputTempLine.FIND('-') THEN
                                REPEAT
                                    Linecount := VATOutputTempLine.COUNT;
                                    VATOutputTempLine."Input VAT Amount" := (VATOutputTemplate."Sum VAT Amount" / (Linecount));

                                UNTIL VATOutputTempLine.NEXT = 0;

                        END;
                    end;
                }
                field(Confirmed; Rec.Confirmed)
                {
                }
                field("User ID"; Rec."User ID")
                {
                }
            }
            part("VAT Spread Line"; 70500)
            {
                Caption = 'VAT Spread Line';
                SubPageLink = "Document No." = FIELD(No.);
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
                    Rec.TESTFIELD("Sum VAT Amount");
                    IF CONFIRM('Do you want to spread the VAT Amount of %1 to the listed line entries?', FALSE, Rec."Sum VAT Amount") THEN BEGIN
                        //Get the line entries by filtering the Line Table with Header No
                        VATOutputTempLine.SETFILTER("Document No.", Rec."No.");
                        IF VATOutputTempLine.FINDSET THEN BEGIN
                            //Count the no of entries
                            Linecount := VATOutputTempLine.COUNT;
                            //Divide the SumVAT by the no of entries. That gives line VAT Amount
                            LineVATResult := Rec."Sum VAT Amount" / Linecount;
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
        VATOutputTempLine: Record "VAT Output Temp Line";
        "LineNo.": Integer;
        VATOutputTemplate: Record "VAT Output Template";
        Linecount: Decimal;
        LineVATResult: Decimal;
}

