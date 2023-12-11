report 50270 "VRI Check List"
{
    DefaultLayout = RDLC;
    RDLCLayout = './VRICheckList.rdlc';

    dataset
    {
        dataitem(DataItem2891; Table50058)
        {
            RequestFilterFields = "VRI Code";
            column(VRI_CodeCaption; VRI_CodeCaptionLbl)
            {
            }
            column(VRI_Inspector_CodeCaption; VRI_Inspector_CodeCaptionLbl)
            {
            }
            column(ArrivedCaption; ArrivedCaptionLbl)
            {
            }
            column(VRI_Inspector_NameCaption; VRI_Inspector_NameCaptionLbl)
            {
            }
            column(VRI_Inspector_DepartmentCaption; VRI_Inspector_DepartmentCaptionLbl)
            {
            }
            column(VRI_Inspector_AddressCaption; VRI_Inspector_AddressCaptionLbl)
            {
            }
            column(VRI_Inspector_Phone_No_Caption; VRI_Inspector_Phone_No_CaptionLbl)
            {
            }
            column(VRI_Supervisor_NoCaption; VRI_Supervisor_NoCaptionLbl)
            {
            }
            column(VRI_Supervisor_NameCaption; VRI_Supervisor_NameCaptionLbl)
            {
            }
            column(VRI_LocationCaption; VRI_LocationCaptionLbl)
            {
            }
            column(VRI_DateCaption; VRI_DateCaptionLbl)
            {
            }
            column(Item_No_Caption; Item_No_CaptionLbl)
            {
            }
            column(Model_No_Caption; Model_No_CaptionLbl)
            {
            }
            column(Model_NameCaption; Model_NameCaptionLbl)
            {
            }
            column(DescriptionCaption; DescriptionCaptionLbl)
            {
            }
            column(Item_Serial_No_Caption; Item_Serial_No_CaptionLbl)
            {
            }
            column(Engine_No_Caption; Engine_No_CaptionLbl)
            {
            }
            column(Key_No_Caption; Key_No_CaptionLbl)
            {
            }
            column(Exterior_ColourCaption; Exterior_ColourCaptionLbl)
            {
            }
            column(Check_that_all_factory_loaded_parts_are_presentCaption; Check_that_all_factory_loaded_parts_are_presentCaptionLbl)
            {
            }
            column(Check_conditions_of_all_factory_loaded_partsCaption; Check_conditions_of_all_factory_loaded_partsCaptionLbl)
            {
            }
            column(Check_quantity_of_keys_transmitterCaption; Check_quantity_of_keys_transmitterCaptionLbl)
            {
            }
            column(Check_vehicle_for_accidentsCaption; Check_vehicle_for_accidentsCaptionLbl)
            {
            }
            column(Inspection_of_body_protective_films_conditionCaption; Inspection_of_body_protective_films_conditionCaptionLbl)
            {
            }
            column(Check_vehicle_for_dentsCaption; Check_vehicle_for_dentsCaptionLbl)
            {
            }
            column(Check_vehicle_for_scratchesCaption; Check_vehicle_for_scratchesCaptionLbl)
            {
            }
            column(Check_vehicle_body_trim_for_damagesCaption; Check_vehicle_body_trim_for_damagesCaptionLbl)
            {
            }
            column(Check_body_paint_for_quality_and_general_conditionCaption; Check_body_paint_for_quality_and_general_conditionCaptionLbl)
            {
            }
            column(Check_windscreens_for_stone_chip_and_cracksCaption; Check_windscreens_for_stone_chip_and_cracksCaptionLbl)
            {
            }
            column(Check_side_glasses_for_possile_damagesCaption; Check_side_glasses_for_possile_damagesCaptionLbl)
            {
            }
            column(Check_side_mirrors_for_breakage__missing_lence_and_cracksCaption; Check_side_mirrors_for_breakage__missing_lence_and_cracksCaptionLbl)
            {
            }
            column(Check_all_lamps_for_breakage__cracks_and_any_other_damagesCaption; Check_all_lamps_for_breakage__cracks_and_any_other_damagesCaptionLbl)
            {
            }
            column(Check_wiper_blades_arm_for_missing_and_possile_damagesCaption; Check_wiper_blades_arm_for_missing_and_possile_damagesCaptionLbl)
            {
            }
            column(Check_that_label_logos_are_correct_and_not_damagedCaption; Check_that_label_logos_are_correct_and_not_damagedCaptionLbl)
            {
            }
            column(Check_vehicle_tyres_condition_and_inflationCaption; Check_vehicle_tyres_condition_and_inflationCaptionLbl)
            {
            }
            column(Check_trunk_lid_for_correct_opening_and_closing_with_correct_alignment_gapCaption; Check_trunk_lid_for_correct_opening_and_closing_with_correct_alignment_gapCaptionLbl)
            {
            }
            column(Removal_of_brake_disc_protectorCaption; Removal_of_brake_disc_protectorCaptionLbl)
            {
            }
            column(Check_vehicle_for_possible_missing_itemsCaption; Check_vehicle_for_possible_missing_itemsCaptionLbl)
            {
            }
            column(Install_side_mirrorsCaption; Install_side_mirrorsCaptionLbl)
            {
            }
            column(Install_Snorkel_pipeCaption; Install_Snorkel_pipeCaptionLbl)
            {
            }
            column(Install_rear_sticker_on_Coaster_vehiclesCaption; Install_rear_sticker_on_Coaster_vehiclesCaptionLbl)
            {
            }
            column(Install_air_spoilerCaption; Install_air_spoilerCaptionLbl)
            {
            }
            column(Install_wheel_coversCaption; Install_wheel_coversCaptionLbl)
            {
            }
            column(Install_towing_eyelet_coversCaption; Install_towing_eyelet_coversCaptionLbl)
            {
            }
            column(Install_battery_terminal_coversCaption; Install_battery_terminal_coversCaptionLbl)
            {
            }
            column(Install__antennasCaption; Install__antennasCaptionLbl)
            {
            }
            column(Check_ear_phone_and_port_operationCaption; Check_ear_phone_and_port_operationCaptionLbl)
            {
            }
            column(Install_floor_matsCaption; Install_floor_matsCaptionLbl)
            {
            }
            column(Install_jacks_and_tool_kitsCaption; Install_jacks_and_tool_kitsCaptionLbl)
            {
            }
            column(Install_spare_tyresCaption; Install_spare_tyresCaptionLbl)
            {
            }
            column(WALK_AROUNDCaption; WALK_AROUNDCaptionLbl)
            {
            }
            column(FACTORY_LOADED_PARTSCaption; FACTORY_LOADED_PARTSCaptionLbl)
            {
            }
            column(ENGINECaption; ENGINECaptionLbl)
            {
            }
            column(Check__battery_terminals_on_correct_tightening_torqueCaption; Check__battery_terminals_on_correct_tightening_torqueCaptionLbl)
            {
            }
            column(Check_electrical_fuse_box_for_proper_fixing_of_fuses_and_short_pinCaption; Check_electrical_fuse_box_for_proper_fixing_of_fuses_and_short_pinCaptionLbl)
            {
            }
            column(Check_engine_performance_during_warm_upCaption; Check_engine_performance_during_warm_upCaptionLbl)
            {
            }
            column(Check_lubrication_oil__fluids_level_and_its_guagesCaption; Check_lubrication_oil__fluids_level_and_its_guagesCaptionLbl)
            {
            }
            column(Check_wiper_washer_water_levelCaption; Check_wiper_washer_water_levelCaptionLbl)
            {
            }
            column(Check_water_coolant_levelCaption; Check_water_coolant_levelCaptionLbl)
            {
            }
            column(Check_power_steering_fluidCaption; Check_power_steering_fluidCaptionLbl)
            {
            }
            column(Check_battery_electrolyte_levelCaption; Check_battery_electrolyte_levelCaptionLbl)
            {
            }
            column(Check_fusible_link_for_possible_cuting__and_damagesCaption; Check_fusible_link_for_possible_cuting__and_damagesCaptionLbl)
            {
            }
            column(IN_VEHICLECaption; IN_VEHICLECaptionLbl)
            {
            }
            column(Confirm_warranty_booklets_availabilityCaption; Confirm_warranty_booklets_availabilityCaptionLbl)
            {
            }
            column(Confirm_service_sticker_installationCaption; Confirm_service_sticker_installationCaptionLbl)
            {
            }
            column(Confirm_owners_manual_availabilityCaption; Confirm_owners_manual_availabilityCaptionLbl)
            {
            }
            column(Check_all_vehicle_keys_transmiter_operationsCaption; Check_all_vehicle_keys_transmiter_operationsCaptionLbl)
            {
            }
            column(Check_all_meters_at_dash_board_with_their_operating_conditionCaption; Check_all_meters_at_dash_board_with_their_operating_conditionCaptionLbl)
            {
            }
            column(Check_front_hood_opening_and_closing_conditionCaption; Check_front_hood_opening_and_closing_conditionCaptionLbl)
            {
            }
            column(Check_fuel_tank_lid_openning_and_closing_operationsCaption; Check_fuel_tank_lid_openning_and_closing_operationsCaptionLbl)
            {
            }
            column(Check_trunk_lid_opening_and_closing_conditionCaption; Check_trunk_lid_opening_and_closing_conditionCaptionLbl)
            {
            }
            column(Check_car_stereo_operationsCaption; Check_car_stereo_operationsCaptionLbl)
            {
            }
            column(Check_all_lights_operationsCaption; Check_all_lights_operationsCaptionLbl)
            {
            }
            column(Check_wipers_operation_and_performanceCaption; Check_wipers_operation_and_performanceCaptionLbl)
            {
            }
            column(Check_seat_belt_operationsCaption; Check_seat_belt_operationsCaptionLbl)
            {
            }
            column(Check_seats_operations_and_its_heater_perfommanceCaption; Check_seats_operations_and_its_heater_perfommanceCaptionLbl)
            {
            }
            column(Check_cigarette_lighter_and_its_operationsCaption; Check_cigarette_lighter_and_its_operationsCaptionLbl)
            {
            }
            column(Check_steering_wheel_tilt_and_operationsCaption; Check_steering_wheel_tilt_and_operationsCaptionLbl)
            {
            }
            column(Check_air_condition_performance_and_cooling_operationsCaption; Check_air_condition_performance_and_cooling_operationsCaptionLbl)
            {
            }
            column(Check_sun_roof_operationsCaption; Check_sun_roof_operationsCaptionLbl)
            {
            }
            column(Check_hand_brake_operationsCaption; Check_hand_brake_operationsCaptionLbl)
            {
            }
            column(Check_headphone_ear_piece__operationsCaption; Check_headphone_ear_piece__operationsCaptionLbl)
            {
            }
            column(Check_interior_floor_mats_for_possible_stains_and_dirtsCaption; Check_interior_floor_mats_for_possible_stains_and_dirtsCaptionLbl)
            {
            }
            column(Check_interior_roof_linnings_for_stain_and_dirtsCaption; Check_interior_roof_linnings_for_stain_and_dirtsCaptionLbl)
            {
            }
            column(Check_sun_visor_linning_condition_and_operationsCaption; Check_sun_visor_linning_condition_and_operationsCaptionLbl)
            {
            }
            column(check_window_winding_operationCaption; check_window_winding_operationCaptionLbl)
            {
            }
            column(Check_side_mirrors_operationsCaption; Check_side_mirrors_operationsCaptionLbl)
            {
            }
            column(Check_for_inner_lights_and_other_interior_appliancesCaption; Check_for_inner_lights_and_other_interior_appliancesCaptionLbl)
            {
            }
            column(Check_rear_winscreen_cotton_control_operationCaption; Check_rear_winscreen_cotton_control_operationCaptionLbl)
            {
            }
            column(BOOTCaption; BOOTCaptionLbl)
            {
            }
            column(Check__availability_of_spare_tyres_and_its_inflationCaption; Check__availability_of_spare_tyres_and_its_inflationCaptionLbl)
            {
            }
            column(Check_availability_of_jacks_and_tool_kitsCaption; Check_availability_of_jacks_and_tool_kitsCaptionLbl)
            {
            }
            column(Check__availability_of_wheel_coversCaption; Check__availability_of_wheel_coversCaptionLbl)
            {
            }
            column(Check__rear_boot_speakers_and_its_operationsCaption; Check__rear_boot_speakers_and_its_operationsCaptionLbl)
            {
            }
            column(Check__fire_Extinguishers_availabilityCaption; Check__fire_Extinguishers_availabilityCaptionLbl)
            {
            }
            column(Check_for_C_CautionCaption; Check_for_C_CautionCaptionLbl)
            {
            }
            column(UNDERCaption; UNDERCaptionLbl)
            {
            }
            column(Fixing_of_body_plug_rubbersCaption; Fixing_of_body_plug_rubbersCaptionLbl)
            {
            }
            column(Fixing_of_mud_guards_rubberCaption; Fixing_of_mud_guards_rubberCaptionLbl)
            {
            }
            column(Check__suspension_mechanism_for_correct_tightening_and_possible_damagesCaption; Check__suspension_mechanism_for_correct_tightening_and_possible_damagesCaptionLbl)
            {
            }
            column(Check_brake_pipes_for_damagesCaption; Check_brake_pipes_for_damagesCaptionLbl)
            {
            }
            column(Check__exhaust_pipe_for_damagesCaption; Check__exhaust_pipe_for_damagesCaptionLbl)
            {
            }
            column(Check_all_tyres_for_possible_damagesCaption; Check_all_tyres_for_possible_damagesCaptionLbl)
            {
            }
            column(VRI_CHECK_LISTCaption; VRI_CHECK_LISTCaptionLbl)
            {
            }
            column(OK_________NOT_OK__________N_ACaption; OK_________NOT_OK__________N_ACaptionLbl)
            {
            }
            column(OK_________NOT_OK__________N_ACaption_Control1000000360; OK_________NOT_OK__________N_ACaption_Control1000000360Lbl)
            {
            }
            column(OK_________NOT_OK__________N_ACaption_Control1000000361; OK_________NOT_OK__________N_ACaption_Control1000000361Lbl)
            {
            }
            column(OK_________NOT_OK__________N_ACaption_Control1000000362; OK_________NOT_OK__________N_ACaption_Control1000000362Lbl)
            {
            }
            column(OK_________NOT_OK__________N_ACaption_Control1000000363; OK_________NOT_OK__________N_ACaption_Control1000000363Lbl)
            {
            }
            column(OK_________NOT_OK__________N_ACaption_Control1000000364; OK_________NOT_OK__________N_ACaption_Control1000000364Lbl)
            {
            }
            column(TOYOTA__NIGERIA__LIMITEDCaption; TOYOTA__NIGERIA__LIMITEDCaptionLbl)
            {
            }
            column(VRI_Table_VRI_Code; "VRI Code")
            {
            }
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
        VRI_CodeCaptionLbl: Label 'VRI Code';
        VRI_Inspector_CodeCaptionLbl: Label 'VRI Inspector Code';
        ArrivedCaptionLbl: Label 'Arrived';
        VRI_Inspector_NameCaptionLbl: Label 'VRI Inspector Name';
        VRI_Inspector_DepartmentCaptionLbl: Label 'VRI Inspector Department';
        VRI_Inspector_AddressCaptionLbl: Label 'VRI Inspector Address';
        VRI_Inspector_Phone_No_CaptionLbl: Label 'VRI Inspector Phone No.';
        VRI_Supervisor_NoCaptionLbl: Label 'VRI Supervisor No';
        VRI_Supervisor_NameCaptionLbl: Label 'VRI Supervisor Name';
        VRI_LocationCaptionLbl: Label 'VRI Location';
        VRI_DateCaptionLbl: Label 'VRI Date';
        Item_No_CaptionLbl: Label 'Item No.';
        Model_No_CaptionLbl: Label 'Model No.';
        Model_NameCaptionLbl: Label 'Model Name';
        DescriptionCaptionLbl: Label 'Description';
        Item_Serial_No_CaptionLbl: Label 'Item Serial No.';
        Engine_No_CaptionLbl: Label 'Engine No.';
        Key_No_CaptionLbl: Label 'Key No.';
        Exterior_ColourCaptionLbl: Label 'Exterior Colour';
        Check_that_all_factory_loaded_parts_are_presentCaptionLbl: Label 'Check that all factory loaded parts are present';
        Check_conditions_of_all_factory_loaded_partsCaptionLbl: Label 'Check conditions of all factory loaded parts';
        Check_quantity_of_keys_transmitterCaptionLbl: Label 'Check quantity of keys/transmitter';
        Check_vehicle_for_accidentsCaptionLbl: Label 'Check vehicle for accidents';
        Inspection_of_body_protective_films_conditionCaptionLbl: Label 'Inspection of body protective films condition';
        Check_vehicle_for_dentsCaptionLbl: Label 'Check vehicle for dents';
        Check_vehicle_for_scratchesCaptionLbl: Label 'Check vehicle for scratches';
        Check_vehicle_body_trim_for_damagesCaptionLbl: Label 'Check vehicle body trim for damages';
        Check_body_paint_for_quality_and_general_conditionCaptionLbl: Label 'Check body paint for quality and general condition';
        Check_windscreens_for_stone_chip_and_cracksCaptionLbl: Label 'Check windscreens for stone chip and cracks';
        Check_side_glasses_for_possile_damagesCaptionLbl: Label 'Check side glasses for possile damages';
        Check_side_mirrors_for_breakage__missing_lence_and_cracksCaptionLbl: Label 'Check side mirrors for breakage, missing lence and cracks';
        Check_all_lamps_for_breakage__cracks_and_any_other_damagesCaptionLbl: Label 'Check all lamps for breakage, cracks and any other damages';
        Check_wiper_blades_arm_for_missing_and_possile_damagesCaptionLbl: Label 'Check wiper blades/arm for missing and possile damages';
        Check_that_label_logos_are_correct_and_not_damagedCaptionLbl: Label 'Check that label logos are correct and not damaged';
        Check_vehicle_tyres_condition_and_inflationCaptionLbl: Label 'Check vehicle tyres condition and inflation';
        Check_trunk_lid_for_correct_opening_and_closing_with_correct_alignment_gapCaptionLbl: Label 'Check trunk lid for correct opening and closing with correct alignment gap';
        Removal_of_brake_disc_protectorCaptionLbl: Label 'Removal of brake disc protector';
        Check_vehicle_for_possible_missing_itemsCaptionLbl: Label 'Check vehicle for possible missing items';
        Install_side_mirrorsCaptionLbl: Label 'Install side mirrors';
        Install_Snorkel_pipeCaptionLbl: Label 'Install Snorkel pipe';
        Install_rear_sticker_on_Coaster_vehiclesCaptionLbl: Label 'Install rear sticker on Coaster vehicles';
        Install_air_spoilerCaptionLbl: Label 'Install air spoiler';
        Install_wheel_coversCaptionLbl: Label 'Install wheel covers';
        Install_towing_eyelet_coversCaptionLbl: Label 'Install towing eyelet covers';
        Install_battery_terminal_coversCaptionLbl: Label 'Install battery terminal covers';
        Install__antennasCaptionLbl: Label 'Install  antennas';
        Check_ear_phone_and_port_operationCaptionLbl: Label 'Check ear phone and port operation';
        Install_floor_matsCaptionLbl: Label 'Install floor mats';
        Install_jacks_and_tool_kitsCaptionLbl: Label 'Install jacks and tool kits';
        Install_spare_tyresCaptionLbl: Label 'Install spare tyres';
        WALK_AROUNDCaptionLbl: Label 'WALK AROUND';
        FACTORY_LOADED_PARTSCaptionLbl: Label 'FACTORY LOADED PARTS';
        ENGINECaptionLbl: Label 'ENGINE';
        Check__battery_terminals_on_correct_tightening_torqueCaptionLbl: Label 'Check  battery terminals on correct tightening torque';
        Check_electrical_fuse_box_for_proper_fixing_of_fuses_and_short_pinCaptionLbl: Label 'Check electrical fuse box for proper fixing of fuses and short pin';
        Check_engine_performance_during_warm_upCaptionLbl: Label 'Check engine performance during warm up';
        Check_lubrication_oil__fluids_level_and_its_guagesCaptionLbl: Label 'Check lubrication oil/ fluids level and its guages';
        Check_wiper_washer_water_levelCaptionLbl: Label 'Check wiper washer water level';
        Check_water_coolant_levelCaptionLbl: Label 'Check water coolant level';
        Check_power_steering_fluidCaptionLbl: Label 'Check power steering fluid';
        Check_battery_electrolyte_levelCaptionLbl: Label 'Check battery electrolyte level';
        Check_fusible_link_for_possible_cuting__and_damagesCaptionLbl: Label 'Check fusible link for possible cuting  and damages';
        IN_VEHICLECaptionLbl: Label 'IN VEHICLE';
        Confirm_warranty_booklets_availabilityCaptionLbl: Label 'Confirm warranty booklets availability';
        Confirm_service_sticker_installationCaptionLbl: Label 'Confirm service sticker installation';
        Confirm_owners_manual_availabilityCaptionLbl: Label 'Confirm owners manual availability';
        Check_all_vehicle_keys_transmiter_operationsCaptionLbl: Label 'Check all vehicle keys/transmiter operations';
        Check_all_meters_at_dash_board_with_their_operating_conditionCaptionLbl: Label 'Check all meters at dash board with their operating condition';
        Check_front_hood_opening_and_closing_conditionCaptionLbl: Label 'Check front hood opening and closing condition';
        Check_fuel_tank_lid_openning_and_closing_operationsCaptionLbl: Label 'Check fuel tank lid openning and closing operations';
        Check_trunk_lid_opening_and_closing_conditionCaptionLbl: Label 'Check trunk lid opening and closing condition';
        Check_car_stereo_operationsCaptionLbl: Label 'Check car stereo operations';
        Check_all_lights_operationsCaptionLbl: Label 'Check all lights operations';
        Check_wipers_operation_and_performanceCaptionLbl: Label 'Check wipers operation and performance';
        Check_seat_belt_operationsCaptionLbl: Label 'Check seat belt operations';
        Check_seats_operations_and_its_heater_perfommanceCaptionLbl: Label 'Check seats operations and its heater perfommance';
        Check_cigarette_lighter_and_its_operationsCaptionLbl: Label 'Check cigarette lighter and its operations';
        Check_steering_wheel_tilt_and_operationsCaptionLbl: Label 'Check steering wheel tilt and operations';
        Check_air_condition_performance_and_cooling_operationsCaptionLbl: Label 'Check air condition performance and cooling operations';
        Check_sun_roof_operationsCaptionLbl: Label 'Check sun roof operations';
        Check_hand_brake_operationsCaptionLbl: Label 'Check hand brake operations';
        Check_headphone_ear_piece__operationsCaptionLbl: Label 'Check headphone ear piece  operations';
        Check_interior_floor_mats_for_possible_stains_and_dirtsCaptionLbl: Label 'Check interior floor mats for possible stains and dirts';
        Check_interior_roof_linnings_for_stain_and_dirtsCaptionLbl: Label 'Check interior roof linnings for stain and dirts';
        Check_sun_visor_linning_condition_and_operationsCaptionLbl: Label 'Check sun visor linning condition and operations';
        check_window_winding_operationCaptionLbl: Label 'check window winding operation';
        Check_side_mirrors_operationsCaptionLbl: Label 'Check side mirrors operations';
        Check_for_inner_lights_and_other_interior_appliancesCaptionLbl: Label 'Check for inner lights and other interior appliances';
        Check_rear_winscreen_cotton_control_operationCaptionLbl: Label 'Check rear winscreen cotton control operation';
        BOOTCaptionLbl: Label 'BOOT';
        Check__availability_of_spare_tyres_and_its_inflationCaptionLbl: Label 'Check  availability of spare tyres and its inflation';
        Check_availability_of_jacks_and_tool_kitsCaptionLbl: Label 'Check availability of jacks and tool kits';
        Check__availability_of_wheel_coversCaptionLbl: Label 'Check  availability of wheel covers';
        Check__rear_boot_speakers_and_its_operationsCaptionLbl: Label 'Check  rear boot speakers and its operations';
        Check__fire_Extinguishers_availabilityCaptionLbl: Label 'Check  fire Extinguishers availability';
        Check_for_C_CautionCaptionLbl: Label 'Check for C-Caution';
        UNDERCaptionLbl: Label 'UNDER';
        Fixing_of_body_plug_rubbersCaptionLbl: Label 'Fixing of body plug rubbers';
        Fixing_of_mud_guards_rubberCaptionLbl: Label 'Fixing of mud guards rubber';
        Check__suspension_mechanism_for_correct_tightening_and_possible_damagesCaptionLbl: Label 'Check  suspension mechanism for correct tightening and possible damages';
        Check_brake_pipes_for_damagesCaptionLbl: Label 'Check brake pipes for damages';
        Check__exhaust_pipe_for_damagesCaptionLbl: Label 'Check  exhaust pipe for damages';
        Check_all_tyres_for_possible_damagesCaptionLbl: Label 'Check all tyres for possible damages';
        VRI_CHECK_LISTCaptionLbl: Label 'VRI CHECK LIST';
        OK_________NOT_OK__________N_ACaptionLbl: Label '    OK         NOT OK          N/A';
        OK_________NOT_OK__________N_ACaption_Control1000000360Lbl: Label '    OK         NOT OK          N/A';
        OK_________NOT_OK__________N_ACaption_Control1000000361Lbl: Label '    OK         NOT OK          N/A';
        OK_________NOT_OK__________N_ACaption_Control1000000362Lbl: Label '    OK         NOT OK          N/A';
        OK_________NOT_OK__________N_ACaption_Control1000000363Lbl: Label '    OK         NOT OK          N/A';
        OK_________NOT_OK__________N_ACaption_Control1000000364Lbl: Label '    OK         NOT OK          N/A';
        TOYOTA__NIGERIA__LIMITEDCaptionLbl: Label 'TOYOTA (NIGERIA) LIMITED';
}

