page 50052 "Employee Training"
{
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Table50082;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Course Code"; "Course Code")
                {

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
                }
                field("Training Group"; "Training Group")
                {

                    trigger OnValidate()
                    begin
                        EnableControls
                    end;
                }
                field("Course Type"; "Course Type")
                {
                    Caption = 'Course Group';
                }
                field("Course Name"; "Course Name")
                {
                    Editable = false;
                }
                field("Vendor Code"; "Vendor Code")
                {
                    Enabled = "Vendor CodeEnable";

                    trigger OnValidate()
                    begin
                        IF VendRec.GET("Vendor Code") THEN "Total CostEnable" := TRUE;
                    end;
                }
                field("Vendor name"; "Vendor name")
                {
                    Editable = false;
                    Enabled = "Vendor nameEnable";
                }
                field("Course Description"; "Course Description")
                {
                    Caption = 'Course Description';
                }
                field(Comment; Comment)
                {
                    Caption = 'HHR Comment';
                }
                field("Course Start Date"; "Course Start Date")
                {
                }
                field(Time; Time)
                {
                }
                field("Course Duration"; "Course Duration")
                {
                }
                field("Unit Cost"; "Unit Cost")
                {
                    Caption = 'Unit Cost';
                    Editable = false;
                }
                field("Total Cost"; "Total Cost")
                {
                    Enabled = "Total CostEnable";
                }
            }
            part("Training Lines"; 50069)
            {
                SubPageLink = Training Course Code=FIELD(Course Code);
                    SubPageView = SORTING(Training Group,Training Course Code,Course Line No.);
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        EnableControls
    end;

    trigger OnClosePage()
    begin
        CLEARALL;
    end;

    trigger OnInit()
    begin
        "Vendor nameEnable" := TRUE;
        "Vendor CodeEnable" := TRUE;
        "Total CostEnable" := TRUE;
    end;

    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        EnableControls
    end;

    var
        CatRec: Record "50083";
        TCourseRec: Record "50082";
        TotalCost: Decimal;
        AvgCost: Decimal;
        RecCount: Integer;
        CTypeRec: Record "50081";
        VendRec: Record "23";
        [InDataSet]
        "Total CostEnable": Boolean;
        [InDataSet]
        "Vendor CodeEnable": Boolean;
        [InDataSet]
        "Vendor nameEnable": Boolean;

    [Scope('Internal')]
    procedure EnableControls()
    begin
        IF ("Training Group" = 0) OR ("Training Group" = "Training Group"::"In-House") THEN
          BEGIN
            "Vendor CodeEnable" := FALSE;
            "Vendor nameEnable" := FALSE;
          END
        ELSE
          BEGIN
            "Vendor CodeEnable" := TRUE;
            "Vendor nameEnable" := TRUE;
          END
    end;
}

