// this will execute on ALL machines, no need to handle MP sync for basic things

// turn off jammer when loaded into vehicle
fnc_DeactivateJammerOnLoad = {
    params ["_item","_vehicle"];
    if ( typeName _item == "OBJECT" && { typeOf _item == "Land_DataTerminal_01_F" }) then {
        ["crowsew_main_toggleJammer", [netId _item, false]] call CBA_fnc_serverEvent; // deactivate jammer
        ["crowsew_sounds_setSoundEnable", [_item, false]] call CBA_fnc_serverEvent;  // deactivate jammer sound
        [_item, 0] call BIS_fnc_dataTerminalAnimate; // close the data terminal box
    };
};
["ace_cargoLoaded", fnc_DeactivateJammerOnLoad] call CBA_fnc_addEventHandler;


// apply grad-loadout
["BLU_T_F", "NATO_Apex_Pacific"] call GRAD_Loadout_fnc_FactionSetLoadout;
["OPF_T_F", "CSAT_Apex_Pacific"] call GRAD_Loadout_fnc_FactionSetLoadout;
