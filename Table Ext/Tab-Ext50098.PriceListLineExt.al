namespace AL_TNL.AL_TNL;

using Microsoft.Pricing.PriceList;
using Microsoft.Inventory.Item;

tableextension 50098 "Price List Line Ext" extends "Price List Line"
{
    fields
    {
        field(50000; "Inventory Posting Group"; Code[20])
        {
            Caption = 'Inventory Posting Group';
            TableRelation = "Inventory Posting Group";

        }
    }
}
