page 50271 "VRI Form Check List"
{
    PageType = Card;
    SourceTable = Table50160;
    SourceTableView = WHERE (Arrived = FILTER (Yes));

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field("VRI Code"; "VRI Code")
                {
                    Editable = false;
                    TableRelation = "VRI Table"."VRI Code";
                }
                field("VRI Inspector Code"; "VRI Inspector Code")
                {
                }
                field("VRI Inspector Name"; "VRI Inspector Name")
                {
                }
                field("VRI Inspector Address"; "VRI Inspector Address")
                {
                }
                field("VRI Inspector Phone No."; "VRI Inspector Phone No.")
                {
                }
                field("VRI Supervisor No"; "VRI Supervisor No")
                {
                }
                field("VRI Supervisor Name"; "VRI Supervisor Name")
                {
                }
                field("Item No."; "Item No.")
                {
                }
                field("Item Serial No."; "Item Serial No.")
                {
                    Caption = 'Chassis No.';
                }
                field("Model No."; "Model No.")
                {
                }
                field("Model Name"; "Model Name")
                {
                }
                field("Engine No."; "Engine No.")
                {
                }
                field("Key No."; "Key No.")
                {
                }
                field("Exterior Colour"; "Exterior Colour")
                {
                }
                field("Exterior Colour Name"; "Exterior Colour Name")
                {
                }
                field(Description; Description)
                {
                }
                field(Arrived; Arrived)
                {
                    Editable = false;
                }
                field("VRI Date"; "VRI Date")
                {
                }
                field("Date Of Arrival"; "Date Of Arrival")
                {
                    Editable = false;
                }
                field("Time of Arrival"; "Time of Arrival")
                {
                    Editable = false;
                }
                field("VRI Location"; "VRI Location")
                {
                    Editable = false;
                }
                field(Odometer; Odometer)
                {
                }
                field("Problem Vehicle"; "Problem Vehicle")
                {
                    Editable = false;
                }
                field("Pass to Sales/Marketing"; "Pass to Sales/Marketing")
                {
                }
                field("Send For Approval"; "Send For Approval")
                {
                }
            }
            group("Walk Around")
            {
                Caption = 'Walk Around';
                label("Quality of keys / Transmitters")
                {
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(Walk0011; Walk0011)
                {
                    Caption = 'OK';
                }
                field(Walk0012; Walk0012)
                {
                    Caption = 'N/OK';
                }
                field(Walk0013; Walk0013)
                {
                    Caption = 'N/A';
                }
                label("Dent, Scratches & broken")
                {
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(Walk0021; Walk0021)
                {
                    Caption = 'OK';
                }
                field(Walk0022; Walk0022)
                {
                    Caption = 'N/OK';
                }
                field(Walk0023; Walk0023)
                {
                    Caption = 'N/A';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label("Condition of headlamp, Rear light and Hazard light")
                {
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(Walk0031; Walk0031)
                {
                    Caption = 'OK';
                }
                field(Walk0032; Walk0032)
                {
                    Caption = 'N/OK';
                }
                field(Walk0033; Walk0033)
                {
                    Caption = 'N/A';
                }
                label("Tyre pressure and age")
                {
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(Walk0041; Walk0041)
                {
                    Caption = 'OK';
                }
                field(Walk0042; Walk0042)
                {
                    Caption = 'N/OK';
                }
                field(Walk0043; Walk0043)
                {
                    Caption = 'N/A';
                }
                label("Performance of the transmitter")
                {
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(Walk0051; Walk0051)
                {
                    Caption = 'OK';
                }
                field(Walk0052; Walk0052)
                {
                    Caption = 'N/OK';
                }
                field(Walk0053; Walk0053)
                {
                    Caption = 'N/A';
                }
            }
            group("FACTORY LOADED PARTS")
            {
                Caption = 'FACTORY LOADED PARTS';
                label("Condition of Snorkel pipe")
                {
                    Caption = 'Condition of Snorkel pipe';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(LOAD0011; LOAD0011)
                {
                    Caption = 'OK';
                }
                field(LOAD0012; LOAD0012)
                {
                    Caption = 'N/OK';
                }
                field(LOAD0013; LOAD0013)
                {
                    Caption = 'N/A';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label("Condition of Rear sticker")
                {
                    Caption = 'Condition of Rear sticker';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(LOAD0021; LOAD0021)
                {
                    Caption = 'OK';
                }
                field(LOAD0022; LOAD0022)
                {
                    Caption = 'N/OK';
                }
                field(LOAD0023; LOAD0023)
                {
                    Caption = 'N/A';
                }
                label("Earphone Applicable to Coaster & Land cruiser")
                {
                    Caption = 'Earphone Applicable to Coaster & Land cruiser';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(LOAD0031; LOAD0031)
                {
                    Caption = 'OK';
                }
                field(LOAD0032; LOAD0032)
                {
                    Caption = 'N/OK';
                }
                field(LOAD0033; LOAD0033)
                {
                    Caption = 'N/A';
                }
            }
            group(Engine)
            {
                Caption = 'Engine';
                label("Engine performance / Noise during warming up")
                {
                    Caption = 'Engine performance / Noise during warming up';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(ENG0011; ENG0011)
                {
                    Caption = 'OK';
                }
                field(ENG0012; ENG0012)
                {
                    Caption = 'N/OK';
                }
                field(ENG0013; ENG0013)
                {
                    Caption = 'N/A';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label("Lubrication fluids, wiper washer, water coolant and power steering levels")
                {
                    Caption = 'Lubrication fluids, wiper washer, water coolant and power steering levels';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(ENG0021; ENG0021)
                {
                    Caption = 'OK';
                }
                field(ENG0022; ENG0022)
                {
                    Caption = 'N/OK';
                }
                field(ENG0023; ENG0023)
                {
                    Caption = 'N/A';
                }
                label("Battery Condition")
                {
                    Caption = 'Battery Condition';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(ENG0031; ENG0031)
                {
                    Caption = 'OK';
                }
                field(ENG0032; ENG0032)
                {
                    Caption = 'N/OK';
                }
                field(ENG0033; ENG0033)
                {
                    Caption = 'N/A';
                }
            }
            group("In Vehicle")
            {
                Caption = 'In Vehicle';
                label("Warranty booklet & Owner's manual")
                {
                    Caption = 'Warranty booklet & Owner''s manual';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0011; IV0011)
                {
                    Caption = 'OK';
                }
                field(IV0012; IV0012)
                {
                    Caption = 'N/OK';
                }
                field(IV0013; IV0013)
                {
                    Caption = 'N/A';
                }
                label("Car stereo operations")
                {
                    Caption = 'Car stereo operations';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0021; IV0021)
                {
                    Caption = 'OK';
                }
                field(IV0022; IV0022)
                {
                    Caption = 'N/OK';
                }
                field(IV0023; IV0023)
                {
                    Caption = 'N/A';
                }
                label("All lights operation")
                {
                    Caption = 'All lights operation';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0031; IV0031)
                {
                    Caption = 'OK';
                }
                field(IV0032; IV0032)
                {
                    Caption = 'N/OK';
                }
                field(IV0033; IV0033)
                {
                    Caption = 'N/A';
                }
                label("Seat belt operation")
                {
                    Caption = 'Seat belt operation';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0041; IV0041)
                {
                    Caption = 'OK';
                }
                field(IV0042; IV0042)
                {
                    Caption = 'N/OK';
                }
                field(IV0043; IV0043)
                {
                    Caption = 'N/A';
                }
                label("Seat operation and heater operation")
                {
                    Caption = 'Seat operation and heater operation';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0051; IV0051)
                {
                    Caption = 'OK';
                }
                field(IV0052; IV0052)
                {
                    Caption = 'N/OK';
                }
                field(IV0053; IV0053)
                {
                    Caption = 'N/A';
                }
                label("Hand Brake Operations")
                {
                    Caption = 'Hand Brake Operations';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0061; IV0061)
                {
                    Caption = 'OK';
                }
                field(IV0062; IV0062)
                {
                    Caption = 'N/OK';
                }
                field(IV0063; IV0063)
                {
                    Caption = 'N/A';
                }
                label("Floor mats condition")
                {
                    Caption = 'Floor mats condition';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0071; IV0071)
                {
                    Caption = 'OK';
                }
                field(IV0072; IV0072)
                {
                    Caption = 'N/OK';
                }
                field(IV0073; IV0073)
                {
                    Caption = 'N/A';
                }
                label("Sunroof operations")
                {
                    Caption = 'Sunroof operations';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0081; IV0081)
                {
                    Caption = 'OK';
                }
                field(IV0082; IV0082)
                {
                    Caption = 'N/OK';
                }
                field(IV0083; IV0083)
                {
                    Caption = 'N/A';
                }
                label("Inner roof lining for stained & damaged")
                {
                    Caption = 'Inner roof lining for stained & damaged';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV0091; IV0091)
                {
                    Caption = 'OK';
                }
                field(IV0092; IV0092)
                {
                    Caption = 'N/OK';
                }
                field(IV0093; IV0093)
                {
                    Caption = 'N/A';
                }
                label("Doors window operations")
                {
                    Caption = 'Doors window operations';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV00101; IV00101)
                {
                    Caption = 'OK';
                }
                field(IV00102; IV00102)
                {
                    Caption = 'N/OK';
                }
                field(IV00103; IV00103)
                {
                    Caption = 'N/A';
                }
                label(" Rear Wind screen cotton control operation")
                {
                    Caption = ' Rear Wind screen cotton control operation';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV00201; IV00201)
                {
                    Caption = 'OK';
                }
                field(IV00202; IV00202)
                {
                    Caption = 'N/OK';
                }
                field(IV00203; IV00203)
                {
                    Caption = 'N/A';
                }
                label("AC and  Horn operation")
                {
                    Caption = 'AC and  Horn operation';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV00301; IV00301)
                {
                    Caption = 'OK';
                }
                field(IV00302; IV00302)
                {
                    Caption = 'N/OK';
                }
                field(IV00303; IV00303)
                {
                    Caption = 'N/A';
                }
                label("Dashboard light")
                {
                    Caption = 'Dashboard light';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV00401; IV00401)
                {
                    Caption = 'OK';
                }
                field(IV00402; IV00402)
                {
                    Caption = 'N/OK';
                }
                field(IV00403; IV00403)
                {
                    Caption = 'N/A';
                }
                label("Check light sign")
                {
                    Caption = 'Check light sign';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(IV00501; IV00501)
                {
                    Caption = 'OK';
                }
                field(IV00502; IV00502)
                {
                    Caption = 'N/OK';
                }
                field(IV00503; IV00503)
                {
                    Caption = 'N/A';
                }
            }
            group(Boot)
            {
                Caption = 'Boot';
                label("Availability of spare tyre, Jack, Tools")
                {
                    Caption = 'Availability of spare tyre, Jack, Tools';
                    Style = Strong;
                    StyleExpr = TRUE;
                }
                field(BOOT0011; BOOT0011)
                {
                    Caption = 'OK';
                }
                field(BOOT0012; BOOT0012)
                {
                    Caption = 'N/OK';
                }
                field(BOOT0013; BOOT0013)
                {
                    Caption = 'N/A';
                }
                label("Fire extingusher")
                {
                    Caption = 'Fire extingusher';
                }
                field(BOOT0021; BOOT0021)
                {
                    Caption = 'OK';
                }
                field(BOOT0022; BOOT0022)
                {
                    Caption = 'N/OK';
                }
                field(BOOT0023; BOOT0023)
                {
                    Caption = 'N/A';
                }
                label("C-caution")
                {
                    Caption = 'C-caution';
                }
                field(BOOT0031; BOOT0031)
                {
                    Caption = 'OK';
                }
                field(BOOT0032; BOOT0032)
                {
                    Caption = 'N/OK';
                }
                field(BOOT0033; BOOT0033)
                {
                    Caption = 'N/A';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
                label(".")
                {
                    Caption = '.';
                }
            }
            group(Under)
            {
                Caption = 'Under';
                field("Body plug"; "Body plug")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Mud Guards"; "Mud Guards")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Suspension mechanism"; "Suspension mechanism")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Brake pipes"; "Brake pipes")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Exhaust pipe"; "Exhaust pipe")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Tyre damages"; "Tyre damages")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
            }
        }
    }

    actions
    {
        area(creation)
        {
            action("VRI Check List")
            {
                Caption = 'VRI Check List';
                RunObject = Report 50609;
            }
        }
    }

    var
        COFRec: Record 50119;
        Text100: Label 'Do you want to Crreate COF';
        UserSetup: Record 91;
        Text19066546: Label 'Confirm warranty booklets availability';
        Text19016901: Label 'Check  availability of spare tyres and its inflation';
        Text19037886: Label 'Check  battery terminals on correct tightening torque';
        Text19029202: Label 'Install side mirrors';
        Text19067311: Label 'Confirm service sticker installation';
        Text19076986: Label 'Check availability of jacks and tool kits';
        Text19023929: Label 'Check electrical fuse box for proper fixing of fuses and short pin';
        Text19055471: Label 'Install Snorkel pipe';
        Text19069048: Label 'Confirm owners manual availability';
        Text19066429: Label 'Check  availability of wheel covers';
        Text19045741: Label 'Check engine performance during warm up';
        Text19059540: Label 'Install rear sticker on Coaster vehicles';
        Text19007776: Label 'Check all vehicle keys/transmiter operations';
        Text19066100: Label 'Check  rear boot speakers and its operations';
        Text19020802: Label 'Install air spoiler';
        Text19001465: Label 'Check lubrication oil/ fluids level and its guages';
        Text19016760: Label 'Check all meters at dash board with their operating condition';
        Text19057829: Label 'Check  fire Extinguishers availability';
        Text19011733: Label 'Check wiper washer water level';
        Text19039840: Label 'Install wheel covers';
        Text19046891: Label 'Check front hood opening and closing condition';
        Text19064857: Label 'Check for C-Caution';
        Text19033200: Label 'Install towing eyelet covers';
        Text19001899: Label 'Check water coolant level';
        Text19077067: Label 'Check fuel tank lid openning and closing operations';
        Text19020873: Label 'Install battery terminal covers';
        Text19017561: Label 'Check power steering fluid';
        Text19009687: Label 'Check trunk lid opening and closing condition';
        Text19025913: Label 'Install  antennas';
        Text19037004: Label 'Check battery electrolyte level';
        Text19059486: Label 'Check car stereo operations';
        Text19073247: Label 'Check fusible link for possible cuting  and damages';
        Text19054192: Label 'Check ear phone and port operation';
        Text19020418: Label 'Check all lights operations';
        Text19031041: Label 'Install floor mats';
        Text19046099: Label 'Check wipers operation and performance';
        Text19023161: Label 'Install jacks and tool kits';
        Text19000272: Label 'Check seat belt operations';
        Text19008688: Label 'Install spare tyres';
        Text19068222: Label 'Check seats operations and its heater perfommance';
        Text19050583: Label 'Check cigarette lighter and its operations';
        Text19057634: Label 'Check steering wheel tilt and operations';
        Text19035118: Label 'Check air condition performance and cooling operations';
        Text19031268: Label 'Check sun roof operations';
        Text19029988: Label 'Check hand brake operations';
        Text19006128: Label 'Check headphone ear piece  operations';
        Text19032162: Label 'Check interior floor mats for possible stains and dirts';
        Text19019179: Label 'Check interior roof linnings for stain and dirts';
        Text19009366: Label 'Check sun visor linning condition and operations';
        Text19060475: Label 'check window winding operation';
        Text19056706: Label 'Check for inner lights and other interior appliances';
        Text19006040: Label 'Check rear winscreen cotton control operation';
}

