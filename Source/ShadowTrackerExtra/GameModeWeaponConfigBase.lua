---@meta

---@class FCustomGamePhaseIDListItem
---@field IDList ULuaArrayHelper<number>
---@field ForbidDropMsgID number
FCustomGamePhaseIDListItem = {}


---GameMode上武器相关配置
---@class UGameModeWeaponConfigBase: UDataAsset
---@field WeaponIDAndDamageOverrideMap ULuaMapHelper<number, number>
---@field CustomGamePhaseToForbidDropWeaponConfigMap ULuaMapHelper<string, FCustomGamePhaseIDListItem>
---@field CustomGamePhaseToForbidDropCreateWeaponWrapperConfigMap ULuaMapHelper<string, FCustomGamePhaseIDListItem>
---@field CurrentCustomGamePhase string
local UGameModeWeaponConfigBase = {}

---@param Weapon ASTExtraWeapon
---@param ID number
function UGameModeWeaponConfigBase:OverrideWeaponConfigProperties(Weapon, ID) end

---@param ID number
---@param OldVal number
---@return number
function UGameModeWeaponConfigBase:GetOverrideDamageByWeaponID(ID, OldVal) end

---@param NewGamePhase string
---@param bEnter boolean
function UGameModeWeaponConfigBase:EnterOrLeaveCustomGamePhase(NewGamePhase, bEnter) end

---@param WeaponID number
---@return boolean
function UGameModeWeaponConfigBase:CheckForbidDropWeapon(WeaponID) end

---@param WeaponID number
---@return boolean
function UGameModeWeaponConfigBase:BPCheckForbidDropWeapon(WeaponID) end

---@return number
function UGameModeWeaponConfigBase:GetForbidDropWeaponMsgID() end

---@param WeaponID number
---@return boolean
function UGameModeWeaponConfigBase:CheckForbidDropCreateWeaponWrapper(WeaponID) end

---@param WeaponID number
---@return boolean
function UGameModeWeaponConfigBase:BPCheckForbidDropCreateWeaponWrapper(WeaponID) end
