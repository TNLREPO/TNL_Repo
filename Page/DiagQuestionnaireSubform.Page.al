page 50359 "Diag. Questionnaire Subform"
{
    AutoSplitKey = true;
    DelayedInsert = true;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = Table50125;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Inspection Details/Result"; "Inspection Details/Result")
                {
                }
                field(Description; Description)
                {
                }
                field(DTC; DTC)
                {
                }
                field("Freeze Frame Data Saved"; "Freeze Frame Data Saved")
                {
                }
                field("Job Instruction"; "Job Instruction")
                {
                }
                field(Status; Status)
                {
                }
            }
        }
    }

    actions
    {
    }
}

