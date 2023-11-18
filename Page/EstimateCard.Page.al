page 80011 "Estimate Card"
{
    PageType = Card;
    RefreshOnActivate = true;
    SourceTable = Table50121;

    layout
    {
        area(content)
        {
            group(Estimation)
            {
                Caption = 'Estimation';
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Address 1"; "Address 1")
                {
                }
                field("Address 2"; "Address 2")
                {
                }
                field("Tel. No"; "Tel. No")
                {
                }
                field("Operation Code"; "Operation Code")
                {
                }
                field("Delivery Type"; "Delivery Type")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Service Adviser"; "Service Adviser")
                {
                }
                field("Total Estimation"; "Total Estimation")
                {
                    Editable = false;
                }
                field("Cost Changed"; "Cost Changed")
                {
                    Editable = false;
                }
            }
            part(Lines; 80010)
            {
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Print)
            {
                Caption = 'Print';
                Image = Print;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
            }
        }
    }

    var
        estrec: Record "50121";
}

