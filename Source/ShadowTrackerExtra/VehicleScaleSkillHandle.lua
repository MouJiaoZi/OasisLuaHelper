---@meta

---@class UVehicleScaleSkillHandle: UVehicleSkillBaseHandle
---@field DefaultScaleMin number
---@field DefaultScaleMax number
---@field bEnableMassScale boolean
---@field bEnableModifyWheelMovementMass boolean
---@field bEnableModifyWheelMovementTorque boolean
---@field VehicleScale number
---@field StorageOriMass number
---@field StorageCharacterImpactOffsetDistSquared number
---@field StorageMeshMassOffset FVector
---@field bHasStorageMeshMassOffset boolean
---@field StorageWheeledVehicleMass number
local UVehicleScaleSkillHandle = {}

---@param NewScale number
function UVehicleScaleSkillHandle:SetVehicleScale(NewScale) end

---@param OldScale number
function UVehicleScaleSkillHandle:OnRep_VehicleScale(OldScale) end

---@param ActorScale number
---@return number
function UVehicleScaleSkillHandle:CalculateMassScale(ActorScale) end

---@param OldScale number
---@param NewScale number
function UVehicleScaleSkillHandle:OnVehicleScaleChanged(OldScale, NewScale) end

---@param ActorScale number
function UVehicleScaleSkillHandle:ModifyWheelVehicleMassScale(ActorScale) end

---@param ActorScale number
function UVehicleScaleSkillHandle:ModifyWheelVehicleTorqueScale(ActorScale) end

---@return number
function UVehicleScaleSkillHandle:GetVehicleSpringStrengthScale() end
