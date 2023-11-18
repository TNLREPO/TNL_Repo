page 50322 "Estimation Header"
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
                field("Estimate No"; "Estimate No")
                {

                    trigger OnAssistEdit()
                    begin
                        IF AssistEdit(xRec) THEN
                            CurrPage.UPDATE;
                    end;
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
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Veh. Registration No."; "Veh. Registration No.")
                {
                }
                field("Veh. Registration date"; "Veh. Registration date")
                {
                }
                field("Transaction Date"; "Transaction Date")
                {
                }
                field("Customer Order Form No"; "Customer Order Form No")
                {
                }
                field("Estimate Factor"; "Estimate Factor")
                {
                }
                field("Delivery Type"; "Delivery Type")
                {
                }
                field("Payment Method"; "Payment Method")
                {
                }
                field("Service Adviser"; "Service Adviser")
                {
                }
            }
            part(; 50321)
            {
                SubPageLink = Estimate Code=FIELD(Estimate No);
            }
            group(Delivery)
            {
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Customer come-in"; "Delivery Type")
                {
                    ValuesAllowed = Customer Come-in;
                    Place of Work;
                    Home;
                    Other;
                }
                field(Time; Time)
                {
                }
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
    }

    actions
    {
        area(processing)
        {
            action("Print Estimate")
            {
                Caption = 'Print Estimate';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    estrec.SETRANGE(estrec."Estimate No", "Estimate No");
                    IF estrec.FINDFIRST THEN
                        REPORT.RUNMODAL(50323, TRUE, TRUE, estrec);
                end;
            }
        }
    }

    var
        estrec: Record "50121";
}

