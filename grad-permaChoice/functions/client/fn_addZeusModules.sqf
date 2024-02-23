waitUntil {!isNull player};
waitUntil {  time > 3 };
if (
  !isNull (getAssignedCuratorLogic player)
) then
{

  ["ATAKA", "Show List of DIE & SPECTATE Players",
  {
  	// Get all the passed parameters
  	params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    private _spectatorList = missionNameSpace getVariable ["GRAD_permaChoice_spectatorList", []];
    private _stringify = str _spectatorList;
  	["AllSpectators", [_stringify]] call bis_fnc_showNotification;

  }] call zen_custom_modules_fnc_register;

  ["ATAKA", "Force Respawn everyone here",
  {
  	// Get all the passed parameters
  	params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];
    _position = ASLtoAGL _position;

    missionNameSpace setVariable ["ATAKA_RespawnPosition", _position, true];
  	[] remoteExec ["GRAD_permaChoice_fnc_forceRespawn", [0,-2] select isDedicated, true];

  }] call zen_custom_modules_fnc_register;

  ["ATAKA", "Spawn Reinforcements",
  {
  	// Get all the passed parameters
  	params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

  	[""] remoteExec ["GRAD_reinforcements_fnc_init", 2];

  }] call zen_custom_modules_fnc_register;

  ["ATAKA", "Spawn Convoy",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    [[
      mrk_convoy_1,
      mrk_convoy_2,
      mrk_convoy_3,
      mrk_convoy_4,
      mrk_convoy_5
    ]] remoteExec ["GRAD_convoy_fnc_start", 2];

  }] call zen_custom_modules_fnc_register;

  ["ATAKA", "Display Mission End SUCCESS",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    [true,true,true] remoteExec ["GRAD_missionControl_fnc_endMission", [0,-2] select isDedicated];

  }] call zen_custom_modules_fnc_register;

   ["ATAKA", "Display Mission End FAIL",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    [true,true,true] remoteExec ["GRAD_missionControl_fnc_endMission", [0,-2] select isDedicated];

  }] call zen_custom_modules_fnc_register;



  ["ATAKA", "Create Nachbesprechung Task",
  {
    // Get all the passed parameters
    params [["_position", [0,0,0], [[]], 3], ["_objectUnderCursor", objNull, [objNull]]];

    [slot_boss,["tsk_join"],["Nachbesprechung abhalten.","Nachbesprechung",""],_position,1,2,true, "joinHere",true] call BIS_fnc_taskCreate;

  }] call zen_custom_modules_fnc_register;
};
