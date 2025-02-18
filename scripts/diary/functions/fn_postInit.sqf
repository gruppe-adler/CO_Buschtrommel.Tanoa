if !(hasInterface) exitWith {};

// create root of ingame documentation
player createDiarySubject ["buschtrommel_diarySubject","Buschtrommel"];

// create empty diary records
private _WorkaroundsRecord = player createDiaryRecord ["buschtrommel_diarySubject", ["",""]];

// create workaround functions (as a potential self-service for players)
private _DroneAIWorkaround = "<br/>
------------------------------------------------------------------------------------------------ <br/>
<font color='#ff00ff' size='14'>Drone AI bug</font> <br/>
Arma's drone AI is quite prone to breaking. <br/>
Then a <font color='#00ffff'>drone can't operate autonomously anymore</font>. <br/>
(e.g. happens when you do a <execute expression='[""ACE_Items"", ""ACE_UAVBattery""] call BIS_fnc_openFieldManual'>battery swap with ACE</execute>) <br/>
<br/>
Using the link below you should be able to restore them. <br/>
<executeClose expression='call diary_fnc_fixDroneAI'>Fix drone AI</executeClose><br/>
<br/>
Another way of fixing this manually for Darter drones is <br/>
to <font color='#00ffff'>disassemble them (into a backpack) and then reassembling</font> them. <br/>
<br/>";


// Workarounds section (for quick and easy access)
player setDiaryRecordText [["buschtrommel_diarySubject", _WorkaroundsRecord], ["Workarounds", _DroneAIWorkaround]];


// select top-most entry at game start
// player selectDiarySubject "buschtrommel_diarySubject:Record-1";
