page 50150 "Item Price Group"
{
    PageType = Card;
    SourceTable = Table50094;

    layout
    {
        area(content)
        {
            repeater()
            {
                field("Item Price Grp Code"; "Item Price Grp Code")
                {
                }
                field(Description; Description)
                {
                }
                field("Maximum Discount %"; "Maximum Discount %")
                {
                    BlankZero = true;
                }
                field("Min Profit % After Discount"; "Min Profit % After Discount")
                {
                    BlankZero = true;
                }
                field("MarkUp Profit % After Discount"; "MarkUp Profit % After Discount")
                {
                    BlankZero = true;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Profit % On Cost B4 Discount"; "Profit % On Cost B4 Discount")
                {
                    BlankZero = true;
                    MultiLine = true;
                }
                field("MarkUp Profit % B4 Discount"; "MarkUp Profit % B4 Discount")
                {
                    BlankZero = true;
                    MultiLine = true;
                    Style = Standard;
                    StyleExpr = TRUE;
                }
                field("Group Items"; "Group Items")
                {
                    BlankZero = true;
                    MultiLine = true;
                }
                field("Group Count"; "Group Count")
                {
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action("Update Item Profit %")
            {
                Caption = 'Update Item Profit %';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    ItemRec.SETCURRENTKEY(ItemRec."Item Price Group");
                    ItemRec.SETRANGE(ItemRec."Item Price Group", "Item Price Grp Code");
                    ItemRec.SETRANGE(ItemRec."Block Price Group Update", FALSE); //added by santus
                    IF CONFIRM('Update Profit on Items for Group %2 to  %3 ?', TRUE, FALSE, Rec."Item Price Grp Code",
                                                                             Rec."MarkUp Profit % B4 Discount") THEN BEGIN
                        IF ItemRec.FIND('-') THEN BEGIN
                            ItemRec.MODIFYALL(ItemRec."Profit %", "MarkUp Profit % B4 Discount", TRUE);
                            MESSAGE('Profit on Items for Group %1 have been Updated to %2', "Item Price Grp Code", "MarkUp Profit % B4 Discount");
                        END;
                    END;
                end;
            }
        }
    }

    var
        ItemRec: Record 27;
}

