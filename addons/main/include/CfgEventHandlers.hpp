class Extended_PreInit_EventHandlers
{
    class VIK_GIH_PreInit
    {
        init = "call compile preprocessFileLineNumbers 'vik\gih\main\XEH_preInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
    class VIK_GIH_PostInit
    {
        init = "call compile preprocessFileLineNumbers 'vik\gih\main\XEH_postInit.sqf'";
    };
};