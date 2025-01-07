page 70533 "User Setup Signature"
{
    PageType = Card;
    SourceTable = 91;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("User ID"; Rec."User ID")
                {
                }
                field(Signature; Rec.Signature)
                {
                    ApplicationArea = Basic, Suite;
                    Caption = 'Signature';
                    ToolTip = 'Specifies the picture that has been set up for the company, such as a company logo.';

                    trigger OnValidate()
                    begin
                        CurrPage.SAVERECORD;
                    end;
                }
            }
        }
    }

    actions
    {
    }
}

