page 70507 "BP Worksheet"
{
    PageType = Card;
    SourceTable = Table70046;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                }
                field(Comment; Comment)
                {
                    MultiLine = true;
                }
            }
            part(Lines; 70508)
            {
                SubPageLink = Document No.=FIELD(No.);
            }
        }
        area(factboxes)
        {
            systempart(; Notes)
            {
            }
            systempart(; Links)
            {
            }
        }
    }

    actions
    {
    }
}

