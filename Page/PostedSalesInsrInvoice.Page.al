page 50409 "Posted Sales Insr. Invoice"
{
    CardPageID = "Posted Sales Invoice";
    DeleteAllowed = false;
    InsertAllowed = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = "Sales Invoice Header";
    SourceTableView = SORTING("No.")
                      WHERE("Your Reference" = FILTER('*TCOF*'),
                            "Sell-to Customer No." = FILTER(940000));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Sell-to Customer No."; Rec."Sell-to Customer No.")
                {
                }
                field("No."; Rec."No.")
                {
                }
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                }
                field("Bill-to Name"; Rec."Bill-to Name")
                {
                }
                field("Bill-to Name 2"; Rec."Bill-to Name 2")
                {
                }
                field("Bill-to Address"; Rec."Bill-to Address")
                {
                }
                field("Bill-to Address 2"; Rec."Bill-to Address 2")
                {
                }
                field("Bill-to City"; Rec."Bill-to City")
                {
                }
                field("Bill-to Contact"; Rec."Bill-to Contact")
                {
                }
                field("Your Reference"; Rec."Your Reference")
                {
                }
                field("Ship-to Code"; Rec."Ship-to Code")
                {
                }
                field("Ship-to Name"; Rec."Ship-to Name")
                {
                }
                field("Ship-to Name 2"; Rec."Ship-to Name 2")
                {
                }
                field("Ship-to Address"; Rec."Ship-to Address")
                {
                }
                field("Ship-to Address 2"; Rec."Ship-to Address 2")
                {
                }
                field("Ship-to City"; Rec."Ship-to City")
                {
                }
                field("Ship-to Contact"; Rec."Ship-to Contact")
                {
                }
                field("Order Date"; Rec."Order Date")
                {
                }
                field("Posting Date"; Rec."Posting Date")
                {
                }
                field("Shipment Date"; Rec."Shipment Date")
                {
                }
                field("Posting Description"; Rec."Posting Description")
                {
                }
                field("Payment Terms Code"; Rec."Payment Terms Code")
                {
                }
                field("Due Date"; Rec."Due Date")
                {
                }
                field("Payment Discount %"; Rec."Payment Discount %")
                {
                }
                field("Pmt. Discount Date"; Rec."Pmt. Discount Date")
                {
                }
                field("Shipment Method Code"; Rec."Shipment Method Code")
                {
                }
                field("Location Code"; Rec."Location Code")
                {
                }
                field("Shortcut Dimension 1 Code"; Rec."Shortcut Dimension 1 Code")
                {
                }
                field("Shortcut Dimension 2 Code"; Rec."Shortcut Dimension 2 Code")
                {
                }
                field("Customer Posting Group"; Rec."Customer Posting Group")
                {
                }
                field("Currency Code"; Rec."Currency Code")
                {
                }
                field("Currency Factor"; Rec."Currency Factor")
                {
                }
                field("Customer Price Group"; Rec."Customer Price Group")
                {
                }
                field("Prices Including VAT"; Rec."Prices Including VAT")
                {
                }
                field("Invoice Disc. Code"; Rec."Invoice Disc. Code")
                {
                }
                field("Customer Disc. Group"; Rec."Customer Disc. Group")
                {
                }
                field("Language Code"; Rec."Language Code")
                {
                }
                field("Salesperson Code"; Rec."Salesperson Code")
                {
                }
                field("Order No."; Rec."Order No.")
                {
                }
                field(Comment; Rec.Comment)
                {
                }
                field("No. Printed"; Rec."No. Printed")
                {
                }
                field("On Hold"; Rec."On Hold")
                {
                }
                field("Applies-to Doc. Type"; Rec."Applies-to Doc. Type")
                {
                }
                field("Applies-to Doc. No."; Rec."Applies-to Doc. No.")
                {
                }
                field("Bal. Account No."; Rec."Bal. Account No.")
                {
                }
                field(Amount; Rec.Amount)
                {
                }
                field("Amount Including VAT"; Rec."Amount Including VAT")
                {
                }
                field("VAT Registration No."; Rec."VAT Registration No.")
                {
                }
                field("Reason Code"; Rec."Reason Code")
                {
                }
                field("Gen. Bus. Posting Group"; Rec."Gen. Bus. Posting Group")
                {
                }
                field("EU 3-Party Trade"; Rec."EU 3-Party Trade")
                {
                }
                field("Transaction Type"; Rec."Transaction Type")
                {
                }
                field("Transport Method"; Rec."Transport Method")
                {
                }
                field("VAT Country/Region Code"; Rec."VAT Country/Region Code")
                {
                }
                field("Sell-to Customer Name"; Rec."Sell-to Customer Name")
                {
                }
                field("Sell-to Customer Name 2"; Rec."Sell-to Customer Name 2")
                {
                }
                field("Sell-to Address"; Rec."Sell-to Address")
                {
                }
                field("Sell-to Address 2"; Rec."Sell-to Address 2")
                {
                }
                field("Sell-to City"; Rec."Sell-to City")
                {
                }
                field("Sell-to Contact"; Rec."Sell-to Contact")
                {
                }
                field("Bill-to Post Code"; Rec."Bill-to Post Code")
                {
                }
                field("Bill-to County"; Rec."Bill-to County")
                {
                }
                field("Bill-to Country/Region Code"; Rec."Bill-to Country/Region Code")
                {
                }
                field("Sell-to Post Code"; Rec."Sell-to Post Code")
                {
                }
                field("Sell-to County"; Rec."Sell-to County")
                {
                }
                field("Sell-to Country/Region Code"; Rec."Sell-to Country/Region Code")
                {
                }
                field("Ship-to Post Code"; Rec."Ship-to Post Code")
                {
                }
                field("Ship-to County"; Rec."Ship-to County")
                {
                }
                field("Ship-to Country/Region Code"; Rec."Ship-to Country/Region Code")
                {
                }
                field("Bal. Account Type"; Rec."Bal. Account Type")
                {
                }
                field("Exit Point"; Rec."Exit Point")
                {
                }
                field(Correction; Rec.Correction)
                {
                }
                field("Document Date"; Rec."Document Date")
                {
                }
                field("External Document No."; Rec."External Document No.")
                {
                }
                field("Area"; Rec."Area")
                {
                }
                field("Transaction Specification"; Rec."Transaction Specification")
                {
                }
                field("Payment Method Code"; Rec."Payment Method Code")
                {
                }
                field("Shipping Agent Code"; Rec."Shipping Agent Code")
                {
                }
                field("Package Tracking No."; Rec."Package Tracking No.")
                {
                }
                field("Pre-Assigned No. Series"; Rec."Pre-Assigned No. Series")
                {
                }
                field("No. Series"; Rec."No. Series")
                {
                }
                field("Order No. Series"; Rec."Order No. Series")
                {
                }
                field("Pre-Assigned No."; Rec."Pre-Assigned No.")
                {
                }
                field("User ID"; Rec."User ID")
                {
                }
                field("Source Code"; Rec."Source Code")
                {
                }
                field("Tax Area Code"; Rec."Tax Area Code")
                {
                }
                field("Tax Liable"; Rec."Tax Liable")
                {
                }
                field("VAT Bus. Posting Group"; Rec."VAT Bus. Posting Group")
                {
                }
                field("VAT Base Discount %"; Rec."VAT Base Discount %")
                {
                }
                field("Prepayment No. Series"; Rec."Prepayment No. Series")
                {
                }
                field("Prepayment Invoice"; Rec."Prepayment Invoice")
                {
                }
                field("Prepayment Order No."; Rec."Prepayment Order No.")
                {
                }
                field("Quote No."; Rec."Quote No.")
                {
                }
                field("Dimension Set ID"; Rec."Dimension Set ID")
                {
                }
                field("Remaining Amount"; Rec."Remaining Amount")
                {
                }
                field("Cust. Ledger Entry No."; Rec."Cust. Ledger Entry No.")
                {
                }
                field("Invoice Discount Amount"; Rec."Invoice Discount Amount")
                {
                }
                field("Campaign No."; Rec."Campaign No.")
                {
                }
                field("Sell-to Contact No."; Rec."Sell-to Contact No.")
                {
                }
                field("Bill-to Contact No."; Rec."Bill-to Contact No.")
                {
                }
                field("Responsibility Center"; Rec."Responsibility Center")
                {
                }
                field("Allow Line Disc."; Rec."Allow Line Disc.")
                {
                }
                field("Get Shipment Used"; Rec."Get Shipment Used")
                {
                }
                field(Quantity; Rec.Quantity)
                {
                }
                field("Line Item Count"; Rec."Line Item Count")
                {
                }
                field("Order Type"; Rec."Order Type")
                {
                }
                field("Address 3"; Rec."Address 3")
                {
                }
                field("P.O.Box"; Rec."P.O.Box")
                {
                }
                field("Del.Add. 3"; Rec."Del.Add. 3")
                {
                }
                field("Del.P.O.Box"; Rec."Del.P.O.Box")
                {
                }
                field("User Department"; Rec."User Department")
                {
                }
                field("Cost Value"; Rec."Cost Value")
                {
                }
                field(BG; Rec.BG)
                {
                }
                field(EG; Rec.EG)
                {
                }
                field(PTC; Rec.PTC)
                {
                }
                field(TEF; Rec.TEF)
                {
                }
                field("Tracker No."; Rec."Tracker No.")
                {
                }
            }
        }
    }

    actions
    {
    }
}

