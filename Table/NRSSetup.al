table 50189 "NRS Setup"
{
    Caption = 'NRS Setup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
        }
        field(2; "Sales Invoice Url"; Text[250])
        {
            Caption = 'Sales Invoice Url';
        }
        field(3; "Service Invoice Url"; Text[250])
        {
            Caption = 'Service Invoice Url';
        }
        field(4; "Supplier Key"; Text[150])
        {
            Caption = 'Supplier Key';
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
}
