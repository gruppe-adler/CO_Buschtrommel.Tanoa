// allow U menu for easier team management
["Initialize", [true]] call BIS_fnc_dynamicGroups;


// set date and time
[[2035,6,28,6,20]] remoteExec ["setDate"];


// turn off anti-air radar when jammer on small radar is deactivated
["crowsEW_main_toggleJammer", {
    params ["_netId", "_enabled"];
    private _jammer = crowsew_main_jamMap get _netId;
    if (_jammer#0 == radar_small) then {
        private _onOrOff = [2,1] select _enabled;     // 1 means forced on; 2 means forced off
        radar_big setVehicleRadar _onOrOff;

        // notify players
        private _ActivatedOrNot = ["deactivated", "activated"] select _enabled;
        private _playerHint = format ["Anti air radar has been %1.", _ActivatedOrNot];
        [_playerHint] remoteExec ["hintC", 0];
    }; 
}] call CBA_fnc_addEventHandler;


// remove NVGs from AI
{ _x unlinkItem hmd _x; } forEach units blufor;
