tableextension 50015 "Incoming Document Ext" extends "Incoming Document"
{
    fields
    {
        field(50000; "Requisition No."; Code[10])
        {
        }
        field(50002; "Vendor Address"; Text[250])
        {
        }
        field(50003; "Posting Description"; Text[250])
        {
        }
        field(50004; "Payment Terms"; Option)
        {
            OptionCaption = ' ,100%,60%,40%';
            OptionMembers = " ","100%","60%","40%";
        }
        field(50005; "Requisition Date"; Date)
        {
        }
        field(50007; "Requisition Line No."; Integer)
        {
        }
    }
    var
/*
        CapexHead: Record "70008";
        CapexLine: Record "70001";
        ProcurementLineDetail: Record "70007";
        NoSeries: Codeunit NoSeriesManagement;
        */

}
