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
          "V_BandollierB_ghex_F",
          "V_HarnessO_ghex_F"
        };
        backpack[] = {
            "B_FieldPack_ghex_F",
            "UK3CB_CSAT_G_O_B_FIELDPACK",
            "UK3CB_CSAT_G_O_B_ASS"
        };
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
        primaryWeaponOptics[] = {
            "optic_Arco_ghex_F",
            "optic_ACO_grn",
            "optic_ACO"
        };
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
        handgunWeaponOptics = "";
        handgunWeaponPointer = "";
        handgunWeaponUnderbarrel = "";
        handgunWeaponUnderbarrelMagazine = "";
        goggles = "";
        nvgoggles = "";
        radio = "TFAR_fadak";
        binoculars = "Rangefinder";
        map = "ItemMap";
        gps = "O_UavTerminal";
        compass = "ItemCompass";
        watch = "ItemWatch";
        addItemsToUniform[] = {
            GRAD_FACTIONS_MEDICITEMS_INF_LIST,
            LIST_2("ACE_CableTie"),
            LIST_1("ACE_MapTools")
          };
        addItemsToVest[] = {
            LIST_2("SmokeShell"),
            LIST_2("SmokeShellGreen")
        };
        addItemsToBackpack[] = {
            // LIST_1("ACE_EntrenchingTool"),
            LIST_1("ACE_UAVBattery")
        };

    };

    class Type {
        // rifleman (base class for most other classes)
        class Soldier_F {
            primaryWeapon = "arifle_CTAR_ghex_F";
            primaryWeaponMagazine = "30Rnd_580x42_Mag_F";
            addItemsToUniform[] = {
                LIST_2("30Rnd_580x42_Mag_F"),
            };
            addItemsToVest[] = {
                LIST_5("30Rnd_580x42_Mag_F"),
                LIST_2("HandGrenade")
            };
        };

        // squad leader
        class Soldier_SL_F: Soldier_F {
            backpack = "UK3CB_B_O_Assault_camo_Radio";
            addItemsToBackpack[] = {
                LIST_3("30Rnd_580x42_Mag_Tracer_F")
            };
        };
        
        // medic
        class Medic_F: Soldier_F {
            backpack = "B_FieldPack_ghex_OTMedic_F";
            GRAD_FACTIONS_MEDICITEMS_SQ
        };
        
        // grenadier
        class Soldier_GL_F: Soldier_F {
            primaryWeapon = "arifle_CTAR_GL_ghex_F";   // with underbarrel grenade launcher
            primaryWeaponUnderbarrelMagazine = "1Rnd_HE_Grenade_shell";
            vest = "V_HarnessOGL_ghex_F";
            addItemsToBackpack[] = {
                LIST_15("1Rnd_HE_Grenade_shell")
            };
        };
        
        // engineer
        class Engineer_F: Soldier_F {
            addItemsToBackpack[] = {
                LIST_1("ToolKit"),
                LIST_1("ACE_wirecutter"),
                LIST_3("DemoCharge_Remote_Mag")
            };
        };
        
        // explosive specialist
        class Soldier_Exp_F: Soldier_F {
            backpack = "UK3CB_CSAT_G_O_B_ASS";    // force large backpack for this role
            addItemsToBackpack[] = {
                LIST_1("ACE_DefusalKit"),
                LIST_1("ACE_VMM3"),
                LIST_3("APERSMine_Range_Mag"),
                LIST_3("APERSBoundingMine_Range_Mag"),
                LIST_3("DemoCharge_Remote_Mag")
            };
        };
        
        // anti air
        class Soldier_AA_F: Soldier_F {
            secondaryWeapon = "launch_O_Titan_ghex_F";
            secondaryWeaponMagazine = "Titan_AA";
            binoculars = "";    // not needed, because Titan launcher
            // backpack = "UK3CB_CSAT_G_O_B_ASS";    // force large backpack for this role
            addItemsToBackpack[] = {
                LIST_1("Titan_AA")
            };
        };
        // anti air assistant
        class Soldier_AAA_F: Soldier_F {
            backpack = "UK3CB_CSAT_G_O_B_ASS";    // force large backpack for this role
            addItemsToBackpack[] = {
                LIST_3("Titan_AA")
            };
        };
        
        // anti tank
        class Soldier_AT_F: Soldier_F {
            secondaryWeapon = "launch_O_Titan_short_ghex_F";
            secondaryWeaponMagazine = "Titan_AT";
            binoculars = "";    // not needed, because Titan launcher
            backpack = "UK3CB_CSAT_G_O_B_ASS";    // force large backpack for this role
            addItemsToBackpack[] = {
                LIST_3("Titan_AT")
            };
        };
        
        // marksman
        class Soldier_M_F: Soldier_F {
            primaryWeapon = "srifle_GM6_ghex_F";
            primaryWeaponMagazine = "5Rnd_127x108_APDS_Mag";
            primaryWeaponOptics = "optic_LRPS_ghex_F";
            addItemsToVest[] = {
                LIST_3("5Rnd_127x108_APDS_Mag"),
                LIST_1("ACE_RangeCard")                
            };
            addItemsToBackpack[] = {
                LIST_11("5Rnd_127x108_APDS_Mag")
            };
        };
        
        /*** following are classes not derived from the rifleman ***/
        
        // automatic rifle 
        class Soldier_AR_F {
            primaryWeapon = "arifle_CTARS_ghex_F";
            primaryWeaponMagazine = "100Rnd_580x42_ghex_Mag_F";
            addItemsToVest[] = {
                LIST_3("100Rnd_580x42_ghex_Mag_F")
            };
             addItemsToBackpack[] = {
                LIST_5("100Rnd_580x42_ghex_Mag_F")
            };
       };
        
        // artillery gunner (base class for non-hunter-killer)
        class Support_Mort_F {
            primaryWeapon = "arifle_CTAR_ghex_F";
            primaryWeaponMagazine = "30Rnd_580x42_Mag_F";
            goggles = "G_Tactical_Clear";
            addItemsToVest[] = {
                LIST_5("30Rnd_580x42_Mag_F"),
                LIST_1("ACE_artilleryTable"),
                LIST_1("ACE_PlottingBoard"),
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
            vest = "V_HarnessO_ghex_F";
            addItemsToVest[] = {
                LIST_5("30Rnd_580x42_Mag_F"),
                LIST_3("ACE_UAVBattery")
            };
            backpack = "UK3CB_B_O_Assault_camo_Radio";
        };        
        
        // commander
        class Officer_F: Soldier_UAV_F {
            primaryWeapon = "";
            vest = "";
            goggles = "";
            uniform = "UK3CB_CSAT_G_O_U_Officer";
            backpack = "UK3CB_B_O_Assault_camo_Radio";
            headgear = "UK3CB_CSAT_BEL_H_Beret";
            addItemsToBackpack[] = {
                LIST_1("ACE_wirecutter")
            };
        };        
    };
};
