page 50156 "Dealer Online Order Request"
{
    PageType = Card;
    SourceTable = Table50099;

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("Order No."; "Order No.")
                {

                    trigger OnAssistEdit()
                    begin
                        AssistEdit(xRec);
                        CurrPage.UPDATE;
                    end;
                }
                field("Dealer No."; "Dealer No.")
                {
                }
                field("Dealer Name"; "Dealer Name")
                {
                }
                field("Dealer Address"; "Dealer Address")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field(Description; Description)
                {
                }
                field("User Id"; "User Id")
                {
                }
                field("No. Series"; "No. Series")
                {
                }
                field("Process date"; "Process date")
                {
                }
                field(Processed; Processed)
                {
                }
                field(Submit; Submit)
                {
                }
            }
            part(; 50157)
            {
                SubPageLink = Claim No.=FIELD(Order No.);
            }
        }
    }

    actions
    {
    }
}

