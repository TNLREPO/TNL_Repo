page 50402 "VRI Form 2"
{
    PageType = Card;
    SourceTable = Table50058;

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
                field("Factory loaded parts present"; "Factory loaded parts present")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Factory loaded parts condition"; "Factory loaded parts condition")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Quantities of keys/Transmitter"; "Quantities of keys/Transmitter")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Accidents; Accidents)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Body protective film"; "Body protective film")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Dents; Dents)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Scratches; Scratches)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Body Trim damages"; "Body Trim damages")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Body Paint"; "Body Paint")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Windscreen; Windscreen)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Side glasses"; "Side glasses")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Side Mirrors"; "Side Mirrors")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Lamps; Lamps)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Wiper blades"; "Wiper blades")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Label; Label)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Tyres; Tyres)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Trunk; Trunk)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Brake disc"; "Brake disc")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Missing items"; "Missing items")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
            }
            group("Factory Loaded Parts")
            {
                Caption = 'Factory Loaded Parts';
                label()
                {
                    CaptionClass = Text19029202;
                }
                label()
                {
                    CaptionClass = Text19055471;
                }
                label()
                {
                    CaptionClass = Text19059540;
                }
                label()
                {
                    CaptionClass = Text19020802;
                }
                label()
                {
                    CaptionClass = Text19039840;
                }
                label()
                {
                    CaptionClass = Text19033200;
                }
                label()
                {
                    CaptionClass = Text19020873;
                }
                label()
                {
                    CaptionClass = Text19025913;
                }
                label()
                {
                    CaptionClass = Text19054192;
                }
                label()
                {
                    CaptionClass = Text19031041;
                }
                label()
                {
                    CaptionClass = Text19023161;
                }
                label()
                {
                    CaptionClass = Text19008688;
                }
                field("Install Side mirrors"; "Install Side mirrors")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Snorkel Pipe"; "Snorkel Pipe")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Rear Sticker"; "Rear Sticker")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Air Spoiler"; "Air Spoiler")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Wheel Covers"; "Wheel Covers")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Towing eyelet"; "Towing eyelet")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Battery teminal"; "Battery teminal")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Antennas; Antennas)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Ear phone"; "Ear phone")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Floor Mats"; "Floor Mats")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Jack and Tool"; "Jack and Tool")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Spare tyres"; "Spare tyres")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
            }
            group(Engine)
            {
                Caption = 'Engine';
                label()
                {
                    CaptionClass = Text19037886;
                }
                label()
                {
                    CaptionClass = Text19023929;
                }
                label()
                {
                    CaptionClass = Text19045741;
                }
                label()
                {
                    CaptionClass = Text19001465;
                }
                label()
                {
                    CaptionClass = Text19011733;
                }
                label()
                {
                    CaptionClass = Text19001899;
                }
                label()
                {
                    CaptionClass = Text19017561;
                }
                label()
                {
                    CaptionClass = Text19037004;
                }
                label()
                {
                    CaptionClass = Text19073247;
                }
                field("Battery terminals torque"; "Battery terminals torque")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Fuse Box"; "Fuse Box")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Engine warm up"; "Engine warm up")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Lubrication; Lubrication)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Wiper washer"; "Wiper washer")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Water coolant"; "Water coolant")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Power steering"; "Power steering")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Battery electrolyte"; "Battery electrolyte")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Fusible link"; "Fusible link")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
            }
            group("In Vehicle")
            {
                Caption = 'In Vehicle';
                label()
                {
                    CaptionClass = Text19066546;
                }
                label()
                {
                    CaptionClass = Text19067311;
                }
                label()
                {
                    CaptionClass = Text19069048;
                }
                label()
                {
                    CaptionClass = Text19007776;
                }
                label()
                {
                    CaptionClass = Text19016760;
                }
                label()
                {
                    CaptionClass = Text19046891;
                }
                label()
                {
                    CaptionClass = Text19077067;
                }
                label()
                {
                    CaptionClass = Text19009687;
                }
                label()
                {
                    CaptionClass = Text19059486;
                }
                label()
                {
                    CaptionClass = Text19020418;
                }
                label()
                {
                    CaptionClass = Text19046099;
                }
                label()
                {
                    CaptionClass = Text19000272;
                }
                label()
                {
                    CaptionClass = Text19068222;
                }
                label()
                {
                    CaptionClass = Text19050583;
                }
                label()
                {
                    CaptionClass = Text19057634;
                }
                label()
                {
                    CaptionClass = Text19035118;
                }
                label()
                {
                    CaptionClass = Text19031268;
                }
                label()
                {
                    CaptionClass = Text19029988;
                }
                label()
                {
                    CaptionClass = Text19006128;
                }
                label()
                {
                    CaptionClass = Text19032162;
                }
                label()
                {
                    CaptionClass = Text19019179;
                }
                label()
                {
                    CaptionClass = Text19009366;
                }
                label()
                {
                    CaptionClass = Text19060475;
                }
                field("Warranty booklet"; "Warranty booklet")
                {
                    Caption = 'Check side mirrors operations';
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Service sticker"; "Service sticker")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Owners manual"; "Owners manual")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Key/Transmitter Operation"; "Key/Transmitter Operation")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Meters at Dashboard"; "Meters at Dashboard")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Hood opening"; "Hood opening")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Fuel Tank"; "Fuel Tank")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Trunk lid"; "Trunk lid")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Car Stereo"; "Car Stereo")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Lights operation"; "Lights operation")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Wipers operation"; "Wipers operation")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Seat belts Operation"; "Seat belts Operation")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Seat operation"; "Seat operation")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Cigarrette lighter"; "Cigarrette lighter")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Steering wheel"; "Steering wheel")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Air condition"; "Air condition")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Sun roof"; "Sun roof")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Hand brake"; "Hand brake")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Headphone; Headphone)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Interior floor mat"; "Interior floor mat")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Interior roof"; "Interior roof")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Sun visor"; "Sun visor")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Window winding"; "Window winding")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Side mirror oprtn"; "Side mirror oprtn")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                label()
                {
                    CaptionClass = Text19056706;
                }
                label()
                {
                    CaptionClass = Text19006040;
                }
                field("Inner lights"; "Inner lights")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Windscreen Cotton"; "Windscreen Cotton")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
            }
            group(Boot)
            {
                Caption = 'Boot';
                label()
                {
                    CaptionClass = Text19016901;
                }
                label()
                {
                    CaptionClass = Text19076986;
                }
                label()
                {
                    CaptionClass = Text19066429;
                }
                label()
                {
                    CaptionClass = Text19066100;
                }
                label()
                {
                    CaptionClass = Text19057829;
                }
                label()
                {
                    CaptionClass = Text19064857;
                }
                field("Spare tyre inflation"; "Spare tyre inflation")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field(Jack; Jack)
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Wheel covers boot"; "Wheel covers boot")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Rear boot speakers"; "Rear boot speakers")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("Fire Extinguisher"; "Fire Extinguisher")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
                }
                field("C caution"; "C caution")
                {
                    ValuesAllowed = OK;
                    Not OK;
                    Not Applicable;
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

