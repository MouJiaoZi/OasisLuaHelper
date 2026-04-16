---@meta

---@class USTDragonCartAnimInstance: USTVehicleAnimInstance
---@field BoneOneLocalRotation FRotator
---@field BoneTwoLocalRotation FRotator
---@field BoneThreeLocalRotation FRotator
---@field BoneDelayTimeOne number
---@field BoneDelayTimeTwo number
---@field BoneDelayTimeThree number
---@field RecordCount number
---@field FrameJumpDeltaTime number
---@field BoosterRotationPitchFactor number
---@field BoosterRotationSpeedFactor number
---@field DragonMouthPitchFactor number
---@field BoosterOnePitch number
---@field BoosterTwoPitch number
---@field BoosterThreePitch number
---@field DragonMouthPitch number
local USTDragonCartAnimInstance = {}

---@param PreIndex number
---@return FRotator
function USTDragonCartAnimInstance:GetRotator(PreIndex) end
