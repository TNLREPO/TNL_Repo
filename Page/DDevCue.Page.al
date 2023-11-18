page 70235 "DDev Cue"
{
    PageType = CardPart;
    SourceTable = Table70015;

    layout
    {
        area(content)
        {
            cuegroup("Opex Approval")
            {
                Caption = 'Opex Approval';
                field("Opex ApprovalDD-  Audit"; "Opex ApprovalDD-  Audit")
                {
                    Caption = 'Opex Approval-  Audit';
                }
                field("Opex ApprovalDD- GM"; "Opex ApprovalDD- GM")
                {
                    Caption = 'Opex Approval- GM';
                }
                field("Opex ApprovalDD- MD"; "Opex ApprovalDD- MD")
                {
                    Caption = 'Opex Approval- MD';
                }
                field("Opex Adv. Apprv.DD"; "Opex Adv. Apprv.DD")
                {
                    Caption = 'Opex Adv. Apprv.';
                }
                field("Opex Compliance CheckDD"; "Opex Compliance CheckDD")
                {
                    Caption = 'Opex Compliance Check';
                }
                field("Opex Balance/Full PaymentDD-MD"; "Opex Balance/Full PaymentDD-MD")
                {
                    Caption = 'Opex Balance/Full Payment-MD';
                }
                field("OpexBalance/Full PaymtDD-Audit"; "OpexBalance/Full PaymtDD-Audit")
                {
                    Caption = 'OpexBalance/Full Paymt-Audit';
                }
                field("Opex Balance/Full PaymtDD-GM"; "Opex Balance/Full PaymtDD-GM")
                {
                    Caption = 'Opex Balance/Full Paymt-GM';
                }
                field("Opex Balance/Full PaymtDD-HOD"; "Opex Balance/Full PaymtDD-HOD")
                {
                    Caption = 'Opex Balance/Full Paymt-HOD';
                }
                field("Approved OpexDD"; "Approved OpexDD")
                {
                    Caption = 'Approved Opex';
                }
            }
            cuegroup("Capex Approval")
            {
                Caption = 'Capex Approval';
                field("Capex ApprovalDD- HOD"; "Capex ApprovalDD- HOD")
                {
                    Caption = 'Capex Approval- HOD';
                }
                field("Capex ApprovalDD-  Audit"; "Capex ApprovalDD-  Audit")
                {
                    Caption = 'Capex Approval-  Audit';
                }
                field("Capex ApprovalDD- GM"; "Capex ApprovalDD- GM")
                {
                    Caption = 'Capex Approval- GM';
                }
                field("Capex ApprovaDDl- MD"; "Capex ApprovaDDl- MD")
                {
                    Caption = 'Capex Approval- MD';
                }
                field("Capex Adv. Apprv.DD"; "Capex Adv. Apprv.DD")
                {
                    Caption = 'Capex Adv. Apprv.';
                }
                field("Capex Compliance CheckDD"; "Capex Compliance CheckDD")
                {
                    Caption = 'Capex Compliance Check';
                }
                field("Capex Balance/Full PaymtDD-MD"; "Capex Balance/Full PaymtDD-MD")
                {
                    Caption = 'Capex Balance/Full Paymt-MD';
                }
                field("Capex Bal./Full PaymtDD-Audit"; "Capex Bal./Full PaymtDD-Audit")
                {
                    Caption = 'Capex Bal./Full Paymt-Audit';
                }
                field("Capex Balance/Full PaymtDD-GM"; "Capex Balance/Full PaymtDD-GM")
                {
                    Caption = 'Capex Balance/Full Paymt-GM';
                }
                field("Capex Balance/Full PaymtDD-HOD"; "Capex Balance/Full PaymtDD-HOD")
                {
                    Caption = 'Capex Balance/Full Paymt-HOD';
                }
                field("Approved CapexDD"; "Approved CapexDD")
                {
                    Caption = 'Approved Capex';
                }
            }
            cuegroup("Leave Approval")
            {
                Caption = 'Leave Approval';
                field("Leave Req. ApprovalDD"; "Leave Req. ApprovalDD")
                {
                    Caption = 'Leave Req. Approval';
                }
                field("Leave Req. ApprovalDD/HR"; "Leave Req. ApprovalDD/HR")
                {
                    Caption = 'Leave Req. ApprovalDD/HR';
                }
                field("MD Approval LeaveDD"; "MD Approval LeaveDD")
                {
                    Caption = 'MD Approval Leave';
                }
            }
        }
    }

    actions
    {
    }

    trigger OnOpenPage()
    begin
        IF NOT GET(USERID) THEN BEGIN
            INIT;
            "User id" := USERID;
            INSERT;
        END;
    end;

    var
        UserSetup: Record 91;
}

