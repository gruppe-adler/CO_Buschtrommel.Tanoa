
if !(hasInterface) exitWith {};



// set the randomly generated laser code as default settings for both sides
switch (side player) do
{
    case west: { ACE_DEFAULT_LASER_CODE = laserCode_bluefor };
    case east: { ACE_DEFAULT_LASER_CODE = laserCode_opfor };
};
systemChat ("player's ACE_DEFAULT_LASER_CODE=" + str ACE_DEFAULT_LASER_CODE);
diag_log   ("player's ACE_DEFAULT_LASER_CODE=" + str ACE_DEFAULT_LASER_CODE);



laserCode = ACE_DEFAULT_LASER_CODE;
laserMaxDetectionRange = 9000;
laserWavelength = [1550, 1550];
seekerCone = 120;  // in degree



// is_Zeus = !isNull (getAssignedCuratorLogic player);    // check if current player is a Zeus
// if (is_Zeus) then { [player, 5] spawn BIS_fnc_traceBullets };  // colored tracers

addMissionEventHandler ["ArtilleryShellFired", {
	params ["_shooter", "_weapon", "_ammo", "_gunner", "_instigator", "_artilleryTarget", "_targetPosition", "_projectile"];
    //     [O Ship cannon:1,"weapon_ShipCannon_120mm","ammo_ShipCannon_120mm_HE_LG",O Ship cannon:1,zeus3,<NULL-object>,[12461.6,14458.1,20.8341],1696797: shell.p3d ammo_ShipCannon_120mm_HE_LG]

    testorino = _projectile;
    if (typeOf _projectile isNotEqualTo "ammo_ShipCannon_120mm_HE_LG") exitWith {};   // only run this code for ship cannons laser guided shells
    systemChat ("laser guided shell fired");
    diag_log   ("laser guided shell fired");
    [
        {
            [
                {
                    private _projectile = _this#0#1;
                    private _shooter = _this#0#0;

                    if (!alive _projectile) exitWith {
                        [_this#1] call CBA_fnc_removePerFrameHandler;
                        if (is_Zeus) then { systemChat "terminated" };
                    };
                    private _result = [
                        getPosASL _projectile,
                        vectorDir _projectile,
                        seekerCone,
                        laserMaxDetectionRange,
                        laserWavelength,
                        laserCode,
                        _projectile
                    ] call ace_laser_fnc_seekerFindLaserSpot;

                    private _spot = _result#0;
                    if (isNil "_spot") exitWith { if (is_Zeus) then { systemChat "no spot" } };
                    if (is_Zeus) then { systemChat "tracking" };

                    private _frameTime = time - (_projectile getVariable ["lastFrameTime", time]);
                    _projectile setVariable ["lastFrameTime", time];
                    private _distance2D = _projectile distance2D _spot;
                    private _distance2DTotal = _shooter distance2D _spot;
                    private _targetDistance = _spot distance _projectile;
                    private _velocity = vectorMagnitude velocity _projectile;
                    private _position = getPosASL _projectile;
                    (_projectile call BIS_fnc_getPitchBank) params ["_pitch", "_bank"];
                    private _vectToTarget = _position vectorFromTo _spot;
                    private _vectToTargetDiff = _vectToTarget vectorDiff (vectorNormalized (velocity _projectile));
                    private _vectorModelSpace = _projectile vectorWorldToModel _vectToTargetDiff;
                    private _angleX = asin (_vectorModelSpace # 0);
                    private _angleY = asin (_vectorModelSpace # 2);

                    _turnRate = 24 * _frameTime;  // turn rate is dependant on projectile velocity
                    if (is_Zeus) then {
                    diag_log   str _angleX;
                    diag_log   str _angleY;
                    diag_log   str _turnRate;
                    diag_log   str (getDir _projectile);
                    };

                    _projectile setDir (getDir _projectile) + (_angleX min _turnRate  max -_turnRate );
                    if(((-_angleY) > 45)) then {
                        [_projectile, _pitch + (_angleY  min _turnRate  max -_turnRate), 0] call BIS_fnc_setPitchBank;
                    };

                    if(_distance2D < (_distance2DTotal / 2)) then {
                        [_projectile, _pitch + (_angleY  min _turnRate  max -_turnRate), 0] call BIS_fnc_setPitchBank;
                    };
                },
                0.1,
                _this
            ] call CBA_fnc_addPerFrameHandler;
        },
        [getPosASL _shooter, _projectile],
        10
    ] call CBA_fnc_waitAndExecute;
}];
