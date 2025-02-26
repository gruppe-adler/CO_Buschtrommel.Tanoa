/*
* Author: Zorn
* Function to preapre the Submarines
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

params [
    ["_obj_before", objNull,    [objNull]   ],
    ["_obj_after",  objNull,    [objNull]   ],
    ["_duration",   30,         [0]         ]
];


// Get/create Global Map
private _global_map = missionNamespace getVariable ["ZRN_UBOAT_MAP", "404"];
if (_global_map isEqualTo "404") then {
    _global_map = createHashMap;
    missionNamespace setVariable ["ZRN_UBOAT_MAP", _global_map];
};

private _key = ["ZRN","UBOAT","KEY",count _global_map] joinString "_";
_obj_before setVariable ["ZRN_UBOAT_KEY", _key, true];


// Store Before and After Data in Global Map

private _before = createHashMapFromArray [
    ["className", typeOf _obj_before],
    ["PosASL", getPosASL _obj_before],
    ["VecDir", vectorDir _obj_before],
    ["VecUp",  vectorUp  _obj_before]

];

private _after = createHashMapFromArray [
    ["className", typeOf _obj_after],
    ["PosASL", getPosASL _obj_after],
    ["VecDir", vectorDir _obj_after],
    ["VecUp",  vectorUp  _obj_after]
];


// Create Global Map Entry and Store
private _entry = createHashMapFromArray [
    ["duration", _duration],
    ["before", _before],
    ["after", _after]
];

_global_map set [_key, _entry];

// Prepare Objects
_obj_before enableSimulationGlobal false;
deleteVehicle _obj_after;


