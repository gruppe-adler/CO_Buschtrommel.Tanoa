class CSAT_Apex_Pacific {
    class AllUnits {
        uniform[] = {
            "U_O_T_Soldier_F",
            "UK3CB_CSAT_G_O_U_Tanktop",
            "UK3CB_CSAT_G_O_U_CombatUniform",
            "UK3CB_CSAT_G_O_U_CombatUniform_02",
            "UK3CB_CSAT_G_O_U_CombatUniform_Shortsleeve",
            "UK3CB_CSAT_G_O_U_CombatUniform_Shortsleeve_02"
        };
        vest[] = {
          "V_HarnessO_ghex_F",
          "V_TacVest_oli"
        };
        // backpack = "";
        headgear[] = {
            // "H_HelmetO_ghex_F",
            // "H_HelmetSpecO_ghex_F",
            // "H_HelmetLeaderO_ghex_F",
            "UK3CB_CSAT_G_O_H_Cap",
            "UK3CB_CSAT_G_O_H_Cap_Radio",
            "UK3CB_CSAT_G_O_H_BoonieHat",
            "UK3CB_CSAT_G_O_H_BoonieHat_hs",
            "UK3CB_CSAT_G_O_H_Bandanna",
            "UK3CB_CSAT_G_O_H_Bandanna_HS",
            "UK3CB_CSAT_G_O_H_Patrolcap_Mic"
        };
        primaryWeapon = "";
        primaryWeaponMagazine = "";
        primaryWeaponOptics = "";
        primaryWeaponMuzzle = "";
        primaryWeaponPointer[] = {
            "acc_flashlight",
            "rhsusf_acc_M952V",
            "rhsusf_acc_wmx_bk"
        };
        primaryWeaponUnderbarrel = "";
        primaryWeaponUnderbarrelMagazine = "";
        secondaryWeapon = "";
        secondaryWeaponMagazine = "";
        secondaryWeaponMuzzle = "";
        secondaryWeaponOptics = "";
        secondaryWeaponPointer = "";
        secondaryWeaponUnderbarrel = "";
        secondaryWeaponUnderbarrelMagazine = "";
        handgunWeapon = "hgun_esd_01_F";    // spectrum device
        handgunWeaponMuzzle = "muzzle_antenna_03_f";    // jamming antenna
        handgunWeaponMagazine = "";
        // handgunWeapon = "hgun_Rook40_F";
        // handgunWeaponMagazine = "16Rnd_9x21_Mag";
        // handgunWeaponMuzzle = "";
        handgunWeaponOptics = "";
        handgunWeaponPointer = "";
        handgunWeaponUnderbarrel = "";
        handgunWeaponUnderbarrelMagazine = "";
        goggles = "";
        nvgoggles = "";
        radio = "TFAR_fadak";
        // binoculars = "Binocular";
        binoculars = "Rangefinder";
        map = "ItemMap";
        // gps = "ItemGPS";
        gps = "O_UavTerminal";
        compass = "ItemCompass";
        watch = "ItemWatch";
        addItemsToUniform[] = {
            GRAD_FACTIONS_MEDICITEMS_INF_LIST,
            // LIST_2("ACE_Chemlight_HiWhite"),
            // LIST_2("Chemlight_green"),
            // LIST_1("ACE_Flashlight_MX991"),
            LIST_1("ACE_MapTools")
          };
        addItemsToVest[] = {
            LIST_2("16Rnd_9x21_Mag"),
            LIST_2("SmokeShell"),
            LIST_2("SmokeShellGreen")
        };
        backpack = "B_FieldPack_ghex_F";
        addItemsToBackpack[] = {
            LIST_1("ACE_EntrenchingTool"),
        };

    };

    class Type {
        // rifleman (base class for hunter-killer teams)
        class Soldier_F {
            primaryWeapon = "arifle_CTAR_ghex_F";
            primaryWeaponMagazine = "30Rnd_580x42_Mag_F";
            primaryWeaponOptics = "optic_ACO_grn";
            addItemsToVest[] = {
                LIST_7("30Rnd_580x42_Mag_F"),
                LIST_2("HandGrenade")
            };
        };

        // squad leader (hunter-killer)
        class Soldier_SL_F: Soldier_F {
            backpack = "UK3CB_B_O_Assault_camo_Radio";
            // binoculars = "Rangefinder";
            addItemsToBackpack[] = {
                LIST_3("30Rnd_580x42_Mag_Tracer_F")
            };
        };
        
        // medic
        class Medic_F: Soldier_F {
            backpack = "B_FieldPack_ghex_OTMedic_F";
            GRAD_FACTIONS_MEDICITEMS_SQ
        };
        
        // Grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "arifle_CTAR_GL_ghex_F";   // with underbarrel grenade launcher
            primaryWeaponUnderbarrelMagazine = "1Rnd_HE_Grenade_shell";
            vest = "V_HarnessOGL_ghex_F";
            backpack = "B_FieldPack_ghex_F";
            addItemsToBackpack[] = {
                LIST_15("1Rnd_HE_Grenade_shell")
            };
        };
        
        // engineer (incl. electronic warfare)
        class Engineer_F: Soldier_F {
            // handgunWeapon = "hgun_esd_01_F";    // spectrum device
            // handgunWeaponMuzzle = "muzzle_antenna_03_f";    // jamming antenna
            // handgunWeaponMagazine = "";
            // addItemsToUniform[] = {
            //     LIST_1("crowsew_tfar_icom")                
            // };
            backpack = "B_FieldPack_ghex_F";
            addItemsToBackpack[] = {
                LIST_1("ToolKit"),
                // LIST_1("ACE_EntrenchingTool"),
                LIST_1("ACE_wirecutter")
                // LIST_1("muzzle_antenna_01_f")   // military antenna (for TFAR emission detection)
            };
        };
        
        // marksman
        class Soldier_M_F: Soldier_F {
            primaryWeapon = "arifle_CTARS_ghex_F";
            primaryWeaponMagazine = "30Rnd_580x42_Mag_F";
            primaryWeaponOptics = "optic_DMS_ghex_F";
            addItemsToVest[] = {
                LIST_1("ACE_RangeCard")                
            };
        };
        
        /*** following are classes not derived from the rifleman ***/
        
        // automatic rifle 
        class Soldier_AR_F {
            primaryWeapon = "arifle_CTARS_ghex_F";
            primaryWeaponMagazine = "100Rnd_580x42_ghex_Mag_F";
            addItemsToVest[] = {
                LIST_5("100Rnd_580x42_ghex_Mag_F")
            };
        };
        
        // artillery gunner (base class for non-hunter-killer)
        class Support_Mort_F {
            primaryWeapon = "arifle_CTAR_ghex_F";
            primaryWeaponMagazine = "30Rnd_580x42_Mag_F";
            primaryWeaponOptics = "optic_ACO_grn";
            goggles = "G_Tactical_Clear";
            addItemsToVest[] = {
                LIST_5("30Rnd_580x42_Mag_F"),
                LIST_1("ACE_artilleryTable"),
                LIST_1("ACE_PlottingBoard"),
                // LIST_1("ACE_EntrenchingTool"),
                LIST_1("ACE_Fortify")                
            };
        };       
        
        // artillery leader
        class Soldier_TL_F: Support_Mort_F {
            backpack = "UK3CB_B_O_Assault_camo_Radio";
        };        
        
        // sensor operator (UAV and directionfinder)
        class Soldier_UAV_F: Support_Mort_F {
            headgear = "H_MilCap_ghex_F";
            // gps = "O_UavTerminal";
            vest = "V_HarnessO_ghex_F";
            addItemsToVest[] = {
                LIST_5("30Rnd_580x42_Mag_F"),
                LIST_3("ACE_UAVBattery")
            };
            backpack = "UK3CB_B_O_Assault_camo_Radio";
        };        
        
        // commander
        class Officer_F: Soldier_UAV_F {
            backpack = "UK3CB_B_O_Assault_camo_Radio";
        };        
    };
};
