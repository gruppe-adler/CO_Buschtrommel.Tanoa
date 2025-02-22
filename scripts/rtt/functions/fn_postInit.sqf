if !(hasInterface) exitWith {};


["rtt_event_startRTT", rtt_fnc_startRTT] call CBA_fnc_addEventHandler;
["rtt_event_stopRTT", rtt_fnc_stopRTT] call CBA_fnc_addEventHandler;
