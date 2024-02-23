/* 

hint str (civmodule_1 getVariable ["#active",false]);
 civmodule_1 setVariable ["#active",false];

 [this, true] call GRAD_civPartisans_fnc_equip;

*/

params ["_unit", ["_armed", false]];

if (!isServer) exitWith {};

private _uniform = selectRandom [
	"UK3CB_CHC_C_U_CIT_01",
	"UK3CB_CHC_C_U_CIT_02",
	"UK3CB_CHC_C_U_CIT_03",
	"UK3CB_CHC_C_U_CIT_04",
	"UK3CB_CHC_C_U_CIT_05",
	"UK3CB_CHC_C_U_ACTIVIST_01",
	"UK3CB_CHC_C_U_ACTIVIST_02",
	"UK3CB_CHC_C_U_ACTIVIST_03",
	"UK3CB_CHC_C_U_ACTIVIST_04",
	"UK3CB_CHC_C_U_COACH_01",
	"UK3CB_CHC_C_U_COACH_02",
	"UK3CB_CHC_C_U_COACH_03",
	"UK3CB_CHC_C_U_COACH_04",
	"UK3CB_CHC_C_U_COACH_05",
	"UK3CB_CHC_C_U_WORK_01",
	"UK3CB_CHC_C_U_WORK_02",
	"UK3CB_CHC_C_U_WORK_03",
	"UK3CB_CHC_C_U_CIT_05",
	"UK3CB_CHC_C_U_HIKER_01",
	"UK3CB_CHC_C_U_HIKER_02",
	"UK3CB_CHC_C_U_HIKER_03",
	"UK3CB_CHC_C_U_HIKER_04",
	"UK3CB_ADE_O_U_02",
	"UK3CB_ADE_O_U_02_D",
	"UK3CB_ADC_C_Hunter_U_06",
	"UK3CB_ADC_C_Hunter_U_07",
	"UK3CB_ADC_C_Hunter_U_08",
	"UK3CB_ADC_C_Hunter_U_09",
	"UK3CB_ADC_C_Hunter_U_10",
	"UK3CB_NAP_B_U_Pilot_BLK",
	"UK3CB_NAP_B_U_Pilot_FLK",
	"UK3CB_NAP_B_U_Pilot_FLORA",
	"UK3CB_CHC_C_U_VILL_01",
	"UK3CB_CHC_C_U_VILL_02",
	"UK3CB_CHC_C_U_VILL_03",
	"UK3CB_CHC_C_U_VILL_04",
	"UK3CB_ION_B_U_SF_Uniform_SHIRT_01_WDL",
	"UK3CB_ION_B_U_SF_Uniform_SHIRT_02_WDL",
	"UK3CB_ION_B_U_SF_Uniform_SHIRT_03_WDL",
	"UK3CB_ION_B_U_SF_Uniform_SHIRT_04_WDL",
	"UK3CB_ION_B_U_SF_Uniform_SHIRT_05_WDL",
	"UK3CB_ION_B_U_SF_Uniform_SHIRT_06_WDL",
	"UK3CB_ION_B_U_SF_Uniform_SHIRT_07_WDL"
];

private _headgear = selectRandom [
	"H_Cap_blu",
	"H_Cap_red",
	"UK3CB_H_Cap_Back_Earpiece_ION_DES",
	"UK3CB_H_Cap_Back_Earpiece_ION_BLK",
	"UK3CB_H_Radio_Cap_Back_ION_BLK",
	"UK3CB_H_Cap_Back_ION_BLK",
	"UK3CB_H_Earpiece",
	"UK3CB_LSM_B_H_M88_Field_Cap_KHK",
	"UK3CB_ANP_B_H_Patrolcap_BLU",
	"UK3CB_H_Safari_Hat_Brown",
	"UK3CB_H_Shemag_grey",
	"UK3CB_TKP_B_H_Beret",
	"UK3CB_H_WideBrim_Hat",
	"UK3CB_H_Ushanka_Cap_01",
	"H_Booniehat_mgrn",
	"gm_ge_headgear_hat_90_flk",
	"gm_xx_headgear_headwrap_crew_01_oli",
	"gm_xx_headgear_headwrap_01_moro",
	"gm_xx_headgear_headwrap_01_m84",
	"gm_xx_headgear_headwrap_01_oli",
	"rhs_beanie_green",
	"rhs_beanie",
	"rhs_beanie_green",
	"rhs_beanie",
	"rhs_Booniehat_flora",
	"rhs_fieldcap_m88_ttsko_vdv_back",
	"rhs_ushanka",
	"rhs_headband"
];

if (_armed) then {
	_unit setUnitLoadout [
		["rhs_weap_akms","rhs_acc_dtkakm","","",["rhs_30Rnd_762x39mm",30],[],""],[],[],
		[_uniform,[["ACE_fieldDressing",1],["ACE_packingBandage",1],["ACE_morphine",1],["ACE_tourniquet",1],["rhs_30Rnd_762x39mm",1,30]]],["V_TacVest_blk",[["rhs_30Rnd_762x39mm",3,30],["rhs_mag_f1",1,1]]],[],
		_headgear,"G_Bandanna_oli",[],["ItemMap","","ItemRadio","ItemCompass","ItemWatch",""]
	];

	if (random 2 > 0.7) then {
		_unit addWeapon "rhs_weap_M136";
		_unit addMagazines ["rhs_m136_mag", 1];
	};
} else {
	_unit setUnitLoadout [[],[],[],[_uniform,[]],[],[],_headgear,"",[],["","","","","",""]];
};