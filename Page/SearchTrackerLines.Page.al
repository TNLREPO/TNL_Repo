page 50116 "Search Tracker Lines"
{
    AutoSplitKey = true;
    Caption = 'Lines';
    CardPageID = "Search Tracker Card";
    ModifyAllowed = true;
    MultipleNewLines = true;
    PageType = ListPart;
    SourceTable = Table50095;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Part No"; "Part No")
                {
                }
                field("Part Description"; "Part Description")
                {
                }
                field("Stock Type"; "Stock Type")
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Location Code"; "Location Code")
                {
                }
                field(Variant; Variant)
                {

                    trigger OnDrillDown()
                    begin
                        ItemAvailFormsMgt.ShowItemAvailFromSearchTracker(Rec, ItemAvailFormsMgt.ByVariant)
                    end;
                }
                field(Supplied; Supplied)
                {
                }
                field("Quantity Demanded"; "Quantity Demanded")
                {
                }
                field("Quantity Supplied"; "Quantity Supplied")
                {
                }
                field("Search Code"; "Search Code")
                {
                }
                field(Status; Status)
                {
                    Editable = true;
                }
                field("Unit Price"; "Unit Price")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            group("&Availability")
            {
                Caption = '&Availability';
                Image = ItemAvailability;
                action(Period)
                {
                    Caption = 'Period';
                    Image = Period;

                    trigger OnAction()
                    begin
                        ItemAvailFormsMgt.ShowItemAvailFromSearchTracker(Rec, ItemAvailFormsMgt.ByPeriod)
                    end;
                }
                action(Variant)
                {
                    Caption = 'Variant';
                    Image = ItemVariant;

                    trigger OnAction()
                    begin
                        ItemAvailFormsMgt.ShowItemAvailFromSearchTracker(Rec, ItemAvailFormsMgt.ByVariant)
                    end;
                }
                action(Location)
                {
                    AccessByPermission = TableData 14 = R;
                    Caption = 'Location';
                    Image = Warehouse;

                    trigger OnAction()
                    begin
                        ItemAvailFormsMgt.ShowItemAvailFromSearchTracker(Rec, ItemAvailFormsMgt.ByLocation)
                    end;
                }
            }
            action("&Substitutuion")
            {
                Caption = '&Substitutuion';
                Image = Suggest;
                Promoted = true;
                PromotedCategory = Process;
                RunObject = Page 50154;
                RunPageLink = Substitute No.=FIELD(Part No),
                              Location Filter=FIELD(Location Code);
            }
        }
    }

    var
        ItemAvailFormsMgt: Codeunit "353";
}

