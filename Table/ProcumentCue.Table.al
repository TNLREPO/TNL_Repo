table 70015 "Procument Cue"
{

    fields
    {
        field(1; "User id"; Code[50])
        {
        }
        field(2; "Opex Approval- HOD"; Integer)
        {
            /*  CalcFormula = Count ("Procurement Header" WHERE (Send = CONST (Yes),
                                                             Head of Department=FILTER(<>Approved),
                                                             Reject=CONST(No),
                                                             Document Type=CONST(Opex)));
             FieldClass = FlowField; */
        }
        field(3; "Opex Approval-  Audit"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Head of Department=CONST(Approved),
                                                            Head of Audit=FILTER(<>Approved),
                                                            Reject=CONST(No),
                                                            Document Type=CONST(Opex)));
            FieldClass = FlowField; */
        }
        field(4; "Opex Approval- GM"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (ListGM=FILTER(Yes),
                                                            Head of Audit=CONST(Approved),
                                                            "General Manag"er=FILTER(<>Approved|Rejected),
                                                            Managing Director=CONST(" "),
                                                            Reject=CONST(No),
                                                            Document Type=CONST(Opex)));
            FieldClass = FlowField; */
        }
        field(5; "Opex Approval- MD"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (ListMD=FILTER(Yes),
                                                            Head of Audit=CONST(Approved),
                                                            General Manager=CONST(" "),
                                                            Managing Director=FILTER(<>Approved|Rejected),
                                                            Reject=CONST(No),
                                                            Document Type=CONST(Opex)));
            FieldClass = FlowField; */
        }
        field(6; "Opex Adv. Apprv."; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Adv. Pymt. Required=CONST(Yes),
                                                            Adv. Paymt. Audit=FILTER(On-hold|' '),
                                                            Document Type=CONST(Opex),
                                                            Reject=CONST(No),
                                                            Adv. Paymt. HOD=FILTER(Approved)));
            FieldClass = FlowField; */
        }
        field(7; "Opex Compliance Check"; Integer)
        {
           /*  CalcFormula = Count("Procurement Header" WHERE(Compliance = CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(No),
                                                            Document Type=CONST(Opex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(8; "Opex Balance/Full Payment-MD"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Bal. Paymt. Audit=FILTER(Approved),
                                                            ListMD=FILTER(Yes),
                                                            Compliance=CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(Yes),
                                                            Balance Paymt.=CONST(No),
                                                            Closed=CONST(No),
                                                            Document Type=CONST(Opex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(9; "OpexBalance/Full Payment-Audit"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Bal. Paymt. HOD=FILTER(Approved),
                                                            Bal. Paymt. Audit=FILTER(<>Approved|Rejected),
                                                            Compliance=CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(Yes),
                                                            Balance Paymt.=CONST(No),
                                                            Closed=CONST(No),
                                                            Document Type=CONST(Opex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(10; "Opex Balance/Full Payment-GM"; Integer)
        {
            /*  CalcFormula = Count("Procurement Header" WHERE (Bal. Paymt. Audit=FILTER(Approved),
                                                             ListGM=CONST(Yes),
                                                             Compliance=CONST(Yes),
                                                             Balance Paymt. Appr.=CONST(Yes),
                                                             Balance Paymt.=CONST(No),
                                                             Closed=CONST(No),
                                                             Document Type=CONST(Opex),
                                                             Reject=CONST(No)));
             FieldClass = FlowField; */
        }
        field(11; "Opex Balance/Full Payment-HOD"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Bal. Paymt. HOD=FILTER(<>Approved|Rejected),
                                                            Compliance=CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(Yes),
                                                            Balance Paymt.=CONST(No),
                                                            Closed=CONST(No),
                                                            Document Type=CONST(Opex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(12; "Approved Opex"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Move to LPO=CONST(Yes),
                                                            Voucher Raised=CONST(No),
                                                            Compliance=CONST(No),
                                                            Adv. Pymt. Required=CONST(No),
                                                            Document Type=CONST(Opex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(13; "Capex Approval- HOD"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Send=CONST(Yes),
                                                            Head of Department=FILTER(<>Approved),
                                                            Reject=CONST(No),
                                                            Document Type=CONST(Capex),
                                                            Closed=CONST(No)));
            FieldClass = FlowField; */
        }
        field(14; "Capex Approval-  Audit"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Head of Department=CONST(Approved),
                                                            Head of Audit=FILTER(<>Approved),
                                                            Reject=CONST(No),
                                                            Document Type=CONST(Capex)));
            FieldClass = FlowField; */
        }
        field(15; "Capex Approval- GM"; Integer)
        {
            /*   CalcFormula = Count("Procurement Header" WHERE (Capex Type=FILTER(Sundry Asset),
                                                              Head of Audit=CONST(Approved),
                                                              General Manager=FILTER(<>Approved|Rejected),
                                                              Managing Director=CONST(" "),
                                                              Reject=CONST(No),
                                                              Document Type=CONST(Capex)));
              FieldClass = FlowField; */
        }
        field(16; "Capex Approval- MD"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Capex Type=FILTER(Fixed Asset),
                                                            Head of Audit=CONST(Approved),
                                                            General Manager=CONST(" "),
                                                            Managing Director=FILTER(<>Approved|Rejected),
                                                            Reject=CONST(No),
                                                            Document Type=CONST(Capex),
                                                            Proposed Purchase Amount=FILTER(>100,000)));
            FieldClass = FlowField; */
        }
        field(17; "Capex Adv. Apprv."; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Adv. Pymt. Required=CONST(Yes),
                                                            Adv. Paymt. Audit=FILTER(<>Approved),
                                                            Document Type=CONST(Capex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(18; "Capex Compliance Check"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE(Compliance = CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(No),
                                                            Document Type=CONST(Capex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(19; "Capex Balance/Full Payment-MD"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Bal. Paymt. Audit=FILTER(Approved),
                                                            Compliance=CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(Yes),
                                                            Balance Paymt.=CONST(No),
                                                            Closed=CONST(No),
                                                            Document Type=CONST(Capex),
                                                            Reject=CONST(No),
                                                            Proposed Purchase Amount=FILTER(>=100,000),
                                                            Bal. Paymt. MD=FILTER(' ')));
            FieldClass = FlowField; */
        }
        field(20; "Capex Bal./Full Payment-Audit"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Bal. Paymt. HOD=FILTER(Approved),
                                                            Bal. Paymt. Audit=FILTER(<>Approved|Rejected),
                                                            Compliance=CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(Yes),
                                                            Balance Paymt.=CONST(No),
                                                            Closed=CONST(No),
                                                            Document Type=CONST(Capex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(21; "Capex Balance/Full Payment-GM"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Bal. Paymt. Audit=FILTER(Approved),
                                                            ListGM=CONST(Yes),
                                                            Compliance=CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(Yes),
                                                            Balance Paymt.=CONST(No),
                                                            Closed=CONST(No),
                                                            Document Type=CONST(Opex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(22; "Capex Balance/Full Payment-HOD"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Bal. Paymt. HOD=FILTER(<>Approved|Rejected),
                                                            Compliance=CONST(Yes),
                                                            Balance Paymt. Appr.=CONST(Yes),
                                                            Balance Paymt.=CONST(No),
                                                            Closed=CONST(No),
                                                            Document Type=CONST(Capex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(23; "Approved Capex"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Move to LPO=CONST(Yes),
                                                            Voucher Raised=CONST(No),
                                                            Compliance=CONST(No),
                                                            Adv. Pymt. Required=CONST(No),
                                                            Document Type=CONST(Capex),
                                                            Reject=CONST(No)));
            FieldClass = FlowField; */
        }
        field(24; "MD Approval Leave"; Integer)
        {
            /* CalcFormula = Count("Leave Request3" WHERE (MD Leave Approval=CONST(Yes),
                                                        Approved2=CONST(No),
                                                        Treated=CONST(No),
                                                        Reject=CONST(No)));
            FieldClass = FlowField;} 
            */
        }
        field(25; "LPP List"; Integer)
        {

            /*  CalcFormula = Count("Local Part Purchase Register" WHERE(Send = CONST(No)));
             FieldClass = FlowField; */

        }
        field(26; "Compliance Check LPP"; Integer)
        {
            /* CalcFormula = Count("Local Part Purchase Register" WHERE(HoDPartApproval = CONST(Yes),
                                                                      ComplianceCheck = CONST(Yes),
                                                                      HoDAuditApproval = CONST(No),
                                                                      Procurement Approval=CONST(No),
                                                                      MD Approval=CONST(No),
                                                                      GM Approval=CONST(No),
                                                                      Rejected=CONST(No)));
            FieldClass = FlowField; */

        }
        field(27; "HOD Audit Approval LPP"; Integer)
        {
            /*  CalcFormula = Count("Local Part Purchase Register" WHERE(ComplianceCheck = CONST(Yes),
                                                                       HoDAuditApproval = CONST(Yes),
                                                                       Procurement Approval=CONST(No),
                                                                       MD Approval=CONST(No),
                                                                       GM Approval=CONST(No),
                                                                       Order Type=FILTER(<>Isolo Store),
                                                                       Rejected=CONST(No)));
             FieldClass = FlowField; */

        }
        field(28; "Local Part Purch. MD"; Integer)
        {
            /* CalcFormula = Count("Local Part Purchase Register" WHERE (Procurement Approval=CONST(No),
                                                                      MD Approval=CONST(Yes),
                                                                      GM Approval=CONST(No),
                                                                      Genarate LPO=CONST(No),
                                                                      Rejected=CONST(No),
                                                                      Compliance check=CONST(Satisfactory),
                                                                      Head of Audit=CONST(Approved),
                                                                      Total Purchase Value=FILTER(>499,999.99)));
            FieldClass = FlowField; */
        }
        field(29; "Local Part Purch. Isolo"; Integer)
        {
            /* CalcFormula = Count("Local Part Purchase Register" WHERE (Procurement Approval=CONST(No),
                                                                      MD Approval=CONST(Yes),
                                                                      GM Approval=CONST(No),
                                                                      Genarate LPO=CONST(No),
                                                                      Rejected=CONST(No),
                                                                      Compliance check=CONST(Satisfactory),
                                                                      Total Purchase Value=FILTER(>499,999.99),
                                                                      Order Type=FILTER(Isolo Store)));
            FieldClass = FlowField; */
        }
        field(30; "Leave Req. Approval"; Integer)
        {
            /*"CalcFormula = Count("Leave Request3" WHERE (Global Dimension 1 code=CONST(08AUDSYS),
                                                        Send for Approval=CONST(Yes),
                                                        1st Approval Status=FILTER(' '|On hold)));
            FieldClass = FlowField; */
        }
        field(31; "IOU Audit Approval"; Integer)
        {
            /* "CalcFormula = Count("IOU Register" WHERE (2nd Approval to=FILTER(TOYOTANIGERIA\ADEWUMI),
                                                      1st Apprv. Status=FILTER(Approved),
                                                      2nd Apprv. Status=FILTER(' '|on Hold),
                                                      Reject=CONST(No)));"
            FieldClass = FlowField; */
        }
        field(32; "Leave Req. FINACC Appr."; Integer)
        {
            /* CalcFormula = Count("Leave Request3" WHERE (Global Dimension 1 code=CONST(07FINACC),
                                                        Send for Approval=CONST(Yes),
                                                        1st Approval Status=FILTER(' '|On hold),
                                                        1st Approver=CONST(TOYOTANIGERIA\PAA)));
            FieldClass = FlowField; */

        }
        field(33; "Opex HOD Adv. Apprv."; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Adv. Pymt. Required=CONST(Yes),
                                                            Document Type=CONST(Opex),
                                                            Adv. Paymt. HOD=FILTER(On-hold|' '),
                                                            Reject=FILTER(No)));
            FieldClass = FlowField; */

        }
        field(34; "Capex HOD Adv. Apprv."; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Adv. Pymt. Required=CONST(Yes),
                                                            Document Type=CONST(Capex),
                                                            Adv. Paymt. HOD=FILTER(On-hold|' '),
                                                            Reject=FILTER(No)));
            Description = 'Capex HOD Adv. Apprv.';
            FieldClass = FlowField; */

        }
        field(36; "Capex Approval- PAA"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Capex Type=FILTER(Sundry Asset),
                                                            Head of Audit=CONST(Approved),
                                                            General Manager=FILTER(<>Approved|Rejected),
                                                            Managing Director=CONST(" "),
                                                            Reject=CONST(No),
                                                            Document Type=CONST(Capex)));
            FieldClass = FlowField; */

        }
        field(37; "IOU PAA Approval"; Integer)
        {
            /* CalcFormula = Count("IOU Register" WHERE (3rd Approval to=FILTER(TOYOTANIGERIA\PAA),
                                                      3rd Apprv.Status=FILTER(' '|on Hold),
                                                      Reject=CONST(No)));
            FieldClass = FlowField; */

        }
        field(38; "Opex Compliance Check PAA"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Compliance=CONST(Yes),
                                                            Bal. Paymt. by HOD=CONST(Mrs. Patricia Abanum),
                                                            Document Type=CONST(Opex),
                                                            Reject=CONST(No),
                                                            Bal. Paymt. HOD=FILTER(' '|On-hold)));
            FieldClass = FlowField; */

        }
        field(39; "Opex Approval- PAA"; Integer)
        {
            /* CalcFormula = Count("Procurement Header" WHERE (Send=CONST(Yes),
                                                            Document Type=CONST(Opex),
                                                            Send To=CONST(TOYOTANIGERIA\PAA)));
            FieldClass = FlowField; */

        }
        field(40; "AOO HOD Part"; Integer)
        {
            /* CalcFormula = Count("Air Online Header" WHERE (Send=CONST(Yes),
                                                           HoDPartApproval=CONST(Yes),
                                                           ComplianceCheck=CONST(No)));
            FieldClass = FlowField; */

        }
        field(41; "AOO Compliance Check"; Integer)
        {
            /* CalcFormula = Count("Air Online Header" WHERE (Send=CONST(Yes),
                                                           HoDPartApproval=CONST(Yes),
                                                           ComplianceCheck=CONST(Yes),
                                                           HoDAuditApproval=CONST(No)));
            FieldClass = FlowField; */

        }
        field(42; "AOO HOD Audit"; Integer)
        {
            /* CalcFormula = Count("Air Online Header" WHERE (Send=CONST(Yes),
                                                           HoDPartApproval=CONST(Yes),
                                                           ComplianceCheck=CONST(Yes),
                                                           HoDAuditApproval=CONST(Yes),
                                                           GMapproval=CONST(No),
                                                           MDapproval=CONST(No)));
            FieldClass = FlowField; */
        }
        field(43; "Air Online Order MD"; Integer)
        {
            /* CalcFormula = Count("Air Online Header" WHERE (Send=CONST(Yes),
                                                           HoDPartApproval=CONST(Yes),
                                                           ComplianceCheck=CONST(Yes),
                                                           HoDAuditApproval=CONST(Yes),
                                                           GMapproval=CONST(No),
                                                           MDapproval=CONST(Yes)));
            FieldClass = FlowField; */
        }
    }

    keys
    {
        key(Key1; "User id")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

