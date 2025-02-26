/*
* Author: Zorn
* Function that will handle the Transition from the before state to the after state
*
* Arguments:
*
* Return Value:
* None
*
* Example:
* ['something', player] call prefix_component_fnc_functionname
*
* Public: No
*/



if !(isServer) exitWith {};

params ["_obj"];

if (isNull _obj) exitWith {};

// Get KeyName from Object
private _keyName = _obj getVariable ["ZRN_UBOAT_KEY", false];
if (_keyName isEqualTo false) exitWith {};


// Retrieve Entry from Global Map
private _global_map = missionNamespace getVariable ["ZRN_UBOAT_MAP", false];
if (_global_map isEqualTo false) exitWith {};


// Deletes the global Vehicle
[{deleteVehicle _this}, _obj] call CBA_fnc_execNextFrame;


private _entry = _global_map get _keyName;

["zrn_uboat_transition_client", [_entry]] call CBA_fnc_globalEventJIP;
