player setCustomAimCoef .0001;
player enableStamina false;
player enableFatigue false;


_randomLoadout = [1, 3] call BIS_fnc_randomInt;

if (_randomLoadout isEqualto 1) then
{
  player addvest "V_PlateCarrierL_CTRG";
  player addUniform "U_B_CombatUniform_mcam";
  player addHeadgear "H_HelmetB";
  player addBackpack "B_AssaultPack_Kerry";
  player addWeapon "srifle_EBR_ARCO_pointer_F";
  player addMagazines ["20Rnd_762x51_Mag", 15];
  player addItem "FirstAidKit";
  player addItem "FirstAidKit";
  player addItem "FirstAidKit";
};

if (_randomLoadout isEqualto 2) then
{
  player addvest "V_Chestrig_rgr";
  player addUniform "U_B_CombatUniform_mcam";
  player addHeadgear "H_HelmetB_black";
  player addBackpack "B_AssaultPack_Kerry";
  player addWeapon "arifle_MX_khk_ACO_Pointer_Snds_F";
  player addMagazines ["30Rnd_65x39_caseless_khaki_mag", 15];
  player addItem "FirstAidKit";
  player addItem "FirstAidKit";
  player addItem "FirstAidKit";
};

if (_randomLoadout isEqualto 3) then
{
  player addvest "V_PlateCarrierL_CTRG";
  player addUniform "U_B_CombatUniform_mcam";
  player addHeadgear "H_HelmetB_camo";
  player addBackpack "B_AssaultPack_Kerry";
  player addWeapon "srifle_LRR_tna_LRPS_F";
  player addMagazines ["7Rnd_408_Mag", 15];
  player addItem "FirstAidKit";
  player addItem "FirstAidKit";
  player addItem "FirstAidKit";
};

//TP to TDM arena
if (team isEqualto 1) then  {
  player setPos [12733.8,3249.73,0.000898123];
};

if (team isEqualto 2) then  {
  player setPos [12644.5,3286.08,0.00205135];
};
