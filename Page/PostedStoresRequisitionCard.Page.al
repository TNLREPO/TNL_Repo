page 50209 "Posted Stores Requisition Card"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table50101;
    SourceTableView = WHERE (Type = FILTER (Posted Issue));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("No."; "No.")
                {
                    Editable = false;
                }
                field("SIV No."; "SIV No.")
                {
                    Editable = false;
                }
                field(Date; Date)
                {
                }
                field("Global Dimension 1 Code"; "Global Dimension 1 Code")
                {
                }
                field("Global Dimension 2 Code"; "Global Dimension 2 Code")
                {
                }
                field("Fixed Assets No."; "Fixed Assets No.")
                {
                }
                field("FA Description"; "FA Description")
                {
                }
                field("Maintenance Code"; "Maintenance Code")
                {
                }
                field("User/ Drivers Name"; "User/ Drivers Name")
                {
                }
                field("Registration No."; "Registration No.")
                {
                }
                field("Total Amount"; "Total Amount")
                {
                }
                field("COF No"; "COF No")
                {
                }
            }
            part(SalesReqLines; 50206)
            {
                SubPageLink = Document No.=FIELD(No.),
                              Document Type=FIELD(Type);
            }
            group("Alloy Wheel")
            {
                Caption = 'Alloy Wheel';
                field("Invoice No.";"Invoice No.")
                {
                }
                field("Waybill No.";"Waybill No.")
                {
                    Editable = false;
                }
                field("Waybill Date";"Waybill Date")
                {
                    Editable = false;
                }
                field("Dealer Name";"Dealer Name")
                {
                    Editable = false;
                }
                field(Description;Description)
                {
                }
                field(Description2;Description2)
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action("Print Alloy Rim")
            {
                Caption = 'Print Alloy Rim';
                Image = Print;
                Promoted = true;

                trigger OnAction()
                begin
                    StoreReqHeader.SETRANGE(StoreReqHeader."No.","No.");
                    IF StoreReqHeader.FINDFIRST THEN
                      REPORT.RUNMODAL(50385,TRUE,TRUE,StoreReqHeader);
                end;
            }
        }
    }

    var
        StoreReqHeader: Record "50101";
}

