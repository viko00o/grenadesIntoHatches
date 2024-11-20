// TODO - Find a better way to know if grenade is explosive
_gih_grenades = 
[
    //vanilla
    "HandGrenade",
    "MiniGrenade",
    //TODO - sog
    //TODO - gm
    //TODO - iron courtain
    //rhs
    "rhs_mag_f1",
    "rhsgref_mag_rkg3em",
    "rhs_grenade_m1939e_f_mag",
    "rhs_grenade_mkii_mag",
    "rhssaf_mag_br_m75",
    "rhssaf_mag_brk_m79",
    "rhssaf_mag_brz_m88",
    "rhs_mag_rgd5",
    "rhs_mag_rgn",
    "rhs_mag_rgo",
    "rhs_mag_m67",
    "rhs_mag_an_m14_th3",
    "rhs_charge_tnt_x2_mag",
    "rhs_charge_sb3kg_mag",
    "rhs_grenade_sthgr24_mag",
    "rhs_grenade_sthgr24_heerfrag_mag",
    "rhs_grenade_sthgr24_x7bundle_mag",
    "rhs_grenade_sthgr43_mag",
    "rhs_grenade_sthgr43_heerfrag_mag",
    "rhs_grenade_khattabka_vog17_mag",
    "rhs_grenade_khattabka_vog25_mag",
    "rhssaf_mag_br_m84",
    //TODO - 3cb
    //cup
    "CUP_HandGrenade_L109A1_HE",
    "CUP_HandGrenade_L109A2_HE",
    "CUP_HandGrenade_RGD5",
    "CUP_HandGrenade_RGO",
    "CUP_HandGrenade_M67"
    //TODO - ifa
    //TODO - faces of war
    //TODO - Northen front
    //TODO - east asia war
];

// TODO - Find a better way of making this work
_gih_broken =
[
    "rhssaf_mag_brk_m79",
    "rhs_mag_rgn",
    "rhs_mag_rgo",
    "rhsgref_mag_rkg3em"
];

[
    "gih_gihEnabled",
    "CHECKBOX",
    "Enable System",
    "Grenades Into Hatches",
    true,
    true
] call CBA_fnc_addSetting;

[
    "gih_cookoffChance",
    "SLIDER",
    "Vehicle cookoff chance",
    "Grenades Into Hatches",
    [0, 1, 0.9],
    true,
    {  
        params ["_value"];
        _cookoff = _value;
        _noCookoff = (1 - _cookoff);
        gih_cookoffChance =
        [
            1, (_cookoff),
            0, (_noCookoff)
        ];
    }
] call CBA_fnc_addSetting;

[
    "gih_validVehicleTypes",
    "EDITBOX",
    "Valid vehicle types",
    "Grenades Into Hatches",
    '["Tank","Wheeled_APC_F"]',
    true,
    {  
        params ["_value"];
        gih_validVehicleTypes = parseSimpleArray _value;
    }
] call CBA_fnc_addSetting;

[
    "gih_whitelistedVehicles",
    "EDITBOX",
    "Whitelisted vehicles",
    "Grenades Into Hatches",
    '["exampleClassName"]',
    true,
    {  
        params ["_value"];
        gih_whitelistedVehicles = parseSimpleArray _value;
    }
] call CBA_fnc_addSetting;

[
    "gih_blacklistedVehicles",
    "EDITBOX",
    "Blacklisted vehicles",
    "Grenades Into Hatches",
    '["exampleClassName"]',
    true,
    {  
        params ["_value"];
        gih_blacklistedVehicles = parseSimpleArray _value;
    }
] call CBA_fnc_addSetting;

[
    "gih_vehicleDamage",
    "SLIDER",
    "Vehicle damage modifier",
    "Grenades Into Hatches",
    [0, 1, 1.0],
    true
] call CBA_fnc_addSetting;

[
    "gih_crewDamagePool",
    "SLIDER",
    "Chance of crew fatal damage",
    "Grenades Into Hatches",
    [0, 1, 0.9],
    true,
    {  
        params ["_value"];
        gih_crewDamagePool =
        [
            1,   (_value),
            0.9, 0.3,
            0.7, 0.1,
            0.3, 0.001,
            0,   0.0001
        ];
    }
] call CBA_fnc_addSetting;

[
    "gih_getOutChanceEnabled",
    "CHECKBOX",
    "Enable chance for AI to get out",
    "Grenades Into Hatches",
    true,
    true
] call CBA_fnc_addSetting;

[
    "gih_getOutChances",
    "SLIDER",
    "Get out chance for the crew",
    "Grenades Into Hatches",
    [0, 1, 0.2],
    true,
    {  
        params ["_value"];
        _getOutChance = _value;
        _noGetOutChance = (1 - _getOutChance);
        gih_getOutChances =
        [
            1, (_getOutChance),
            0, (_noGetOutChance)
        ];
    }
] call CBA_fnc_addSetting;

[
    "gih_validGrenades",
    "EDITBOX",
    "Valid grenades",
    "Grenades Into Hatches",
    str(_gih_grenades),
    true
] call CBA_fnc_addSetting;

[
    "gih_grenadesBroken",
    "EDITBOX",
    "Broken grenades",
    "Grenades Into Hatches",
    str(_gih_broken),
    true
] call CBA_fnc_addSetting;

[
    "gih_hasAceCO",
    "CHECKBOX",
    "Use ace cookoff",
    "Grenades Into Hatches",
    false,
    true
] call CBA_fnc_addSetting;