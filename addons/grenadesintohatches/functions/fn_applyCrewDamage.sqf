params
[
	["_vehicle", objNull]
];

// TODO - Add ace medical to this
if (count(crew _vehicle) > 0) then 
{
	{
		_x setDamage (selectRandomWeighted gih_crewDamagePool)
	} forEach crew _vehicle
};

true