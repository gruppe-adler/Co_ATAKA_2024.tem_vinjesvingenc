player addEventHandler ["HandleRating", {0}];

[] call GRAD_missionControl_fnc_setMyFrequency;

["InitializePlayer", [player, true]] call BIS_fnc_dynamicGroups;

[] call GRAD_permaChoice_fnc_addZeusModules;
[] call GRAD_zeusHelpers_fnc_addModules;

if (typeOf player == "O_Soldier_UAV_F") then {
	[] spawn {
		sleep 3;
		player linkitem "O_UavTerminal";
	};
};