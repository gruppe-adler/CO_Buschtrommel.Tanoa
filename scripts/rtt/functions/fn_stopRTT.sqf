/*/////////////////////////////////////////////////
Author: Bernhard
			   
File: fn_stopRTT.sqf
Parameters: none
Return: none

*///////////////////////////////////////////////

if !(hasInterface) exitWith {};

driver_cam_screen setObjectTexture [0, "\A3\Missions_F_Oldman\Data\img\Screens\CSATNtb_co.paa"];
gunner_cam_screen setObjectTexture [0, "\A3\Missions_F_Oldman\Data\img\Screens\CSATNtb_co.paa"];

camDestroy driver_cam;
camDestroy gunner_cam;
removeMissionEventHandler  ["Draw3D", rtt_mission_event_handler];
