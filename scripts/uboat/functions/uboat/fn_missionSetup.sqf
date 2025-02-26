/*
* Author: Zorn
* Missionmaker: Setup your stuff here
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

if !(isServer) exitWith { };

// Missionstart Preperation:
// obj before, obj after, duration of the transition
// Example:
// [ uboat_start_1, uboat_after_1, 25 ] call zrn_fnc_prep;
// [ uboat_start_2, uboat_after_2, 25 ] call zrn_fnc_prep;


// Code to start/execute the transition
// ["zrn_uboat_transition_server", [uboat_start_1]] call CBA_fnc_serverEvent;
