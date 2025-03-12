// TFAR - Global settings
force TFAR_SameSRFrequenciesForSide = true;
force TFAR_SameLRFrequenciesForSide = true;
// force TFAR_setting_defaultFrequencies_lr_west = "31,32,33,34,35,36,37,38";
force TFAR_setting_defaultFrequencies_lr_east = "71,72,73,74,75,76,77,78";
// force TFAR_setting_defaultFrequencies_sr_west = "301,302,303,304,305,306,307,308";
force TFAR_setting_defaultFrequencies_sr_east = "381,382,383,384,385,386,387,388";

// ACE Crew Served Weapons
force ace_csw_ammoHandling = 0;

// Crows Electronic Warfare
force crowsEW_spectrum_spectrumEnable = true;	// enable Spectrum Device
force crowsEW_spectrum_selfTracking = true;		// show own radio emissions
force crowsEW_spectrum_tfarSideTrack = true;	// show friendly radio emissions
force crowsEW_spectrum_minJamSigStrength = -50;	// (in dBm); minimum signal strength necessary in Spectrum Device for jamming
force crowsEW_spectrum_defaultClassForJammingSignal = "UGV_01_base_F,UGV_02_Base_F,UAV_01_base_F,UAV_02_base_F,UAV_03_base_F,UAV_04_base_F,UAV_05_Base_F,UAV_06_base_F,B_SAM_System_01_F,B_SAM_System_02_F,B_Ship_MRLS_01_F,B_Ship_Gun_01_F,B_AAA_System_01_F,B_GMG_01_A_F,B_HMG_01_A_F,B_T_Boat_Armed_01_minigun_F,B_W_Static_Designator_01_F,B_SAM_System_03_F";
force crowsEW_spectrum_defaultRangesForJammingSignal = "2201,2202,2203,10004,10005,10006,10007,2208,3009,3010,3011,3012,3013,2214,2215,3014,2217,3015";




// **************************************************************************************************************************************
// **************************************************************************************************************************************
// **************************************************************************************************************************************
// **************************************************************************************************************************************


// ACE Cook off
force ace_cookoff_enableFire = true;


// ACE Logistics
// ace_cargo_enableRename = true;
// ace_cargo_loadTimeCoefficient = 5;
// ace_cargo_openAfterUnload = 0;
// ace_rearm_distance = 20;
force ace_repair_autoShutOffEngineWhenStartingRepair = true;
// ace_repair_displayTextOnRepair = true;
// ace_repair_fullRepairRequiredItems = ["ace_repair_anyToolKit"];
// ace_repair_locationsBoostTraining = false;
// ace_repair_miscRepairRequiredItems = ["ace_repair_anyToolKit"];
ace_repair_wheelRepairRequiredItems = [];

// ACE Map
force ace_map_DefaultChannel = 0;	// 0 is global channel
ace_markers_timestampEnabled = true;
ace_markers_timestampFormat = "HH:MM";
ace_markers_timestampHourFormat = 24;

// ACE Medical
force ace_medical_ai_enabledFor = 0;
force ace_medical_AIDamageThreshold = 0.7;
force ace_medical_bleedingCoefficient = 0.7;
// ace_medical_blood_bloodLifetime = 600;
// ace_medical_blood_enabledFor = 2;
// ace_medical_blood_maxBloodObjects = 500;
// ace_medical_deathChance = 1;
// ace_medical_enableVehicleCrashes = true;
force ace_medical_fatalDamageSource = 2;
// ace_medical_feedback_bloodVolumeEffectType = 0;
// ace_medical_feedback_enableHUDIndicators = true;
// ace_medical_feedback_painEffectType = 0;
force ace_medical_fractureChance = 0.497159;
force ace_medical_fractures = 1;
// ace_medical_gui_enableActions = 0;
// ace_medical_gui_enableMedicalMenu = 1;
// ace_medical_gui_enableSelfActions = true;
// ace_medical_gui_interactionMenuShowTriage = 1;
force ace_medical_gui_maxDistance = 2.5;
// ace_medical_gui_openAfterTreatment = true;
force ace_medical_ivFlowRate = 1;
force ace_medical_limping = 1;
force ace_medical_painCoefficient = 1;
// ace_medical_painUnconsciousChance = 0.1;
force ace_medical_playerDamageThreshold = 1.25;
force ace_medical_spontaneousWakeUpChance = 0.5;
force ace_medical_spontaneousWakeUpEpinephrineBoost = 1.5;
force ace_medical_statemachine_AIUnconsciousness = false;
// ace_medical_statemachine_cardiacArrestBleedoutEnabled = true;
force ace_medical_statemachine_cardiacArrestTime = 3600;
force ace_medical_statemachine_fatalInjuriesAI = 0;
force ace_medical_statemachine_fatalInjuriesPlayer = 2;
force ace_medical_treatment_advancedBandages = 2;
// ace_medical_treatment_advancedDiagnose = 1;
force ace_medical_treatment_advancedMedication = true;
// ace_medical_treatment_allowBodyBagUnconscious = false;
// ace_medical_treatment_allowLitterCreation = true;
force ace_medical_treatment_allowSelfIV = 0;
force ace_medical_treatment_allowSelfPAK = 0;
force ace_medical_treatment_allowSelfStitch = 1;
force ace_medical_treatment_allowSharedEquipment = 0;
// ace_medical_treatment_clearTrauma = 1;
force ace_medical_treatment_consumePAK = 0;
force ace_medical_treatment_consumeSurgicalKit = 0;
force ace_medical_treatment_convertItems = 0;
// ace_medical_treatment_cprSuccessChanceMax = 0.4;
// ace_medical_treatment_cprSuccessChanceMin = 0.4;
force ace_medical_treatment_holsterRequired = 0;
// ace_medical_treatment_litterCleanupDelay = 600;
force ace_medical_treatment_locationEpinephrine = 0;
// ace_medical_treatment_locationIV = 0;
force ace_medical_treatment_locationPAK = 3;
force ace_medical_treatment_locationsBoostTraining = false;
force ace_medical_treatment_locationSurgicalKit = 0;
// ace_medical_treatment_maxLitterObjects = 500;
force ace_medical_treatment_medicEpinephrine = 0;
force ace_medical_treatment_medicIV = 1;
force ace_medical_treatment_medicPAK = 1;
force ace_medical_treatment_medicSurgicalKit = 1;
force ace_medical_treatment_timeCoefficientPAK = 1;
// ace_medical_treatment_treatmentTimeAutoinjector = 5;
// ace_medical_treatment_treatmentTimeBodyBag = 15;
// ace_medical_treatment_treatmentTimeCPR = 15;
// ace_medical_treatment_treatmentTimeIV = 12;
// ace_medical_treatment_treatmentTimeSplint = 7;
// ace_medical_treatment_treatmentTimeTourniquet = 7;
// ace_medical_treatment_woundReopenChance = 1;
// ace_medical_treatment_woundStitchTime = 5;

// ACE Trenches
// ace_trenches_bigEnvelopeDigDuration = 25;
// ace_trenches_bigEnvelopeRemoveDuration = 15;
// ace_trenches_smallEnvelopeDigDuration = 20;
// ace_trenches_smallEnvelopeRemoveDuration = 12;

// ACE Uncategorized
// ace_fastroping_requireRopeItems = false;
// ace_gunbag_swapGunbagEnabled = true;
// ace_hitreactions_minDamageToTrigger = 0.1;
// ace_inventory_inventoryDisplaySize = 0;
// ace_laser_dispersionCount = 2;
// ace_microdagr_mapDataAvailable = 2;
// ace_microdagr_waypointPrecision = 3;
// ace_optionsmenu_showNewsOnMainMenu = true;
// ace_overpressure_distanceCoefficient = 1;
// ace_parachute_failureChance = 0;
force ace_parachute_hideAltimeter = false;
// ace_tagging_quickTag = 1;

// ACE Volume
force acex_volume_lowerInVehicles = false;	// boats and stompers have open air seats (and ambient music would be affected by this)

// ACE Weapons
// ace_common_persistentLaserEnabled = false;
// ace_laserpointer_enabled = true;
// ace_reload_displayText = true;
// ace_reload_showCheckAmmoSelf = false;
// ace_weaponselect_displayText = true;

// ACE Zeus
force ace_zeus_canCreateZeus = -1;

// Community Base Addons
cba_diagnostic_ConsoleIndentType = -1;
cba_disposable_dropUsedLauncher = 2;
cba_disposable_replaceDisposableLauncher = true;
cba_events_repetitionMode = 1;
cba_network_loadoutValidation = 0;
cba_optics_usePipOptics = true;
cba_ui_notifyLifetime = 4;
cba_ui_StorePasswords = 1;

// GRAD Save Markers
GRAD_saveMarkers_setting_canBeOpened = 1;

// TFAR - Global settings
// TFAR_AICanHearSpeaker = false;
// TFAR_allowDebugging = true;
// tfar_core_noTSNotConnectedHint = false;
// TFAR_defaultIntercomSlot = 0;
// TFAR_disableAutoMute = false;
// TFAR_experimentalVehicleIsolation = true;
// TFAR_globalRadioRangeCoef = 1;
// TFAR_instantiate_instantiateAtBriefing = false;
force TFAR_objectInterceptionEnabled = true;
// TFAR_objectInterceptionStrength = 400;
// tfar_radiocode_east = "_opfor";
// tfar_radiocode_independent = "_independent";
// tfar_radiocode_west = "_bluefor";
// tfar_radioCodesDisabled = false;
force TFAR_SameLRFrequenciesForSide = false;
force TFAR_SameSRFrequenciesForSide = false;
force TFAR_spectatorCanHearEnemyUnits = true;
force TFAR_spectatorCanHearFriendlies = true;
// TFAR_takingRadio = 2;
// TFAR_Teamspeak_Channel_Name = "TaskForceRadio";
// TFAR_Teamspeak_Channel_Password = "123";
// tfar_terrain_interception_coefficient = 7;
// TFAR_voiceCone = true;

// VET_Unflipping
vet_unflipping_require_serviceVehicle = false;
vet_unflipping_require_toolkit = false;
vet_unflipping_time = 5;
vet_unflipping_unit_man_limit = 5;
vet_unflipping_unit_mass_limit = 3000;
vet_unflipping_vehicle_mass_limit = 100000;


// Zeus Enhanced - Faction Filter
force zen_faction_filter_0_gm_fc_gc = false;
force zen_faction_filter_0_gm_fc_gc_bgs = false;
force zen_faction_filter_0_gm_fc_pl = false;
force zen_faction_filter_0_gm_gc_army_win = false;
force zen_faction_filter_0_gm_pl_army_win = false;
force zen_faction_filter_0_gmx_fc_tak = false;
force zen_faction_filter_0_rhs_faction_msv = false;
force zen_faction_filter_0_rhs_faction_rva = false;
force zen_faction_filter_0_rhs_faction_tv = false;
force zen_faction_filter_0_rhs_faction_vdv = false;
force zen_faction_filter_0_rhs_faction_vmf = false;
force zen_faction_filter_0_rhs_faction_vpvo = false;
force zen_faction_filter_0_rhs_faction_vv = false;
force zen_faction_filter_0_rhs_faction_vvs = false;
force zen_faction_filter_0_rhs_faction_vvs_c = false;
force zen_faction_filter_0_rhsgref_faction_chdkz = false;
force zen_faction_filter_0_rhsgref_faction_chdkz_groups = false;
force zen_faction_filter_0_rhsgref_faction_tla = false;
force zen_faction_filter_0_rhssaf_faction_airforce_opfor = false;
force zen_faction_filter_0_rhssaf_faction_army_opfor = false;
force zen_faction_filter_0_UK3CB_AAF_O = false;
force zen_faction_filter_0_UK3CB_ADA_O = false;
force zen_faction_filter_0_UK3CB_ADC_O = false;
force zen_faction_filter_0_UK3CB_ADE_O = false;
force zen_faction_filter_0_UK3CB_ADG_O = false;
force zen_faction_filter_0_UK3CB_ADM_O = false;
force zen_faction_filter_0_UK3CB_ADP_O = false;
force zen_faction_filter_0_UK3CB_ADR_O = false;
force zen_faction_filter_0_UK3CB_APD_O = false;
force zen_faction_filter_0_UK3CB_ARD_O = false;
force zen_faction_filter_0_UK3CB_CCM_O = false;
force zen_faction_filter_0_UK3CB_CHC_O = false;
force zen_faction_filter_0_UK3CB_CHD_O = false;
force zen_faction_filter_0_UK3CB_CHD_O_groups = false;
force zen_faction_filter_0_UK3CB_CHD_W_O = false;
force zen_faction_filter_0_UK3CB_CHD_W_O_groups = false;
force zen_faction_filter_0_UK3CB_CPD_O = false;
force zen_faction_filter_0_UK3CB_CSAT_A_O = false;
force zen_faction_filter_0_UK3CB_CSAT_A_O_groups = false;
force zen_faction_filter_0_UK3CB_CSAT_B_O = false;
force zen_faction_filter_0_UK3CB_CSAT_B_O_groups = false;
force zen_faction_filter_0_UK3CB_CSAT_F_O = false;
force zen_faction_filter_0_UK3CB_CSAT_F_O_groups = false;
force zen_faction_filter_0_UK3CB_CSAT_G_O = false;
force zen_faction_filter_0_UK3CB_CSAT_G_O_groups = false;
force zen_faction_filter_0_UK3CB_CSAT_M_O = false;
force zen_faction_filter_0_UK3CB_CSAT_M_O_groups = false;
force zen_faction_filter_0_UK3CB_CSAT_N_O = false;
force zen_faction_filter_0_UK3CB_CSAT_N_O_groups = false;
force zen_faction_filter_0_UK3CB_CSAT_S_O = false;
force zen_faction_filter_0_UK3CB_CSAT_S_O_groups = false;
force zen_faction_filter_0_UK3CB_CSAT_U_O = false;
force zen_faction_filter_0_UK3CB_CSAT_U_O_groups = false;
force zen_faction_filter_0_UK3CB_CSAT_W_O = false;
force zen_faction_filter_0_UK3CB_CSAT_W_O_groups = false;
force zen_faction_filter_0_UK3CB_CW_SOV_O_EARLY = false;
force zen_faction_filter_0_UK3CB_CW_SOV_O_LATE = false;
force zen_faction_filter_0_UK3CB_FIA_O = false;
force zen_faction_filter_0_UK3CB_GAF_O = false;
force zen_faction_filter_0_UK3CB_ION_O_Desert = false;
force zen_faction_filter_0_UK3CB_ION_O_Urban = false;
force zen_faction_filter_0_UK3CB_ION_O_Winter = false;
force zen_faction_filter_0_UK3CB_ION_O_Woodland = false;
force zen_faction_filter_0_UK3CB_KDF_O = false;
force zen_faction_filter_0_UK3CB_KRG_O = false;
force zen_faction_filter_0_UK3CB_LDF_O = false;
force zen_faction_filter_0_UK3CB_LDF_O_groups = false;
force zen_faction_filter_0_UK3CB_LFR_O = false;
force zen_faction_filter_0_UK3CB_LNM_O = false;
force zen_faction_filter_0_UK3CB_LNM_O_groups = false;
force zen_faction_filter_0_UK3CB_LSM_O = false;
force zen_faction_filter_0_UK3CB_MDF_O = false;
force zen_faction_filter_0_UK3CB_MEC_O = false;
force zen_faction_filter_0_UK3CB_MEE_O = false;
force zen_faction_filter_0_UK3CB_MEI_O = false;
force zen_faction_filter_0_UK3CB_NAP_O = false;
force zen_faction_filter_0_UK3CB_NAP_O_groups = false;
force zen_faction_filter_0_UK3CB_NFA_O = false;
force zen_faction_filter_0_UK3CB_NFA_O_groups = false;
force zen_faction_filter_0_UK3CB_NPD_O = false;
force zen_faction_filter_0_UK3CB_TKA_O = false;
force zen_faction_filter_0_UK3CB_TKC_O = false;
force zen_faction_filter_0_UK3CB_TKM_O = false;
force zen_faction_filter_0_UK3CB_TKP_O = false;
force zen_faction_filter_1_AE3_Assets = false;
force zen_faction_filter_1_BWA3_Faction_Fleck = false;
force zen_faction_filter_1_BWA3_Faction_Multi = false;
force zen_faction_filter_1_BWA3_Faction_Tropen = false;
force zen_faction_filter_1_gm_dk_army_win = false;
force zen_faction_filter_1_gm_fc_dk = false;
force zen_faction_filter_1_gm_fc_ge = false;
force zen_faction_filter_1_gm_fc_ge_bgs = false;
force zen_faction_filter_1_gm_ge_army_win = false;
force zen_faction_filter_1_gmx_tak_army = false;
force zen_faction_filter_1_Redd_Vehicles = false;
force zen_faction_filter_1_rhs_faction_socom = false;
force zen_faction_filter_1_rhs_faction_usaf = false;
force zen_faction_filter_1_rhs_faction_usarmy_d = false;
force zen_faction_filter_1_rhs_faction_usarmy_wd = false;
force zen_faction_filter_1_rhs_faction_usmc_d = false;
force zen_faction_filter_1_rhs_faction_usmc_wd = false;
force zen_faction_filter_1_rhs_faction_usn = false;
force zen_faction_filter_1_rhsgref_faction_cdf_air_b = false;
force zen_faction_filter_1_rhsgref_faction_cdf_ground_b = false;
force zen_faction_filter_1_rhsgref_faction_cdf_ground_b_groups = false;
force zen_faction_filter_1_rhsgref_faction_cdf_ng_b = false;
force zen_faction_filter_1_rhsgref_faction_hidf = false;
force zen_faction_filter_1_UK3CB_AAF_B = false;
force zen_faction_filter_1_UK3CB_ADA_B = false;
force zen_faction_filter_1_UK3CB_ADC_B = false;
force zen_faction_filter_1_UK3CB_ADG_B = false;
force zen_faction_filter_1_UK3CB_ADM_B = false;
force zen_faction_filter_1_UK3CB_ADP_B = false;
force zen_faction_filter_1_UK3CB_ADR_B = false;
force zen_faction_filter_1_UK3CB_ANA_B = false;
force zen_faction_filter_1_UK3CB_ANP_B = false;
force zen_faction_filter_1_UK3CB_APD_B = false;
force zen_faction_filter_1_UK3CB_ARD_B = false;
force zen_faction_filter_1_UK3CB_CCM_B = false;
force zen_faction_filter_1_UK3CB_CHC_B = false;
force zen_faction_filter_1_UK3CB_CHD_B = false;
force zen_faction_filter_1_UK3CB_CHD_B_groups = false;
force zen_faction_filter_1_UK3CB_CHD_W_B = false;
force zen_faction_filter_1_UK3CB_CHD_W_B_groups = false;
force zen_faction_filter_1_UK3CB_CPD_B = false;
force zen_faction_filter_1_UK3CB_CW_US_B_EARLY = false;
force zen_faction_filter_1_UK3CB_CW_US_B_LATE = false;
force zen_faction_filter_1_UK3CB_FIA_B = false;
force zen_faction_filter_1_UK3CB_GAF_B = false;
force zen_faction_filter_1_UK3CB_ION_B_Desert = false;
force zen_faction_filter_1_UK3CB_ION_B_Urban = false;
force zen_faction_filter_1_UK3CB_ION_B_Winter = false;
force zen_faction_filter_1_UK3CB_ION_B_Woodland = false;
force zen_faction_filter_1_UK3CB_KDF_B = false;
force zen_faction_filter_1_UK3CB_KRG_B = false;
force zen_faction_filter_1_UK3CB_LDF_B = false;
force zen_faction_filter_1_UK3CB_LDF_B_groups = false;
force zen_faction_filter_1_UK3CB_LFR_B = false;
force zen_faction_filter_1_UK3CB_LNM_B = false;
force zen_faction_filter_1_UK3CB_LNM_B_groups = false;
force zen_faction_filter_1_UK3CB_LSM_B = false;
force zen_faction_filter_1_UK3CB_MDF_B = false;
force zen_faction_filter_1_UK3CB_MEC_B = false;
force zen_faction_filter_1_UK3CB_MEI_B = false;
force zen_faction_filter_1_UK3CB_NAP_B = false;
force zen_faction_filter_1_UK3CB_NAP_B_groups = false;
force zen_faction_filter_1_UK3CB_NFA_B = false;
force zen_faction_filter_1_UK3CB_NFA_B_groups = false;
force zen_faction_filter_1_UK3CB_NPD_B = false;
force zen_faction_filter_1_UK3CB_TKA_B = false;
force zen_faction_filter_1_UK3CB_TKC_B = false;
force zen_faction_filter_1_UK3CB_TKM_B = false;
force zen_faction_filter_1_UK3CB_TKP_B = false;
force zen_faction_filter_1_UK3CB_UN_B = false;
force zen_faction_filter_2_gm_fc_xx = false;
force zen_faction_filter_2_rhsgref_faction_cdf_air = false;
force zen_faction_filter_2_rhsgref_faction_cdf_ground = false;
force zen_faction_filter_2_rhsgref_faction_cdf_ground_groups = false;
force zen_faction_filter_2_rhsgref_faction_cdf_ng = false;
force zen_faction_filter_2_rhsgref_faction_cdf_ng_groups = false;
force zen_faction_filter_2_rhsgref_faction_chdkz_g = false;
force zen_faction_filter_2_rhsgref_faction_chdkz_g_groups = false;
force zen_faction_filter_2_rhsgref_faction_nationalist = false;
force zen_faction_filter_2_rhsgref_faction_nationalist_groups = false;
force zen_faction_filter_2_rhsgref_faction_tla_g = false;
force zen_faction_filter_2_rhsgref_faction_un = false;
force zen_faction_filter_2_rhssaf_faction_airforce = false;
force zen_faction_filter_2_rhssaf_faction_army = false;
force zen_faction_filter_2_rhssaf_faction_un = false;
force zen_faction_filter_2_UK3CB_AAF_I = false;
force zen_faction_filter_2_UK3CB_ADA_I = false;
force zen_faction_filter_2_UK3CB_ADC_I = false;
force zen_faction_filter_2_UK3CB_ADE_I = false;
force zen_faction_filter_2_UK3CB_ADG_I = false;
force zen_faction_filter_2_UK3CB_ADM_I = false;
force zen_faction_filter_2_UK3CB_ADP_I = false;
force zen_faction_filter_2_UK3CB_ADR_I = false;
force zen_faction_filter_2_UK3CB_APD_I = false;
force zen_faction_filter_2_UK3CB_ARD_I = false;
force zen_faction_filter_2_UK3CB_CCM_I = false;
force zen_faction_filter_2_UK3CB_CHC_I = false;
force zen_faction_filter_2_UK3CB_CHD_I = false;
force zen_faction_filter_2_UK3CB_CHD_I_groups = false;
force zen_faction_filter_2_UK3CB_CHD_W_I = false;
force zen_faction_filter_2_UK3CB_CHD_W_I_groups = false;
force zen_faction_filter_2_UK3CB_CPD_I = false;
force zen_faction_filter_2_UK3CB_FIA_I = false;
force zen_faction_filter_2_UK3CB_GAF_I = false;
force zen_faction_filter_2_UK3CB_ION_I_Desert = false;
force zen_faction_filter_2_UK3CB_ION_I_Urban = false;
force zen_faction_filter_2_UK3CB_ION_I_Winter = false;
force zen_faction_filter_2_UK3CB_ION_I_Woodland = false;
force zen_faction_filter_2_UK3CB_KDF_I = false;
force zen_faction_filter_2_UK3CB_KRG_I = false;
force zen_faction_filter_2_UK3CB_LDF_I = false;
force zen_faction_filter_2_UK3CB_LDF_I_groups = false;
force zen_faction_filter_2_UK3CB_LFR_I = false;
force zen_faction_filter_2_UK3CB_LNM_I = false;
force zen_faction_filter_2_UK3CB_LNM_I_groups = false;
force zen_faction_filter_2_UK3CB_LSM_I = false;
force zen_faction_filter_2_UK3CB_MDF_I = false;
force zen_faction_filter_2_UK3CB_MEC_I = false;
force zen_faction_filter_2_UK3CB_MEE_I = false;
force zen_faction_filter_2_UK3CB_MEI_I = false;
force zen_faction_filter_2_UK3CB_NAP_I = false;
force zen_faction_filter_2_UK3CB_NAP_I_groups = false;
force zen_faction_filter_2_UK3CB_NFA_I = false;
force zen_faction_filter_2_UK3CB_NFA_I_groups = false;
force zen_faction_filter_2_UK3CB_NPD_I = false;
force zen_faction_filter_2_UK3CB_TKA_I = false;
force zen_faction_filter_2_UK3CB_TKC_I = false;
force zen_faction_filter_2_UK3CB_TKM_I = false;
force zen_faction_filter_2_UK3CB_TKP_I = false;
force zen_faction_filter_2_UK3CB_UN_I = false;
force zen_faction_filter_3_EdCat_jbad_vehicles = false;
force zen_faction_filter_3_gm_fc_gc_civ = false;
force zen_faction_filter_3_gm_fc_ge_civ = false;
force zen_faction_filter_3_UK3CB_ADC_C = false;
force zen_faction_filter_3_UK3CB_CHC_C = false;
force zen_faction_filter_3_UK3CB_MEC_C = false;
force zen_faction_filter_3_UK3CB_TKC_C = false;
