params ["_vehicle"];

if (isServer) then {
	GRAD_BMP_YOLO = true; publicVariable "GRAD_BMP_YOLO";
};

_vehicle addEventHandler ["HandleDamage", {
	params ["_unit", "_selection", "_damage", "_source", "_projectile", "_hitIndex", "_instigator", "_hitPoint", "_directHit", "_context"];

	if (!isNil "GRAD_BMP_YOLO") then {
		if (local _unit && GRAD_BMP_YOLO) then {
			if (_damage > 0.88) then { 
				_veh setDamage 0.88;
			} else {
				_veh setDamage _damage;
			};
		};
	};
}];
