---@meta

---@class ETaskDurationType
---@field Immediate number @直接结束
---@field Time number @定时结束
---@field OnMoveModeExit number @Curve移动模式退出时结束
ETaskDurationType = {}


---@class FMotionWarpingBlackBoardKey
---@field EnableRotationWarping boolean
---@field RotationKey FBlackboardKeySelector
---@field EnableTranslationWarping boolean
---@field UseActorLocation boolean
---@field TranslationKey FBlackboardKeySelector
---@field WarpingTargetActorKey FBlackboardKeySelector
---@field WarpingTargetOffset FVector
---@field AdaptOffsetRelative boolean
FMotionWarpingBlackBoardKey = {}


---曲线移动
---@class UBTTask_PxgCurveRootMotion: UBTTaskNode
---@field UseBlackboardCurveAssetNameKey boolean
---@field CurveAssetNameKey FBlackboardKeySelector
---@field CurveAssetName string
---@field MovementBaseKey FBlackboardKeySelector
---@field bCalcVelocity boolean
---@field bEnableSlideAlongSurface boolean
---@field bNeedConstraintOnNavMesh boolean
---@field bSyncStartTransform boolean
---@field EnableWarping boolean
---@field MotionWarpingKeyNames ULuaMapHelper<string, FMotionWarpingBlackBoardKey>
---@field DurationType ETaskDurationType
---@field TaskDuration number
local UBTTask_PxgCurveRootMotion = {}

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UBTTask_PxgCurveRootMotion:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end
