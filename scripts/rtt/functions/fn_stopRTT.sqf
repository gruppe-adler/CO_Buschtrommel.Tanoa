/*/////////////////////////////////////////////////
Author: Bernhard
			   
File: fn_stopRTT.sqf
Parameters: none
Return: none

*///////////////////////////////////////////////

if !(hasInterface) exitWith {};

driver_cam_screen setObjectTexture [0, "#(argb,8,8,3)color(0,0,0,0.0,co)"];	// back to black
gunner_cam_screen setObjectTexture [0, "#(argb,8,8,3)color(0,0,0,0.0,co)"];	// back to black

camDestroy driver_cam;
camDestroy gunner_cam;
removeMissionEventHandler  ["Draw3D", rtt_mission_event_handler];
