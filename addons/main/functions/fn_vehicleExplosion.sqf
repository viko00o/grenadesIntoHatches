params
[
	["_vehicle", objNull],
	["_grenadeAmmo", objNull]
];


if (gih_getOutChanceEnabled) then {[_vehicle] call vik_gih_fnc_crewChance};

_grenadeVisual = _grenadeAmmo createVehicle position _vehicle;
// TODO - Find center of vehicle model
_grenadeVisual attachTo[_vehicle, [0,-1,-1.5]];
_grenadeVisual addEventHandler 
[
	"Deleted",
	{
		params ["_entity"];
		[vehicle(attachedTo _entity)] spawn vik_gih_fnc_applyCrewDamage;
		[vehicle(attachedTo _entity)] spawn vik_gih_fnc_applyVehicleDamage;
		_entity removeEventHandler [_thisEvent, _thisEventHandler];
	}
];

true