tableextension 50095 "Sales Cr.Memo Line Ext" extends "Sales Cr.Memo Line"
{
    fields
    {
        field(50006; Colour; Code[30])
        {
            Editable = true;
            TableRelation = "Colour Codes"."Colour Code";
        }
        field(50024; "xVAT Code"; Code[10])
        {
        }
        field(50208; "Chassis Number"; Code[30])
        {
            Editable = false;
        }
        field(50209; "Quantity Demanded"; Decimal)
        {
        }
        field(50302; "Year of Production"; Code[10])
        {
        }
        field(50303; "Estimated Mileage"; Code[10])
        {
        }
        field(60102; "Part Group"; Code[10])
        {
        }
        field(60103; "Job Type"; Option)
        {
            OptionCaption = ' ,B&P,GR';
            OptionMembers = " ","B&P",GR;
        }
        field(60104; "Inventory Posting Grp."; Code[20])
        {
            CalcFormula = Lookup(Item."Inventory Posting Group" WHERE("No." = FIELD("No.")));
            FieldClass = FlowField;
        }
        field(60105; "Customer Name"; Text[100])
        {
            CalcFormula = Lookup(Customer.Name WHERE("No." = FIELD("Sell-to Customer No.")));
            FieldClass = FlowField;
        }
    }
}
