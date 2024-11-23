params
[
	["_vehicle", objNull]
];

// TODO - Add setting for vehicle destruction
if (selectRandomWeighted gih_cookoffChance == 1) then
{
	if (someAmmo _vehicle) then
	{
		if (gih_hasAceCO) then
		{
			if (_vehicle isKindOf "Tank" || _vehicle isKindOf "Wheeled_APC_F") then
			{
				[_vehicle, 2] remoteExec ["ace_cookoff_fnc_cookOffServer", 2];
			};
		};
		// TODO - Boring af for non ace gamers, come up with something cool
		[_vehicle, 0] remoteExec ["setVehicleAmmo"];
		[_vehicle, 0] remoteExec ["setFuel"];

		[_vehicle, ["hitengine", gih_vehicleDamage]] remoteExec ["setHitPointDamage"];
		[_vehicle, ["hitturret", gih_vehicleDamage]] remoteExec ["setHitPointDamage"];
		[_vehicle, ["hitgun", gih_vehicleDamage]] remoteExec ["setHitPointDamage"];
	};				
};

true