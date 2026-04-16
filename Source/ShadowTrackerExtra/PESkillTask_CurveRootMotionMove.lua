---@meta

---@class FPESkillCurveRootMotionWarpingConfig
---@field EnableRotationWarping boolean
---@field UseRotBlackboardKey boolean
---@field WarpingRot FRotator
---@field WarpingRotKeyName string
---@field EnableTranslationWarping boolean
---@field UseActorLocation boolean
---@field UseLocBlackboardKey boolean
---@field WarpingLocation FVector
---@field WarpingLocKeyName string
---@field WarpingTargetOffset FVector
---@field AdaptOffsetRelative boolean
FPESkillCurveRootMotionWarpingConfig = {}


---@class UPESkillTask_CurveRootMotionMove: UPESkillTaskBase
---@field CurveAssetName string
---@field bCalcVelocity boolean
---@field bEnableSlideAlongSurface boolean
---@field bNeedConstraintOnNavMesh boolean
---@field bSyncStartTransform boolean
---@field EnableWarping boolean
---@field MotionWarpingKeyNames ULuaMapHelper<string, FPESkillCurveRootMotionWarpingConfig>
local UPESkillTask_CurveRootMotionMove = {}
