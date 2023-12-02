page 80053 "Customer Type"
{
    PageType = List;
    SourceTable = "Customer Type";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(Code; Rec.Code)
                {
                }
                field("Code Name"; Rec."Code Name")
                {
                }
            }
        }
    }

    actions
    {
    }
}

