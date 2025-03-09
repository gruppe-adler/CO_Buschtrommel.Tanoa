params ["_player", "_didJIP"];
enableSaving [false, false];

enableSentences false;  // disable radio transmissions to be heard and seen on screen 


// allow U menu for easier team management
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;



// enable cruise missile video feed
// start video live feed when event with video source and target is received
["cruise_missile_live_feed_event", {
    params ["_projectile", "_gunner", "_magazine"];
    
    private _cameraTarget = missileTarget _projectile;
    diag_log format ["initPlayerLocal.sqf cruise_missile_live_feed_event: local _projectile ? '%1', _cameraTarget = '%2'", local _projectile, _cameraTarget];
    if ( local _projectile && !isNull _cameraTarget ) then {    // if this is not a given the remaining calls aren't without residual problems
        [_projectile, _cameraTarget, player, 0] call BIS_fnc_liveFeed;                  // add video live feed when "Fired"
        _projectile addEventHandler ["Deleted", { call BIS_fnc_liveFeedTerminate; }];   // terminate live feed when "Deleted"            
    };
}] call CBA_fnc_addEventHandler;

// add "Fired" event handler to send cruise_missile_live_feed_event
opfor_vls addEventHandler ["Fired", {
    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
    diag_log format ["initPlayerLocal.sqf Fired_EH: _projectile = '%1', _gunner = '%2', _magazine = '%3'", _projectile, _gunner, _magazine];
    ["cruise_missile_live_feed_event", [_projectile, _gunner, _magazine]] call CBA_fnc_globalEvent;     // send video source and target to other machines
}];        


// prevent players from remote controlling the SAM turrets
["loadout", {
    params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
    player disableUAVConnectability [small_SAM, true];
    player disableUAVConnectability [large_SAM, true];
}] call CBA_fnc_addPlayerEventHandler;


// cinematic establishing shot
waitUntil { !isNull findDisplay 46 && date#3 < 7};   // need to wait until mission display is loaded and clients have synced their time to the server (before 7am)
[
    small_SAM,  // cam target and rotational center
    "Zerstörer ""Seeadler"" nördlich von Tanoa", // intro text
    40,     // altitude of cam
    110,    // radius of cam rotation
    100,
    1,      // clockwise rotation
    [], 
    0, 
    true, 
    10
] spawn BIS_fnc_establishingShot;
