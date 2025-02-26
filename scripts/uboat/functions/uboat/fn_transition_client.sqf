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


// How to raise event:
// ["ZRN_UBOAT_TRANSITION", _params] call CBA_fnc_globalEvent;


params ["_entry"];


// Create Local Only Version of the Object
private _object = createVehicleLocal [ _entry get "after" get "className", [0,0,0] ];


_object setPosASL (_entry get "before" get "posASL");
_object setVectorDir (_entry get "before" get "VecDir");

_object enableSimulation false;




// SETUP and START PFHandler
private _startTime = CBA_missionTime;
private _endTime = CBA_missionTime + (_entry get "duration");

diag_log format ['[CVO](debug)(fn_transition_client) _startTime: %1 - _endTime: %2 - _object: %3', _startTime , _endTime ,_object];

private _params = [_startTime, _endTime, _object, _entry];

private _code = {
    params ["_args", "_handle"];
    _args params ["_startTime", "_endTime", "_object", "_entry"];


    // Establish
    private _pos = vectorLinearConversion [
        _startTime,
        _endTime,
        CBA_missionTime,
        _entry get "before" get "PosASL",
        _entry get "after" get "PosASL",
        true
    ];
    private _vecDir = vectorLinearConversion [
        _startTime,
        _endTime,
        CBA_missionTime,
        _entry get "before" get "VecDir",
        _entry get "after" get "VecDir",
        true
    ];
    private _vecUp = vectorLinearConversion [
        _startTime,
        _endTime,
        CBA_missionTime,
        _entry get "before" get "VecUp",
        _entry get "after" get "VecUp",
        true
    ];


    // Apply
    _object setPosASL _pos;
    _object setVectorDirAndUp [_vecDir, _vecUp];


    if (CBA_missionTime > _endTime) then { _handle call CBA_fnc_removePerFrameHandler; };
};
[_code, 0, _params] call CBA_fnc_addPerFrameHandler;
