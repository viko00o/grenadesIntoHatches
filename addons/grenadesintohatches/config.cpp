// TODO - check how to use pboprefix
class CfgPatches 
{
	class GIH
    {
		name = "Grenades Into Hatches";
		units[] = {};
		weapons[] = {};
		requiredAddons[] = {"CBA_main"};
		author = "Viko";
		url = "";
	};
};

class CfgFunctions
{
	class gih
	{
		class functions
		{
            file = "z\gih\addons\grenadesIntoHatches\functions";
			class applyCrewDamage {};
            class applyVehicleDamage {};
            class crewChance {};
            class vehicleExplosion {};
		};
	};
};

class Extended_PreInit_EventHandlers
{
    class GIH_PreInit
    {
        init = "call compile preprocessFileLineNumbers 'z\gih\addons\grenadesIntoHatches\XEH_preInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
    class GIH_PostInit
    {
        init = "call compile preprocessFileLineNumbers 'z\gih\addons\grenadesIntoHatches\XEH_postInit.sqf'";
    };
};