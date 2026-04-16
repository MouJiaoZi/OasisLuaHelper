---@meta

---这个是载具的动画蓝图
---@class USTVehicleAnimInstance: UVehicleAnimInstance
---@field ForceUpdateAnimation boolean
---@field RotationInputDir FVector
---@field DriverMoveDir number
---@field MoveInput FVector
---@field MoveInputExt FVector
---@field MoveInputExtInterpSpeed number
---@field LeftWheelDir number
---@field RightWheelDir number
---@field BackLeftWheelDir number
---@field BackRightWheelDir number
---@field HelicopterEngineStarted boolean
---@field HelicopterStartAnimationRate number
---@field HelicopterWingStartFinish boolean
---@field HelicopterWingEndFinish boolean
---@field HelicopterMoveStartUp boolean
---@field HelicopterMoveStartUpStop boolean
---@field HelicopterIsinIdle boolean
---@field MotorcycleHandleStand boolean
---@field MotorcycleHandleDirOrg FRotator
---@field MotorcycleHandleBoneName string
---@field MotorcycleHandleMaxAngle number
---@field RawSpeed number
---@field bTickMotorbikeKickstand boolean
---@field bUseInvertedKickstandAlpha boolean
---@field KickstandOffRotation FRotator
---@field KicstandInterpSpeed number
---@field KickstandAlpha number
---@field MotorSteerRoll number
---@field CurShouldUpdateAnimDelayFrameCount number
---@field WindowsAnimSpeed ULuaArrayHelper<number>
---@field fFrontWheelAxleYawAngle number
---@field fFrontWheelAxlePitchAngle number
---@field RotSpeedLeft FRotator
---@field RotSpeedRight FRotator
---@field SpeedMin number
---@field SpeedMax number
---@field RotRPMLeft FRotator
---@field RotRPMRight FRotator
---@field RPMMin number
---@field RPMMax number
---@field TickIndicator boolean
---@field MPHNeedleRot FRotator
---@field RPMNeedleRot FRotator
---@field TickViewCameraRotation boolean
---@field ViewCameraRotation FRotator
local USTVehicleAnimInstance = {}

function USTVehicleAnimInstance:BPPreClearAnimScriptInstance() end

---@param isShow boolean
function USTVehicleAnimInstance:UpdateHelicopterEffect(isShow) end

---设置载具的SkMesh能否Update和Tick
---@param InCanUpdate boolean
function USTVehicleAnimInstance:SetCanSkeletonUpdate(InCanUpdate) end
