page 80042 "Fault Material Card"
{
    PageType = Card;
    SourceTable = Table70031;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Operation Code"; "Operation Code")
                {
                }
                field(Description; Description)
                {
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Material Cost"; "Material Cost")
                {
                }
                field("Labor Cost"; "Labor Cost")
                {
                }
                field(Price; Price)
                {
                }
                field("Other Services Cost"; "Other Services Cost")
                {
                }
                field("Other Services Price"; "Other Services Price")
                {
                }
                field("Duration In Days"; "Duration In Days")
                {
                }
                field("Duration In Hours"; "Duration In Hours")
                {
                }
                field("Service KM"; "Service KM")
                {
                }
                field(Estimate; Estimate)
                {
                }
                field(VAT; VAT)
                {
                }
                field("Estimate Incl. VAT"; "Estimate Incl. VAT")
                {
                }
            }
            part(Lines; 50237)
            {
                SubPageLink = Operation code=FIELD(Operation Code);
            }
        }
    }

    actions
    {
        area(navigation)
        {
            action(Update)
            {
                Caption = 'Update';
                Image = Turnover;
                Promoted = true;

                trigger OnAction()
                begin
                    FaultCode.INIT;
                    FaultCode."Fault Area Code" := "Faulty Area";
                    FaultCode."Symptom Code" := Symptoms;
                    FaultCode.Code := "Operation Code";
                    FaultCode.Description := Description;
                    IF FaultCode.INSERT(TRUE) THEN;
                    MESSAGE(Text001);
                end;
            }
        }
    }

    var
        FaultCode: Record "5918";
        Text001: Label 'Fault Code has been updated!';
}

