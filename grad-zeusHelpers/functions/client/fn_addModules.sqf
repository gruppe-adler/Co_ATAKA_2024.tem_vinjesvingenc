waitUntil {!isNull player};
waitUntil {  time > 3 };
if (
  !isNull (getAssignedCuratorLogic player)
) then
{

  ["ZEUS HELPERS", "Force Movement",
  {
  	// Get all the passed parameters
  	params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    if (!(_objectUnderCursor isKindOf "LAND")) exitWith { hint "no land vehicle"; };

    private _waypointPos = waypointPosition [group _objectUnderCursor, (currentWaypoint group _objectUnderCursor)];

    [_objectUnderCursor, _waypointPos] call GRAD_zeusHelpers_fnc_forceMovement;

  }] call zen_custom_modules_fnc_register;

  ["ZEUS HELPERS", "Activate Civilian Modules",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    civmodule_1 setVariable ["#active",true,true];
    civmodule_2 setVariable ["#active",true,true];

  }] call zen_custom_modules_fnc_register;

  ["ZEUS HELPERS", "Deactivate Civilian Modules",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    civmodule_1 setVariable ["#active",false,true];
    civmodule_2 setVariable ["#active",false,true];

  }] call zen_custom_modules_fnc_register;



  ["ZEUS HELPERS", "Outro",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];
    _position = ASLtoAGL _position;

    private _count =count (playableUnits + switchableUnits);

    
    // possible chairs
    private _chairs = ["Land_CampingChair_V1_F", _position, _count] call GRAD_zeusHelpers_fnc_createChairCircle;

    // fill chairs with players
    {      
        [_x, _position, _count, _chairs select _forEachIndex] remoteExec ["GRAD_missionControl_fnc_outro", _x, true];
          
    } forEach (switchableUnits + playableUnits);

  }] call zen_custom_modules_fnc_register;

  ["ZEUS HELPERS", "Terminate Ambient Anim",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    if (!isNull _objectUnderCursor) then {
      [_objectUnderCursor] call GRAD_zeusHelpers_fnc_terminateAmbientAnim;
    };


  }] call zen_custom_modules_fnc_register;

};