page 50357 "Posted Issue Journal"
{
    Caption = 'Item Registers';
    Editable = false;
    PageType = List;
    SourceTable = Table46;
    SourceTableView = WHERE (Source Code=CONST(ISSUE));

    layout
    {
        area(content)
        {
            repeater()
            {
                field("No."; "No.")
                {
                }
                field("Creation Date"; "Creation Date")
                {
                }
                field("User ID"; "User ID")
                {
                }
                field("Source Code"; "Source Code")
                {
                }
                field("Journal Batch Name"; "Journal Batch Name")
                {
                }
                field("From Entry No."; "From Entry No.")
                {
                }
                field("To Entry No."; "To Entry No.")
                {
                }
                field("From Phys. Inventory Entry No."; "From Phys. Inventory Entry No.")
                {
                }
                field("To Phys. Inventory Entry No."; "To Phys. Inventory Entry No.")
                {
                }
                field("From Value Entry No."; "From Value Entry No.")
                {
                }
                field("To Value Entry No."; "To Value Entry No.")
                {
                }
                field("From Capacity Entry No."; "From Capacity Entry No.")
                {
                }
                field("To Capacity Entry No."; "To Capacity Entry No.")
                {
                }
            }
        }
    }

    actions
    {
        area(navigation)
        {
            group("&Register")
            {
                Caption = '&Register';
                action("Item Ledger")
                {
                    Caption = 'Item Ledger';
                    Image = ItemLedger;
                    RunObject = Codeunit 245;
                }
                action("Phys. Invent&ory Ledger")
                {
                    Caption = 'Phys. Invent&ory Ledger';
                    Image = PhysicalInventoryLedger;
                    RunObject = Codeunit 390;
                }
                action("Value Entries")
                {
                    Caption = 'Value Entries';
                    Image = ValueLedger;
                    RunObject = Codeunit 5800;
                }
                action("&Capacity Ledger")
                {
                    Caption = '&Capacity Ledger';
                    Image = CapacityLedger;
                    RunObject = Codeunit 5835;
                }
            }
        }
    }
}

