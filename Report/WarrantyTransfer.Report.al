report 50396 "Warranty Transfer"
{
    DefaultLayout = RDLC;
    RDLCLayout = './WarrantyTransfer.rdlc';

    dataset
    {
        dataitem(DataItem7069; Table17)
        {
            DataItemTableView = SORTING (Entry No.);

            trigger OnAfterGetRecord()
            begin
                RecNo := RecNo + 1;
                Window.UPDATE(1, ROUND(RecNo / TotalRecNo * 10000, 1));

                GenJnlLine.INIT;
                GenJnlLine."Journal Template Name" := 'GENERAL';
                GenJnlLine."Journal Batch Name" := 'WARRDEAL';
                GenJnlLine."Line No." := LineNo;
                GenJnlLine."Account Type" := GenJnlLine."Account Type"::Customer;
                GenJnlLine.VALIDATE("Account No.", '935000');
                GenJnlLine."Posting Date" := "G/L Entry"."Posting Date";
                GenJnlLine."Document Date" := "G/L Entry"."Posting Date";
                GenJnlLine."Document No." := "G/L Entry"."Document No.";
                GenJnlLine.Description := "G/L Entry".Description;
                GenJnlLine.VALIDATE(Amount, "G/L Entry".Amount);
                GenJnlLine."Bal. Account Type" := GenJnlLine."Bal. Account Type"::"G/L Account";
                GenJnlLine."Bal. Account No." := '264800';
                GenJnlLine."Shortcut Dimension 1 Code" := "G/L Entry"."Global Dimension 1 Code";
                GenJnlLine."Shortcut Dimension 2 Code" := "G/L Entry"."Global Dimension 2 Code";
                GenJnlLine.INSERT;
                LineNo += 10000;

                // //  "G/L Entry".SETFILTER("G/L Account No.",'%1','112590');
                // //  GLEntry2.SETRANGE(GLEntry2."Document No.",GenJnlLine."Document No.");
                // // IF GLEntry2.FINDFIRST THEN
                // // ERROR('This document has been posted before!');
            end;

            trigger OnPostDataItem()
            begin
                Window.CLOSE;
                MESSAGE('Warranty Journal has been created!');
            end;

            trigger OnPreDataItem()
            begin
                // LastFieldNo := FIELDNO("Entry No.");

                GenJnlLine2.SETRANGE("Journal Template Name", 'GENERAL');
                GenJnlLine2.SETRANGE("Journal Batch Name", 'WARRDEAL');
                IF GenJnlLine2.FINDFIRST THEN
                    GenJnlLine2.DELETEALL;


                "G/L Entry".SETFILTER("G/L Account No.", '%1', '264800');
                "G/L Entry".SETFILTER("Posting Date", '%1..%2', StartDate, EndDate);

                LineNo := 10000;
                Window.OPEN(
                 Text000 +
                 '@1@@@@@@@@@@@@@@@@@@@@@\');
                Window.UPDATE(1, 0);
                TotalRecNo := "G/L Entry".COUNTAPPROX;
                RecNo := 0;
            end;
        }
    }

    requestpage
    {

        layout
        {
            area(content)
            {
                field("Start Date"; StartDate)
                {
                }
                field("End Date"; EndDate)
                {
                }
            }
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
        GenJnlLine: Record 81;
        GenJnlLine2: Record 81;
        LineNo: Integer;
        Window: Dialog;
        Text000: Label 'Creating Warranty Journal';
        RecNo: Integer;
        TotalRecNo: Integer;
        StartDate: Date;
        EndDate: Date;
        GLEntry2: Record 81;
}

