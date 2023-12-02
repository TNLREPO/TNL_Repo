page 70217 "MD Proc Apprv Isolo"
{
    CardPageID = "LPP Card2";
    PageType = List;
    SourceTable = "Local Part Purchase Register";
    SourceTableView = WHERE ("Procurement Approved"=filter(false),
                            "GM Approval"=filter(false),
                            "MD Approval"=filter(true),
                            "Genarate LPO"=filter(false),
                            Rejected=filter(false),
                            "Compliance check"=filter(Satisfactory),
                            "Total Purchase Value"=FILTER(>499999.99),
                            "Order Type"=FILTER("Isolo Store"));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("LPP No.";Rec."LPP No.")
                {
                }
                field("Requester Name";Rec."Requester Name")
                {
                }
                field("Requester Department";Rec."Requester Department")
                {
                }
                field("Supplier's Name";Rec."Supplier's Name")
                {
                }
                field("Justification for purchase";Rec."Justification for purchase")
                {
                }
                field("Total Purchase Value";Rec."Total Purchase Value")
                {
                }
            }
        }
    }

    actions
    {
    }

    var
        ProcurementHeader: Record "70008";
}

