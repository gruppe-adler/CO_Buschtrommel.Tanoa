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
["OPF_T_F", "CSAT_Apex_Pacific"] call GRAD_Loadout_fnc_FactionSetLoadout;


// sink uboat function
buschtrommel_fnc_sinkUboat = {
    params ["_pos"];
    {
        if (typeOf _x in ["Submarine_01_F", "Land_Plank_01_8m_F", "Land_Cargo20_military_green_F", "C_Man_ConstructionWorker_01_Blue_F"]) then {
            private _altitudeOffset = -6.50;
            if (_x == uboat_1) then { _altitudeOffset = -12.50 };
            if (_x == uboat_3) then { container_guy setDamage 1.0; };   // make sure guy on container is killed

            private _uboat_pos = getPosASL _x;
            _x setPosASL [_uboat_pos#0, _uboat_pos#1, _uboat_pos#2 + _altitudeOffset];     // sink into ground
            _x setVectorDirAndUp ([[vectorDirVisual _x, vectorUpVisual _x], 0, 10, 10] call BIS_fnc_transformVectorDirAndUp);   // roll and pitch a bit
        };     
    } forEach (_pos nearObjects 60);
};  
// sink uboat into ground when explosives detonate nearby
["ace_explosives_place", {
    params ["_explosive", "", "", "_unit"];

    private _hit = getNumber (configFile >> "CfgAmmo" >> typeOf _explosive >> "hit");
    if (_hit < 500) exitWith { diag_log "ignoring weak explosion" };

    _explosive addEventHandler ["Explode", {
        params ["_explosive", "_pos", "_velocity"];
        [_pos] call buschtrommel_fnc_sinkUboat;
    }];
}] call CBA_fnc_addEventHandler;
// sink uboat into ground when projectiles explode nearby
addMissionEventHandler ["ProjectileCreated", {
    params ["_projectile"];
    _projectile addEventHandler ["Explode", {
        params ["_projectile", "_pos", "_velocity"];
        private _indirectHitRange =  getNumber (configFile >> "CfgAmmo" >> typeOf _projectile >> "indirectHitRange");
        if (_indirectHitRange < 10) exitWith { diag_log "ignoring weak projectile" };
        [_pos] call buschtrommel_fnc_sinkUboat;
    }];
}];


// disable thermal optics of drones because those don't support the FilmGrain effect of the jammers
{
    [_x, "init",{
        params ["_vehicle"];
        _vehicle disableTIEquipment true;   // disable thermal imaging
        _vehicle setVariable ["A3TI_Disable", true];    // disable mod "A3 Thermal Improvement"
        // _vehicle disableNVGEquipment true;  // disable night vision imaging
        // _vehicle removeMagazinesTurret ["Laserbatteries", [0]];   // disable laser designator
    }, true, [], true] call CBA_fnc_addClassEventHandler;
} forEach ([crowsEW_spectrum_defaultClassForJammingSignal, ","] call BIS_fnc_splitString);


// prefill transport drones with some useful stuff
["UAV_06_base_F", "init",{
    params ["_vehicle"];
    clearItemCargoGlobal _vehicle;  // remove first aid kits
    _vehicle addMagazineCargoGlobal ["30Rnd_580x42_Mag_F", 7];
    _vehicle addMagazineCargoGlobal ["5Rnd_127x108_APDS_Mag", 4];
}, true, [], true] call CBA_fnc_addClassEventHandler;
