params ["_player", "_didJIP"];
enableSaving [false, false];


// allow U menu for easier team management
["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;



// prevent non-commanders from using the cruise missile launcher
private _rankId = rankId player;
private _rankInfo = format ["%1 is a %2", name player, rank player];
private _missileTracking = false;   // shall player track launched cruise missiles?
if (_rankId < 3) then {  // Lieutenants and higher ranks may use the VLS
    diag_log (_rankInfo + " and may NOT use the VLS.");
    ["loadout", {
        params ["_unit", "_newUnitLoadout", "_oldUnitLoadout"];
        if (playerSide == west) then { 
            player disableUAVConnectability [blufor_vls, true];
        };
        if (playerSide == east) then { 
            player disableUAVConnectability [opfor_vls, true];
        };
    }] call CBA_fnc_addPlayerEventHandler;
} else {
    diag_log (_rankInfo + " and may use the VLS.");
    _missileTracking = true;    // commanders shall track cruise missiles
};  
// enable cruise missile video feed and moving map marker after launch
private _VLStoMonitor = [];     // list of missile launchers to monitor for events
switch (playerSide) do
{
    case west: { _VLStoMonitor = [blufor_vls];  };
    case east: { _VLStoMonitor = [opfor_vls];   };
    // default    { _missileTracking = true;
    //              _VLStoMonitor = [blufor_vls, opfor_vls];   };   // for Zeus and streamers monitor both missile launchers
};
if (_missileTracking) then {
    // start video live feed when event with video source and target is received
    ["cruise_missile_live_feed_event", {
        params ["_projectile", "_gunner", "_magazine"];
        
        private _cameraTarget = missileTarget _projectile;
        diag_log format ["initPlayerLocal.sqf cruise_missile_live_feed_event: local _projectile ? '%1', _cameraTarget = '%2'", local _projectile, _cameraTarget];
        if ( local _projectile && !isNull _cameraTarget ) then {    // if this is not a given the remaining calls aren't without residual problems
        // if (playerSide == side _gunner || playerSide in [independent, civilian]) then {
            // if (isNull _cameraTarget) then { 
            //     _cameraTarget = getMarkerPos "demarkation_line";    // fallback target in the center of the map
            // };
            [_projectile, _cameraTarget, player, 0] call BIS_fnc_liveFeed;                  // add video live feed when "Fired"
            _projectile addEventHandler ["Deleted", { call BIS_fnc_liveFeedTerminate; }];   // terminate live feed when "Deleted"            
            [_projectile, _gunner, _magazine] call shelltracker_fnc_onFired;                // handling of moving map marker
        };
    }] call CBA_fnc_addEventHandler;

    {
        // add "Fired" event handler to send cruise_missile_live_feed_event
        _x addEventHandler ["Fired", {
            params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_gunner"];
            diag_log format ["initPlayerLocal.sqf Fired_EH: _projectile = '%1', _gunner = '%2', _magazine = '%3'", _projectile, _gunner, _magazine];
            ["cruise_missile_live_feed_event", [_projectile, _gunner, _magazine]] call CBA_fnc_globalEvent;     // send video source and target to other machines
        }];        
    } forEach _VLStoMonitor;
};
