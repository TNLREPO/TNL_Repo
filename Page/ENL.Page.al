page 50550 ENL
{
    PageType = List;
    SourceTable = Table32;
    SourceTableView = WHERE (Entry Type=FILTER(Sale),
                            Source No.=FILTER(TDV01020));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No.";"Entry No.")
                {
                }
                field("Item No.";"Item No.")
                {
                }
                field("Posting Date";"Posting Date")
                {
                }
                field("Source No.";"Source No.")
                {
                }
                field("Document No.";"Document No.")
                {
                }
                field(Quantity;Quantity)
                {
                }
                field("Serial No.";"Serial No.")
                {
                }
                field("Chassis No.";"Chassis No.")
                {
                }
                field("Engine No.";"Engine No.")
                {
                }
                field("Chasis Number";"Chasis Number")
                {
                }
            }
        }
    }

    actions
    {
    }
}

