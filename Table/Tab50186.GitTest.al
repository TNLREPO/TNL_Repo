table 50186 "Git Test"
{
    Caption = 'Git Test';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Description"; Text[100])
        {
            Caption = 'Description';
        }
        field(3; type; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Created At"; DateTime)
        {
            Caption = 'Created At';
        }
    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}
