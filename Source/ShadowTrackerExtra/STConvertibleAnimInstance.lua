---@meta

---敞篷车专用的动画蓝图
---@class USTConvertibleAnimInstance: USTVehicleAnimInstance
---@field StateSwitchTime ULuaMapHelper<EHoodState, number>
---@field StateMachineName string
---@field ClosedStateName string
---@field OpenedStateName string
---@field ClosingStateName string
---@field OpeningStateName string
---@field HoodAnimFixThreshold number
---@field RootBoneName string
---@field BodyShapeIndex number
---@field HoodCollisionIndexArray ULuaArrayHelper<number>
---@field DetectInterval number
---@field EnableHoodContainerCollision boolean
---@field HoodContainerBoneName string
---@field HoodContainerCollisionTransformPosition boolean
---@field HoodContainerBoneOriginPosition FVector
---@field HoodContainerCollisionUseNewRotation boolean
---@field HoodContainerBoneOriginRotation FRotator
---@field HoodContainerCollisionShapeTransformConfig FHoodContainerCollisionShapeTransformConfig
---@field HoodContainerShapeIndex number
---@field ShouldCleanBulletHoles boolean
---@field ShouldHandleStop boolean
---@field HoodState EHoodState
---@field HoodAnimCustomPosition number
---@field GlobalPlayRate number
---@field CurrentHoodAudioPlayingID number
local USTConvertibleAnimInstance = {}

---@param HoodStateWrapper FHoodStateWrapper
function USTConvertibleAnimInstance:UpdateHoodAnimState(HoodStateWrapper) end

---@param TimeDiff number
function USTConvertibleAnimInstance:FixHoodAnimState(TimeDiff) end

---@param Time number
function USTConvertibleAnimInstance:UpdateHoodAudio(Time) end

function USTConvertibleAnimInstance:StopHoodAudio() end

function USTConvertibleAnimInstance:BPPreClearAnimScriptInstance() end
