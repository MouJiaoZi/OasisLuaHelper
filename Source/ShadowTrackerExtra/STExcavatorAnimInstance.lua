---@meta

---挖掘机载具的动画蓝图
---@class USTExcavatorAnimInstance: USTVehicleAnimInstance
---@field LocalControlExtendLerpSpeed number
---@field LocalControlRollLerpSpeed number
---@field LocalControlPitchLerpSpeed number
---@field LocalControlYawLerpSpeed number
---@field RepLerpSpeed number
---@field CurForearmRotator FRotator
---@field CurUpperarmRotator FRotator
---@field CurLeftBehindClawRotator FRotator
---@field CurRightBehindClawRotator FRotator
---@field CurLeftFrontLegRotator FRotator
---@field CurRightFrontLegRotator FRotator
---@field CurBucketRotator FRotator
---@field CurLeftBehindLegRotator FRotator
---@field CurRightBehindLegRotator FRotator
---@field CurForearmLocOffset number
---@field ShouldBucketIK boolean
local USTExcavatorAnimInstance = {}

---@param CurRot FRotator
---@param TargetRot FRotator
---@param DeltaTime number
---@param RotType EMachanicalRotType
---@param PoseType EExcavatorPoseType
---@return FRotator
function USTExcavatorAnimInstance:LerpPose(CurRot, TargetRot, DeltaTime, RotType, PoseType) end

---@param Cur number
---@param Tar number
---@return number
function USTExcavatorAnimInstance:HandleTargetFloat(Cur, Tar) end

---@param Cur number
---@return number
function USTExcavatorAnimInstance:SimpleFloat(Cur) end

---@return boolean
function USTExcavatorAnimInstance:GetShouldBucketIK() end
