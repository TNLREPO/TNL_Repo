tableextension 50071 "Transfer Receipt Line Ext" extends "Transfer Receipt Line"
{
    fields
    {
       field(50211;"Chassis No.";Code[50])
        {
           /*  CalcFormula = Lookup("Item Ledger Entry"."Serial No." WHERE ("Document No."=FIELD("Document No."),
                                                                         "Document Line No."=FIELD("Line No.")));
            FieldClass = FlowField; */
        }
    }
}
