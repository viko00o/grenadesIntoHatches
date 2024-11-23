class Extended_PreInit_EventHandlers
{
    class PREFIX##_PreInit
    {
        init = "call compile preprocessFileLineNumbers 'vik\gih\main\XEH_preInit.sqf'";
    };
};

class Extended_PostInit_EventHandlers
{
    class PREFIX##_PostInit
    {
        init = "call compile preprocessFileLineNumbers 'vik\gih\main\XEH_postInit.sqf'";
    };
};