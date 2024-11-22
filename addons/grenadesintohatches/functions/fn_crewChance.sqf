params
[
	["_vehicle", objNull]
];

// TODO - Add a waypoint so mf dont stay near the explosion and fire
if (count(crew _vehicle) > 0) then
{
	{
		if (selectRandomWeighted gih_getOutChances == 1) then
		{
			[_x] orderGetIn false; 
		}
	} forEach crew _vehicle;
};

true