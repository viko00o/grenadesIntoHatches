if (!hasInterface) exitWith {};

// TODO - Replace this with something better
// TODO - Add the posibility to throw grenades for remote controlled units
player addEventHandler
[
    "FiredMan",
    {
	    params ["_unit", "_weapon", "_muzzle", "_mode", "_ammo", "_magazine", "_projectile", "_vehicle"];

        if (!gih_gihEnabled) exitWith {};
		if (!(_magazine in gih_validGrenades)) exitWith {};
        if (isNull cursorObject) exitWith {};
		if (!alive cursorObject) exitWith {};
        if (typeOf cursorObject in gih_blacklistedVehicles) exitWith {};
		
        _validVehicle = false;
		{
			if (cursorObject isKindOf _x || typeOf cursorObject in gih_whitelistedVehicles) exitWith {_validVehicle = true};
		} forEach gih_validVehicleTypes;
		if (!_validVehicle) exitWith {};

        // TODO - Search for hatch position
        _playerToVehiclePos = _unit worldToModel ASLToAGL getPosASL cursorObject;
        if ((abs(_playerToVehiclePos select 0)) < 1.5 && (abs(_playerToVehiclePos select 1)) < 3 && (_playerToVehiclePos select 2) < -1.7 && (_playerToVehiclePos select 2) > -4.5) then
        {
            deleteVehicle _projectile;
		    [cursorObject, _ammo] spawn vik_gih_fnc_vehicleExplosion;
        };
    }
];