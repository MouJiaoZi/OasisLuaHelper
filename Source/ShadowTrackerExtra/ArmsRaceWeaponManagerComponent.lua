---@meta

---@class FArmsRaceWeaponGroupWeightConfig
---@field GroupID number
---@field Weight number
---@field SpecialGroup boolean
FArmsRaceWeaponGroupWeightConfig = {}


---@class UArmsRaceWeaponManagerComponent: UActorComponent
---@field ArmsRaceWeaponConfigTableName string
---@field ArmsRaceWeaponGroupWeightConfigs ULuaArrayHelper<FArmsRaceWeaponGroupWeightConfig>
---@field bSelectByGameModeID boolean
local UArmsRaceWeaponManagerComponent = {}

---@param InWeaponGroupID number
function UArmsRaceWeaponManagerComponent:InitWeaponConfigDataByGroupID(InWeaponGroupID) end

---生化团竞合入, feishen, 20200828
---@param Player AController
---@param WeaponLevel number
function UArmsRaceWeaponManagerComponent:GenerateArmsRaceWeapon(Player, WeaponLevel) end

---@return boolean
function UArmsRaceWeaponManagerComponent:IsSpecialWeaponGroup() end

---@return number
function UArmsRaceWeaponManagerComponent:GetSelectWeaponListNum() end

---@param WeaponItemID number
---@return number
function UArmsRaceWeaponManagerComponent:GetSelectWeaponCount(WeaponItemID) end
