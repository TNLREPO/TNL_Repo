report 50419 "Permissions Modify"
{
    DefaultLayout = RDLC;
    RDLCLayout = './PermissionsModify.rdlc';

    dataset
    {
        dataitem(DataItem1000000000; Table2000000005)
        {

            trigger OnAfterGetRecord()
            begin
                Permission."Role ID" := 'SUPER';
                Permission."Object Type" := Permission."Object Type"::Table;
                Permission."Read Permission" := Permission."Read Permission"::Yes;
                Permission.INSERT(TRUE);
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
}

