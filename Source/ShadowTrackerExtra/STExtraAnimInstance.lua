---@meta

---@class FMutexPair
---@field condition UAnimMontage
---@field mutTarget UAnimMontage
FMutexPair = {}


---@class USTExtraAnimInstance: USTExtraAnimInstanceBase
---@field C_SightAngledRotOffset FRotator
---@field C_IsObstructed boolean
---@field C_IsPickingUpItem boolean
---@field SwimRotate FRotator
---@field C_ShouldPauseAnim boolean
---@field C_HoldingShieldAlpha number
---@field OwnerAimRotation FRotator
---@field LastOwnerAimRotation FRotator
---@field mutexByList ULuaArrayHelper<FMutexPair>
local USTExtraAnimInstance = {}

---@param NewFactor number
function USTExtraAnimInstance:SetVelocityZFactor(NewFactor) end

---@param DeltaSeconds number
function USTExtraAnimInstance:PostCacheParamList(DeltaSeconds) end

function USTExtraAnimInstance:DumpAllProperties() end

function USTExtraAnimInstance:DumpAllAnimInstancesInThisWorld() end
