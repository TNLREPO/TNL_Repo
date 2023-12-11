report 50225 "Periodic Maintenence"
{
    ProcessingOnly = true;

    dataset
    {
        dataitem(DataItem1; Table70021)
        {

            trigger OnAfterGetRecord()
            begin

                PeriodicMaintenance.GET("Chasis No.");
                PeriodicMaintenance.SETRANGE(PeriodicMaintenance."Chasis No.", "Chasis No.");

                //PeriodicMaintenance.SETRANGE(PeriodicMaintenance."Current Date",WORKDATE);
                IF PeriodicMaintenance.FINDFIRST THEN
                    //  PeriodicMaintenance.VALIDATE("Current Date",WORKDATE);
                    //  REPEAT
                    PeriodicMaintenance.VALIDATE("Date Filter", WORKDATE);
                //  "Current Date" := WORKDATE;
                //REPEAT
                //SETRANGE ("Current Date",0D,WORKDATE);
                //PeriodicMaintenance.RESET;
                //UNTIL PeriodicMaintenance.NEXT = 0;
                PeriodicMaintenance.MODIFY(TRUE);




                // {PeriodicMaintenance.INIT;
                // PeriodicMaintenance."VRI Code" :=  "VRI Code";
                // PeriodicMaintenance."Chasis No." := "Chasis No.";
                // PeriodicMaintenance."Maintenace Code" := "Maintenace Code";
                // //PeriodicMaintenance."Current Date" := TODAY;
                // }
                //  PeriodicMaintenance.SETCURRENTKEY("VRI Code","Chasis No.","Maintenace Code");
                //  PeriodicMaintenance.SETRANGE("VRI Code","VRI Code");
                //  PeriodicMaintenance.SETRANGE("Chasis No.","Chasis No.");
                //  PeriodicMaintenance.SETRANGE("Maintenace Code","Maintenace Code");
                // // PeriodicMaintenance.SETRANGE("Current Date",TODAY);
                //
                // IF PeriodicMaintenance.FINDFIRST THEN
                //  PeriodicMaintenance.VALIDATE("Current Date",WORKDATE);
            end;
        }
    }

    requestpage
    {

        layout
        {
        }

        actions
        {
        }
    }

    labels
    {
    }

    var
        PeriodicMaintenance: Record "70021";
        window: Dialog;
        infocounter: Integer;
}

