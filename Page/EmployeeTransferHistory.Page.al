page 50309 "Employee Transfer History"
{
    AutoSplitKey = true;
    PageType = Card;
    SourceTable = Table50152;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                    Visible = false;
                }
                field(Name; Name)
                {
                    Visible = false;
                }
                field(Date; Date)
                {
                }
                field(Time; Time)
                {
                }
                field("From Cost Centre"; "From Cost Centre")
                {
                }
                field("To Cost Centre"; "To Cost Centre")
                {
                }
                field("From Department"; "From Department")
                {
                }
                field("To Department"; "To Department")
                {
                }
                field(Remark; Remark)
                {
                }
            }
        }
    }

    actions
    {
    }
}

