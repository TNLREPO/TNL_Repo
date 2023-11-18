page 70174 "Enquiry Card"
{
    SourceTable = Table70011;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                }
                field(Date; Date)
                {
                }
                field("User ID"; "User ID")
                {
                }
                field("User name"; "User name")
                {
                }
                field("Type of Call"; "Type of Call")
                {

                    trigger OnValidate()
                    begin
                        // IF Enquiry = TRUE THEN
                        //    VisbleEnquiry:= TRUE ELSE
                        //    VisbleEnquiry:= FALSE ;

                        //IF Complaint= TRUE THEN
                        //   VisibleComplaint := TRUE ELSE
                        //   VisibleComplaint := FALSE;
                    end;
                }
            }
            group("Dealer's Details")
            {
                field("Dealer's Name"; "Dealer's Name")
                {
                }
                field("Dealer's Location"; "Dealer's Location")
                {
                }
            }
            group("Customer Details")
            {
                field("Mode of Contact"; "Mode of Contact")
                {
                }
                field(Title; Title)
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Customer Phone"; "Customer Phone")
                {
                }
                field("Customer Email"; "Customer Email")
                {
                }
                field("Company Name"; "Company Name")
                {
                }
                field(Location; Location)
                {
                }
                field(City; City)
                {
                }
            }
            group("Vehicle Details")
            {
                field(Vin; Vin)
                {
                }
                field("Registration No"; "Registration No")
                {
                }
                field("Mode Type"; "Mode Type")
                {
                }
                field("Model Code"; "Model Code")
                {
                }
                field("Date of delivery"; "Date of delivery")
                {
                }
                field("Date of Purchase"; "Date of Purchase")
                {
                }
                field(Milage; Milage)
                {
                }
            }
            group(Enquiry)
            {
                field("Enquiry Date"; "Enquiry Date")
                {
                }
                field("Enquiry Type"; "Enquiry Type")
                {
                }
                field("Enguiry Detail"; "Enguiry Detail")
                {
                }
                field("Action Taken Enquiry"; "Action Taken Enquiry")
                {
                    Caption = 'Action Taken';
                }
            }
        }
    }

    actions
    {
    }
}

