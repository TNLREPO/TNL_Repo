page 50129 "Parts By Model Card"
{
    PageType = Card;
    SourceTable = Model;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Model No."; Rec."Model No.")
                {
                }
                field("Model Name"; Rec."Model Name")
                {
                }
                field("Date Filter"; Rec."Date Filter")
                {
                }
                field("Model Description"; Rec."Model Description")
                {
                }
                field("Line Items"; Rec."Line Items")
                {
                }
                // field(unitinoperation; Rec.unitinoperation)
                // {
                //     Caption = 'Units in Operation';
                //     DecimalPlaces = 0 : 0;
                // }
                field("Line Items with Stock Q'ty"; Rec."Line Items with Stock Q'ty")
                {
                }
                // field(gradeI; Rec.gradeI)
                // {
                //     Caption = 'Grade I in Operation';
                //     // Visible = Rec.<> 0;
                //     DecimalPlaces = 0 : 0;
                // }
                // field(gradeII; Rec.gradeII)
                // {
                //     Caption = 'Grade II in Operation';
                //     //Visible = Rec."Grade II in Operation" <> 0;
                //     DecimalPlaces = 0 : 0;
                // }
                // field(gradeIII; Rec.gradeIII)
                // {
                //     Caption = 'Grade III in Operation';
                //     //Visible = Rec."Grade III in Operation" <> 0;
                //     DecimalPlaces = 0 : 0;
                // }
                // field(gradeIV; Rec.gradeIV)
                // {
                //     Caption = 'Grade IV in Operation';
                //     //Visible = Rec."Grade IV in Operation" <> 0;
                //     DecimalPlaces = 0 : 0;
                // }
                // field(gradeV; Rec.GradeV)
                // {
                //     Caption = 'Grade V in Operation';
                //     //Visible = Rec."Grade V in Operation" <> 0;
                //     DecimalPlaces = 0 : 0;
                // }
                // field(LUXURY; Rec.LUXURY)
                // {
                //     Caption = 'LUXURY in Operation';
                //     //Visible = Rec."LUXURY in Operation" <> 0;
                //     DecimalPlaces = 0 : 0;
                // }
                // field(PREMIUM; Rec."PREMIUM")
                // {
                //     Caption = 'PREMIUM in Operation';
                //     DecimalPlaces = 0 : 0;
                // }
                field("Grade I"; Rec."Grade I")
                {
                    DecimalPlaces = 0 : 0;
                    Visible = QtyVisibleI;
                    trigger OnValidate()

                    begin
                        QtyVisibleI := rec."Grade I" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                group("")
                {
                    field("1.5TIX50"; Rec."1.5TIX50")
                    {
                        Caption = '1.5T';
                        DecimalPlaces = 0 : 0;
                        Visible = ISTIX50;
                        trigger OnValidate()

                        begin
                            ISTIX50 := rec."1.5TIX50" <> 0;
                            CurrPage.UPDATE();
                        end;
                    }
                    // field("1.5TIX70L"; Rec."1.5TIX70L")
                    // {

                    //     DecimalPlaces = 0 : 0;
                    //     Visible = I5TIX70L;
                    //     trigger OnValidate()

                    //     begin
                    //         I5TIX70L := rec."1.5TIX70L" <> 0;
                    //         CurrPage.UPDATE();
                    //     end;
                    // }
                }
                field("Grade II"; Rec."Grade II")
                {
                    DecimalPlaces = 0 : 0;
                    Visible = QtyVisibleII;
                    trigger OnValidate()

                    begin
                        QtyVisibleII := rec."Grade II" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("1.5TIIX70L"; Rec."1.5TIIX70L")
                {

                    Caption = '1.5T';
                    DecimalPlaces = 0 : 0;
                    Visible = I5TIIX70L;
                    trigger OnValidate()

                    begin
                        I5TIIX70L := rec."1.5TIIX70L" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                // field("1.5TIIX70PE"; Rec."1.5TIIX70PE")
                // {
                //     Caption = '1.5T';
                //     DecimalPlaces = 0 : 0;
                //     Visible = I5TIIX70PE;
                //     trigger OnValidate()

                //     begin
                //         I5TIIX70PE := rec."1.5TIIX70PE" <> 0;
                //         CurrPage.UPDATE();
                //     end;
                // }
                field("1.6TIIX90P"; Rec."1.6TIIX90P")
                {
                    Caption = '1.6T';
                    DecimalPlaces = 0 : 0;
                    Visible = I6TIIX90P;
                    trigger OnValidate()

                    begin
                        I6TIIX90P := rec."1.6TIIX90P" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("Grade III"; Rec."Grade III")
                {
                    DecimalPlaces = 0 : 0;
                    Visible = QtyVisibleIII;
                    trigger OnValidate()

                    begin
                        QtyVisibleIII := rec."Grade III" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("1.5TIIIX70L"; Rec."1.5TIIIX70L")
                {
                    Caption = '1.5T';
                    DecimalPlaces = 0 : 0;
                    Visible = I5TIIIX70L;
                    trigger OnValidate()

                    begin
                        I5TIIIX70L := rec."1.5TIIIX70L" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("1.6TIIIX70PE"; Rec."1.6TIIIX70PE")
                {
                    Caption = '1.6T';
                    DecimalPlaces = 0 : 0;
                    Visible = I6TIIIX70PE;
                    trigger OnValidate()

                    begin
                        I6TIIIX70PE := rec."1.6TIIIX70PE" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("2.0TIIIX90P"; Rec."2.0TIIIX90P")
                {
                    Caption = '2.0T';
                    DecimalPlaces = 0 : 0;
                    Visible = IITIIIX90P;
                    trigger OnValidate()

                    begin
                        IITIIIX90P := rec."2.0TIIIX90P" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("Grade IV"; Rec."Grade IV")
                {
                    DecimalPlaces = 0 : 0;
                    Visible = QtyVisibleIV;
                    trigger OnValidate()

                    begin
                        QtyVisibleIV := rec."Grade IV" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("1.5TIVX1D"; Rec."1.5TIVX1D")
                {
                    Caption = '1.5T';
                    DecimalPlaces = 0 : 0;
                    Visible = I5TIVX1D;
                    trigger OnValidate()

                    begin
                        I5TIVX1D := rec."1.5TIVX1D" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("1.6TIVX70PE"; Rec."1.6TIVX70PE")
                {
                    Caption = '1.6T';
                    DecimalPlaces = 0 : 0;
                    Visible = I6TIVX70PE;
                    trigger OnValidate()

                    begin
                        I6TIVX70PE := rec."1.6TIVX70PE" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                // field("1.6TIVX90P"; Rec."1.6TIVX90P")
                // {

                //     DecimalPlaces = 0 : 0;
                //     Visible = I6TIVX90P;
                //     trigger OnValidate()

                //     begin
                //         I6TIVX90P := rec."1.6TIVX90P" <> 0;
                //         CurrPage.UPDATE();
                //     end;
                // }
                field("2.0TIVX90P"; Rec."2.0TIVX90P")
                {
                    Caption = '2.0T';
                    DecimalPlaces = 0 : 0;
                    Visible = IITIVX90P;
                    trigger OnValidate()

                    begin
                        IITIVX90P := rec."2.0TIVX90P" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("Grade V"; Rec."Grade V")
                {
                    DecimalPlaces = 0 : 0;
                    Visible = QtyVisibleV;
                    trigger OnValidate()

                    begin
                        QtyVisibleV := rec."Grade V" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("1.6TVX1D"; Rec."1.6TVX1D")
                {
                    Caption = '1.6T';
                    DecimalPlaces = 0 : 0;
                    Visible = I6TVX1D;
                    trigger OnValidate()

                    begin
                        I6TVX1D := rec."1.6TVX1D" <> 0;
                        CurrPage.UPDATE();
                    end;
                }

                field("PREMIUM QTY"; Rec."PREMIUM QTY")
                {
                    DecimalPlaces = 0 : 0;
                    Visible = QtyVisiblePRE;
                    trigger OnValidate()

                    begin
                        QtyVisiblePRE := rec."PREMIUM QTY" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("2.0TPRT2"; Rec."2.0TPRT2")
                {
                    Caption = '2.0T';
                    DecimalPlaces = 0 : 0;
                    Visible = IITPRT2;
                    trigger OnValidate()

                    begin
                        IITPRT2 := rec."2.0TPRT2" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("1.5TPRX50"; Rec."1.5TPRX50")
                {
                    Caption = '1.5T';
                    DecimalPlaces = 0 : 0;
                    Visible = I5TPRX50;
                    trigger OnValidate()

                    begin
                        I5TPRX50 := rec."1.5TPRX50" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("LUXURY QTY"; Rec."LUXURY QTY")
                {
                    DecimalPlaces = 0 : 0;
                    Visible = QtyVisibleLUX;
                    trigger OnValidate()

                    begin
                        QtyVisibleLUX := rec."LUXURY QTY" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("2.0TLUXT2"; Rec."2.0TLUXT2")
                {
                    Caption = '2.0T';
                    DecimalPlaces = 0 : 0;
                    Visible = IITLUXT2;
                    trigger OnValidate()

                    begin
                        IITLUXT2 := rec."2.0TLUXT2" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
                field("1.5TLUX50"; Rec."1.5TLUX50")
                {
                    Caption = '1.5T';
                    DecimalPlaces = 0 : 0;
                    Visible = I5TLUX50;
                    trigger OnValidate()

                    begin
                        I5TLUX50 := rec."1.5TLUX50" <> 0;
                        CurrPage.UPDATE();
                    end;
                }

                field("Total Qty Sold"; Rec."Total Qty Sold")
                {
                    DecimalPlaces = 0 : 0;
                    Visible = QtyVisible;
                    trigger OnValidate()

                    begin
                        QtyVisible := rec."Total Qty Sold" <> 0;
                        CurrPage.UPDATE();
                    end;
                }
            }
            part(Lines; "Parts By Model Lines")
            {
                SubPageLink = "Model Code" = FIELD("Model No."),
                              "Base Date" = FIELD("Date Filter");
            }
        }
        area(factboxes)
        {
            part(ItemPicture; "Item Picture")
            {
                ApplicationArea = All;
                Caption = 'Picture';
                SubPageLink = "Model No." = field("Model No.");
            }
            part(ItemPicture1; "Item Picture")
            {
                ApplicationArea = All;
                Provider = Lines;
                Caption = 'Part Picture';
                SubPageLink = "No." = field("Part No.");

            }
            part(PowerBIReport; "Power BI Embedded Report Part")
            {
                ApplicationArea = All;
                Caption = 'Power BI';
                SubPageLink = Context = field("Model No.");
            }


        }
    }

    actions
    {

        area(processing)
        {
            action("Print List")
            {
                Caption = 'Print List';
                Promoted = true;
                PromotedCategory = Process;
                RunPageOnRec = true;

                trigger OnAction()
                begin
                    modelrec.SETRANGE(modelrec."Model No.", Rec."Model No.");
                    REPORT.RUNMODAL(50161, TRUE, TRUE, modelrec);
                end;
            }
        }

    }

    trigger OnAfterGetRecord()
    begin
        Rec.VALIDATE("Date Filter", TODAY);

    end;

    trigger OnOpenPage()
    var

    begin
        QtyVisible := Rec."Total Qty Sold" <> 0;
        QtyVisibleI := Rec."Grade I" <> 0;
        QtyVisibleII := Rec."Grade II" <> 0;
        QtyVisibleIII := Rec."Grade III" <> 0;
        QtyVisibleIV := Rec."Grade IV" <> 0;
        QtyVisibleV := Rec."Grade V" <> 0;
        QtyVisiblePRE := Rec."PREMIUM QTY" <> 0;
        QtyVisibleLUX := Rec."LUXURY QTY" <> 0;
        ISTIX50 := Rec."1.5TIX50" <> 0;
        //I5TIX70L := Rec."1.5TIX70L" <> 0;
        I5TIIX70L := Rec."1.5TIIX70L" <> 0;
        //I5TIIX70PE := Rec."1.5TIIX70PE" <> 0;
        I6TIIX90P := Rec."1.6TIIX90P" <> 0;
        I5TIIIX70L := Rec."1.5TIIIX70L" <> 0;
        I6TIIIX70PE := Rec."1.6TIIIX70PE" <> 0;
        IITIIIX90P := Rec."2.0TIIIX90P" <> 0;
        I5TIVX1D := Rec."1.5TIVX1D" <> 0;
        I6TIVX70PE := Rec."1.6TIVX70PE" <> 0;
        //I6TIVX90P := Rec."1.6TIVX90P" <> 0;
        IITIVX90P := Rec."2.0TIVX90P" <> 0;
        I6TVX1D := Rec."1.6TVX1D" <> 0;
        IITPRT2 := Rec."2.0TPRT2" <> 0;
        I5TPRX50 := Rec."1.5TPRX50" <> 0;
        IITLUXT2 := Rec."2.0TLUXT2" <> 0;
        I5TLUX50 := Rec."1.5TLUX50" <> 0;

    end;


    var
        modelrec: Record 50014;
        showQsales3: Boolean;
        QtyVisible: Boolean;
        QtyVisibleI: Boolean;

        QtyVisibleII: Boolean;

        QtyVisibleIII: Boolean;

        QtyVisibleIV: Boolean;

        QtyVisibleV: Boolean;

        QtyVisiblePRE: Boolean;

        QtyVisibleLUX: Boolean;
        ISTIX50: Boolean;
        I5TIX70L: Boolean;
        I5TIIX70L: Boolean;
        I5TIIX70PE: Boolean;
        I6TIIX90P: Boolean;
        I5TIIIX70L: Boolean;
        I6TIIIX70PE: Boolean;
        IITIIIX90P: Boolean;
        I5TIVX1D: Boolean;
        I6TIVX70PE: Boolean;
        I6TIVX90P: Boolean;
        IITIVX90P: Boolean;
        I6TVX1D: Boolean;
        IITPRT2: Boolean;
        I5TPRX50: Boolean;
        IITLUXT2: Boolean;
        I5TLUX50: Boolean;




}

