page 70207 "Capex Card New"
{
    PageType = Card;
    SourceTable = Table70008;

    layout
    {
        area(content)
        {
            group("Capex Details")
            {
                field("No."; "No.")
                {
                    Caption = 'Capex No.';
                }
                field(Date; Date)
                {
                    Editable = false;
                }
                field("Requester Name"; "Requester Name")
                {
                    Editable = false;
                }
                field("Requester Department"; "Requester Department")
                {
                    Editable = false;
                }
                field("Capex Type"; "Capex Type")
                {
                }
                field("Budget Amount"; "Budget Amount")
                {
                }
                field("Proposed Purchase Amount"; "Proposed Purchase Amount")
                {
                    Editable = true;
                }
                field("Purchase Justification"; "Purchase Justification")
                {
                    Caption = 'Justification';
                }
                field("Asset Description"; "Asset Description")
                {
                }
                field("Asset User Code"; "Asset User Code")
                {
                }
                field("Asset User Name"; "Asset User Name")
                {
                }
                field("User Department Code"; "User Department Code")
                {
                    Editable = false;
                }
                field("Send To"; "Send To")
                {
                }
                field(Send; Send)
                {
                }
            }
            group("Procurement Approval")
            {
                grid()
                {
                    group()
                    {
                        field("Head of Department"; "Head of Department")
                        {
                            Caption = 'Head of Department';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name HOD"; "Name HOD")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate1; TimeDate1)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Head of Audit"; "Head of Audit")
                        {
                            Caption = 'Head of Audit';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name Head of Audit"; "Name Head of Audit")
                        {
                            Editable = false;
                            ShowCaption = false;
                        }
                        field(TimeDate2; TimeDate2)
                        {
                            Editable = false;
                            ShowCaption = false;
                        }
                    }
                }
                grid()
                {
                    group()
                    {
                        field("General Manager"; "General Manager")
                        {
                            Caption = 'General Manager';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name GM"; "Name GM")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate3; TimeDate3)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Managing Director"; "Managing Director")
                        {
                            Caption = 'Managing Director';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Name MD"; "Name MD")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate4; TimeDate4)
                        {
                            ShowCaption = false;
                        }
                    }
                }
            }
            group("Advance Payment Approval")
            {
                grid()
                {
                    group()
                    {
                        field("Adv. Paymt. HOD"; "Adv. Paymt. HOD")
                        {
                            Caption = 'Head of Department';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Authorized by HOD"; "Authorized by HOD")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate5; TimeDate5)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Adv. Paymt. Audit"; "Adv. Paymt. Audit")
                        {
                            Caption = 'Head of Audit';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Authorized by Audit"; "Authorized by Audit")
                        {
                            ShowCaption = false;
                        }
                        field(TimeDate6; TimeDate6)
                        {
                            ShowCaption = false;
                        }
                    }
                }
            }
            group("Service/Item Delivery Check")
            {
                grid()
                {
                    group()
                    {
                        field("Service Delivery1"; "Service Delivery1")
                        {
                            Caption = 'Requester';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Confirmed By1"; "Confirmed By1")
                        {
                            Caption = 'Checked by Requester';
                            Editable = false;
                            ShowCaption = false;
                        }
                        field(TimeDate7; TimeDate7)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Service Delivery2"; "Service Delivery2")
                        {
                            Caption = 'Auditor';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Confirmed By2"; "Confirmed By2")
                        {
                            Caption = 'Checked by Audit';
                            ShowCaption = false;
                        }
                        field(TimeDate9; TimeDate9)
                        {
                            ShowCaption = false;
                        }
                    }
                }
            }
            group("Balance Payment  Approval")
            {
                grid()
                {
                    group()
                    {
                        field("Bal. Paymt. HOD"; "Bal. Paymt. HOD")
                        {
                            Caption = 'Head of Department';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by HOD"; "Bal. Paymt. by HOD")
                        {
                            Caption = 'Payment Approved by';
                            Editable = false;
                            ShowCaption = false;
                        }
                        field(TimeDate8; TimeDate8)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Bal. Paymt. Audit"; "Bal. Paymt. Audit")
                        {
                            Caption = 'Head of Audit';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by Audit"; "Bal. Paymt. by Audit")
                        {
                            Caption = 'Payment Approved by';
                            ShowCaption = false;
                        }
                        field(TimeDate10; TimeDate10)
                        {
                            ShowCaption = false;
                        }
                    }
                }
                grid()
                {
                    group()
                    {
                        field("Bal. Paymt. GM"; "Bal. Paymt. GM")
                        {
                            Caption = 'General Manager';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by GM"; "Bal. Paymt. by GM")
                        {
                            Caption = 'Payment Approved by';
                            ShowCaption = false;
                        }
                        field(TimeDate11; TimeDate11)
                        {
                            ShowCaption = false;
                        }
                    }
                    group()
                    {
                        field("Bal. Paymt. MD"; "Bal. Paymt. MD")
                        {
                            Caption = 'Managing Director';
                            Style = StrongAccent;
                            StyleExpr = TRUE;
                        }
                        field("Bal. Paymt. by MD"; "Bal. Paymt. by MD")
                        {
                            Caption = 'Payment Approved by';
                            Editable = false;
                            ShowCaption = false;
                        }
                        field(TimeDate12; TimeDate12)
                        {
                            Editable = false;
                            ShowCaption = false;
                        }
                    }
                }
            }
        }
        area(factboxes)
        {
            part(; 70130)
            {
                SubPageLink = Document Type=FIELD(Document Type),
                              No.=FIELD(No.);
            }
        }
    }

    actions
    {
    }

    trigger OnAfterGetRecord()
    begin
        CurrPage.EDITABLE := TRUE;
    end;

    trigger OnOpenPage()
    begin
        CurrPage.EDITABLE := TRUE;
    end;
}

