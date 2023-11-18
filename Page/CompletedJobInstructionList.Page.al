page 70076 "Completed Job Instruction List"
{
    CardPageID = "Completed Job Instruction Card";
    DeleteAllowed = false;
    Editable = false;
    ModifyAllowed = false;
    PageType = List;
    SourceTable = Table50119;
    SourceTableView = WHERE (Delivered = CONST (Yes));

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Customer Order Form No."; "Customer Order Form No.")
                {
                }
                field("Customer No."; "Customer No.")
                {
                }
                field("Customer Name"; "Customer Name")
                {
                }
                field("Actual Hours Clocked"; "Actual Hours Clocked")
                {
                }
                field("Vehicle Registration No."; "Vehicle Registration No.")
                {
                }
                field("Parts Ordered Staff Name"; "Parts Ordered Staff Name")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Job Details"; "Job Details")
                {
                }
                field("Model No"; "Model No")
                {
                }
                field("Frame No./VIN"; "Frame No./VIN")
                {
                }
                field("Job Start Date"; "Job Start Date")
                {
                }
                field("Date Delivered"; "Date Delivered")
                {
                }
                field("Actual Delivery Date"; "Actual Delivery Date")
                {
                }
                field(Estimation; Estimation)
                {
                }
                field("Technician Name"; "Technician Name")
                {
                }
                field("(Engine No)"; "(Engine No)")
                {
                }
            }
        }
    }

    actions
    {
    }
}

