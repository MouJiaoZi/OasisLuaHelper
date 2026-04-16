---@meta

---@class EVehicleSkillType
---@field None number
---@field Teleport number @瞬移
---@field Jump number @跳跃
---@field Drift number @漂移
EVehicleSkillType = {}


---@class EVehicleSkillErrorCode
---@field None number
---@field Success number
---@field CoolDownTimeError number
---@field NoUse number
---@field SystemError number
---@field HaveBlock number
---@field NoFuelOrHP number
---@field InWater number
---@field Fail number
EVehicleSkillErrorCode = {}


---@class UVehicleSkillBaseComponent: UVehicleComponent
---@field VehicleSkillType EVehicleSkillType
---@field bOnlyDriver boolean
local UVehicleSkillBaseComponent = {}

---@param DeltaTime number
function UVehicleSkillBaseComponent:NativeVehicleTick(DeltaTime) end

---@return string
function UVehicleSkillBaseComponent:GetExtraUIPath() end

function UVehicleSkillBaseComponent:ShowExtraUI() end
