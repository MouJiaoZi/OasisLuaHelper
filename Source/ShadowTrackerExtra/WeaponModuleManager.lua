---@meta

---@class EGameModeWeaponModuleSchemeType
---@field EGameModeWeaponModuleSchemeType_None number @无改装
---@field EGameModeWeaponModuleSchemeType_Default number @默认改装方案
---@field EGameModeWeaponModuleSchemeType_1 number @改装方案1
---@field EGameModeWeaponModuleSchemeType_2 number @改装方案2
---@field EGameModeWeaponModuleSchemeType_3 number @改装方案3
---@field EGameModeWeaponModuleSchemeType_4 number @改装方案4
---@field EGameModeWeaponModuleSchemeType_5 number @改装方案5
---@field EGameModeWeaponModuleSchemeType_6 number @改装方案6
---@field EGameModeWeaponModuleSchemeType_7 number @改装方案7
---@field EGameModeWeaponModuleSchemeType_8 number @改装方案8
EGameModeWeaponModuleSchemeType = {}


---@class FShootWeaponModifierConfig
---@field Ids ULuaArrayHelper<number>
FShootWeaponModifierConfig = {}


---@class FGameModeWeaponModuleSchemeConfig
---@field GameModeNameList ULuaArrayHelper<string>
---@field SchemeTypeAndNameMap ULuaMapHelper<EGameModeWeaponModuleSchemeType, string>
---@field DefaultSchemeType EGameModeWeaponModuleSchemeType
FGameModeWeaponModuleSchemeConfig = {}


---武器模组管理器
---@class UWeaponModuleManager: UObject
---@field MgrClassPath string
---@field WeaponMuduleConfigTablePath string
---@field WeaponAttrConfigTablePath string
---@field GameModeWeaponModuleSchemeConfigList ULuaArrayHelper<FGameModeWeaponModuleSchemeConfig>
---@field ShootWeaponADSTimeConfig ULuaMapHelper<number, FShootWeaponModifierConfig>
---@field ShootWeaponADSFireAnimAlphaRateConfig ULuaMapHelper<number, FShootWeaponModifierConfig>
---@field ShootWeaponNOTADSFireAnimAlphaRateID number
local UWeaponModuleManager = {}

---@param Player ASTExtraBaseCharacter
---@param bEnable boolean
function UWeaponModuleManager:DynamicEnablePlayerWeaponModuleSystemOnServer(Player, bEnable) end

---@param Weapon ASTExtraWeapon
function UWeaponModuleManager:InitWeaponModuleSystemOnServer(Weapon) end

---@param Weapon ASTExtraWeapon
---@param ModuleAttrItemID number
---@param MulVal number
---@return number
function UWeaponModuleManager:GenerateAttrModifyItemIDByWeaponModuleAttrItemID(Weapon, ModuleAttrItemID, MulVal) end

---@param Weapon ASTExtraWeapon
---@param bEnable boolean
function UWeaponModuleManager:EnableWeaponModuleModificationSystemOnServerAsWeaponExist(Weapon, bEnable) end

---@param Weapon ASTExtraWeapon
---@param bEnable boolean
function UWeaponModuleManager:EnableWeaponModuleModificationSystemOnServer(Weapon, bEnable) end

---@param Weapon ASTExtraWeapon
---@param OnDestroy boolean
function UWeaponModuleManager:RemoveWeaponAllModifies(Weapon, OnDestroy) end

---@param Player ASTExtraBaseCharacter
---@param Type EGameModeWeaponModuleSchemeType
function UWeaponModuleManager:SwitchModificationScheme(Player, Type) end

---@param ShootWeapon ASTExtraWeapon
---@param ScopeID number
function UWeaponModuleManager:CalcShootWeaponADSTime(ShootWeapon, ScopeID) end

---@param ShootWeapon ASTExtraWeapon
---@param ScopeID number
function UWeaponModuleManager:CalcShootWeaponFireAnimAlphaRate(ShootWeapon, ScopeID) end
