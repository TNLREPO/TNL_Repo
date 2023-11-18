page 50112 "Toyota Warranty Registration"
{
    DelayedInsert = true;
    PageType = Card;
    SourceTable = Table50022;

    layout
    {
        area(content)
        {
            group("Toyota Warranty Registration")
            {
                Caption = 'Toyota Warranty Registration';
                field("Dealer's Name"; "Dealer's Name")
                {
                }
                field("Dealer's No."; "Dealer's No.")
                {
                }
                field(VIN; VIN)
                {
                    Caption = 'Vehicle Identification Number';
                }
                field(WMI; WMI)
                {
                }
                field("Owner's Name"; "Owner's Name")
                {
                }
                field(Address; Address)
                {
                }
                field(City; City)
                {
                }
                field("Original Speedometer Rep Date"; "Original Speedometer Rep Date")
                {
                }
                field("Original Speedometer Rep at"; "Original Speedometer Rep at")
                {
                }
                field("Warranty Cop Rec. Date"; "Warranty Cop Rec. Date")
                {
                }
                field(VDS; VDS)
                {
                }
                field(State; State)
                {
                }
                field("Chassis Number"; "Chassis Number")
                {
                    Editable = false;
                }
                field("Delivery Date"; "Delivery Date")
                {
                }
                field(VIS; VIS)
                {
                }
                field("Post Code"; "Post Code")
                {
                }
                field("Delay Days"; "Delay Days")
                {
                    Style = StandardAccent;
                    StyleExpr = TRUE;
                }
                field("Attach TWC"; "Attach TWC")
                {
                    Editable = false;
                    Style = StandardAccent;
                    StyleExpr = TRUE;
                }
                field("Attach FTR"; "Attach FTR")
                {
                    Editable = false;
                    Style = StandardAccent;
                    StyleExpr = TRUE;
                }
            }
            group("Owner Detail")
            {
                Caption = 'Owner Detail';
                field("Owner Age"; "Owner Age")
                {
                }
                field("Owner Sex"; "Owner Sex")
                {
                }
                field("Owner Type"; "Owner Type")
                {
                }
                field("Business Sector"; "Business Sector")
                {
                }
                field("Contact Persons"; "Contact Persons")
                {
                }
                field("Driver Name"; "Driver Name")
                {
                }
                field("Mobile Phone"; "Mobile Phone")
                {
                }
                field(Phone; Phone)
                {
                }
                field("Fax Line"; "Fax Line")
                {
                }
                field("E-Mail"; "E-Mail")
                {
                }
                field("Home-Page"; "Home-Page")
                {
                }
            }
        }
    }

    actions
    {
    }
}

