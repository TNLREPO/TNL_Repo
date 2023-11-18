page 50379 "Service Order History"
{
    Editable = false;
    PageType = Card;
    SourceTable = Table5900;

    layout
    {
        area(content)
        {
            repeater()
            {
                field(Posted; Posted)
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("No."; "No.")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Bill-to Name"; "Bill-to Name")
                {
                }
                field("Shortcut Dimension 1 Code"; "Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; "Shortcut Dimension 2 Code")
                {
                }
                field(Model; Model)
                {
                }
                field(Chassis; Chassis)
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Odometer Reading Reception"; "Odometer Reading Reception")
                {
                }
                field("Job Details"; "Job Details")
                {
                }
                field(Make; Make)
                {
                }
                field("Service Advisor"; "Service Advisor")
                {
                }
                field("Service Advisor's Name"; "Service Advisor's Name")
                {
                }
                field("Reception Date"; "Reception Date")
                {
                }
                field("Reception Time"; "Reception Time")
                {
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field("Delivery Time"; "Delivery Time")
                {
                }
            }
            part(; 5907)
            {
                SubPageLink = Document Type=FIELD(Document Type),
                              Document No.=FIELD(No.);
            }
            part(;50241)
            {
                SubPageLink = Customer Order Form No.=FIELD(No.),
                              Line Type=FILTER(Sublet);
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("Fu&nction")
            {
                Caption = 'Fu&nction';
                action("Print History")
                {
                    Caption = 'Print History';

                    trigger OnAction()
                    begin
                        ServiceHeader.SETRANGE(ServiceHeader."Document Type","Document Type");
                        //ServiceHeader.SETRANGE(ServiceHeader."No.","No.");
                        ServiceHeader.SETRANGE(ServiceHeader."Vehicle Registration No.","Vehicle Registration No.");
                        IF ServiceHeader.FINDFIRST THEN
                        REPORT.RUNMODAL(50341,TRUE,TRUE,ServiceHeader);
                    end;
                }
            }
        }
    }

    var
        ServiceHeader: Record "5900";
}

