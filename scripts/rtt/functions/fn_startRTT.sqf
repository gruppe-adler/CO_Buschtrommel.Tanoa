/*/////////////////////////////////////////////////
Author: Bernhard
This is mostly Killzonekid's work though
http://killzonekid.com/arma-scripting-tutorials-uav-r2t-and-pip/
			   
File: fn_startRTT.sqf
Parameters: none	// uses global variables isInstructorFigureEnabled
Return: none


*///////////////////////////////////////////////

if !(hasInterface) exitWith {};

// define render surfaces
driver_cam_screen setObjectTexture [0, "#(argb,512,512,1)r2t(driver_rtt,1)"];
gunner_cam_screen setObjectTexture [0, "#(argb,512,512,1)r2t(gunner_rtt,1)"];


// create camera and stream to render surface
driver_cam = "camera" camCreate [0,0,0]; 
gunner_cam = "camera" camCreate [0,0,0];
driver_cam cameraEffect ["Internal", "Back", "driver_rtt"]; 
gunner_cam cameraEffect ["Internal", "Back", "gunner_rtt"];		 

// attach cam to stomper
driver_cam attachTo [maintenance_stomper, [0,0,0], "PiP0_pos"]; 
gunner_cam attachTo [maintenance_stomper, [0,0,0], "PiP1_pos"];  

// switch cam to night vision
// "driver_rtt" setPiPEffect [1]; 
// "gunner_rtt" setPiPEffect [1]; 
 
// adjust camera orientation
rtt_mission_event_handler = addMissionEventHandler ["Draw3D", { 
	private _driver_dir =  
		(maintenance_stomper selectionPosition "PiP0_pos")  
			vectorFromTo  
		(maintenance_stomper selectionPosition "PiP0_dir"); 
		
	private _gunner_dir =  
		(maintenance_stomper selectionPosition "PiP1_pos")  
			vectorFromTo  
		(maintenance_stomper selectionPosition "PiP1_dir"); 
		
		
	gunner_cam setVectorDirAndUp [_gunner_dir,  
		_gunner_dir vectorCrossProduct [-(_gunner_dir select 1), _gunner_dir select 0, 0] 
	]; 
	
	driver_cam setVectorDirAndUp [_driver_dir,  
		_driver_dir vectorCrossProduct [-(_driver_dir select 1), _driver_dir select 0, 0] 
	]; 
}];
