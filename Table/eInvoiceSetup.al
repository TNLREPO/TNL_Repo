table 50185 "e-Invoice Setup"
{
    Caption = 'e-Invoice Setup';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; "Primary Key"; Code[20])
        {
            Caption = 'Primary Key';
        }
        field(2; PubKey; Text[1000])
        {
            Caption = 'PubKey';
        }
        field(3; Certificate; Text[350])
        {
            Caption = 'Certificate';
        }
        field(4; IRN; Code[50])
        {
            Caption = 'IRN';
            DataClassification = SystemMetadata;
        }
        field(5; "Webservice Url"; text[250])
        {
            Caption = 'Webservice Url';
            DataClassification = SystemMetadata;
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
