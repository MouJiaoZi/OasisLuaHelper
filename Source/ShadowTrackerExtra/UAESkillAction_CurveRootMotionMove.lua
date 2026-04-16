---@meta

---@class FSkillAction_CurveRootMotionBlackBoardKey
---@field EnableRotationWarping boolean
---@field UseRotBlackboardKey boolean
---@field UseRotFunction boolean
---@field WarpingRot FRotator
---@field WarpingRotKeyName string
---@field WarpingRotFunction FSkillFuncNameSelector
---@field EnableTranslationWarping boolean
---@field UseActorLocation boolean
---@field UseLocBlackboardKey boolean
---@field UseLocFunction boolean
---@field WarpingLocation FVector
---@field WarpingLocKeyName string
---@field WarpingTargetOffset FVector
---@field AdaptOffsetRelative boolean
---@field WarpingLocFunction FSkillFuncNameSelector
FSkillAction_CurveRootMotionBlackBoardKey = {}


---@class UAESkillAction_CurveRootMotionMove: UUAESkillActionBP
---@field bUseBlackboardCurveName boolean
---@field CurveAssetName string
---@field CurveAssetNameKeyName any
---@field MovementBaseKey FUAEBlackboardKeySelector
---@field bCalcVelocity boolean
---@field MaxSpeedLimit number
---@field bEnableSlideAlongSurface boolean
---@field bNeedConstraintOnNavMesh boolean
---@field bSyncStartTransform boolean
---@field EnableWarping boolean
---@field MotionWarpingKeyNames ULuaMapHelper<string, FSkillAction_CurveRootMotionBlackBoardKey>
---@field CurveEndEventName string
---@field OnlyTriggerOnLocal boolean
local UAESkillAction_CurveRootMotionMove = {}

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UAESkillAction_CurveRootMotionMove:OnMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end
