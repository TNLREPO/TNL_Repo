page 70502 "VAT OUTPUT LIST"
{
    CardPageID = "VAT Output Doc Template";
    PageType = List;
    SourceTable = Table50182;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; "No.")
                {
                }
                field("Document Date"; "Document Date")
                {
                }
                field("User ID"; "User ID")
                {
                }
            }
        }
    }

    actions
    {
    }
}

