table 50165 Test
{

    fields
    {
        field(1; "No."; Integer)
        {
        }
        field(2; "Doc. No"; Code[20])
        {
        }
        field(3; Date; Date)
        {
        }
        field(4; Amount; Decimal)
        {
        }
        field(5; Exist; Boolean)
        {
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Doc. No")
        {
        }
    }

    fieldgroups
    {
    }
}

