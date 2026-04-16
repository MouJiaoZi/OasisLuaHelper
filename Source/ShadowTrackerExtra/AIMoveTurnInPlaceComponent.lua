---@meta

---@class FAIMoveTurnInPlaceConfig
---@field StartAngle number
---@field TurnLeftAnimMontageSoftPtr UAnimMontage
---@field TurnRightAnimMontageSoftPtr UAnimMontage
---@field TurnAnimLength number
---@field TurnFinishWaitTime number
FAIMoveTurnInPlaceConfig = {}


---@class FAIMoveTurnInPlaceCurveRootMotionConfig
---@field AngleRangeStart number
---@field AngleRangeEnd number
---@field CurveAssetName string
---@field SyncStartTransform boolean
---@field EnableWarping boolean
---@field MotionWarpingKeyName string
FAIMoveTurnInPlaceCurveRootMotionConfig = {}


---@class UAIMoveTurnInPlaceComponent: UOnlyActorComponent
---@field bUseCurveRootMotion boolean
---@field MoveTurnInPlaceConfig ULuaArrayHelper<FAIMoveTurnInPlaceConfig>
---@field MoveTurnInPlaceCurveRootMotionConfig ULuaArrayHelper<FAIMoveTurnInPlaceCurveRootMotionConfig>
---@field MoveTurnInPlaceCurveRootMotionMinAngle number
local UAIMoveTurnInPlaceComponent = {}

---@param NewConfig ULuaArrayHelper<FAIMoveTurnInPlaceCurveRootMotionConfig>
function UAIMoveTurnInPlaceComponent:SetMoveTurnInPlaceCurveRootMotionConfig(NewConfig) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UAIMoveTurnInPlaceComponent:OnMovementModeChanged(Character, PrevMovementMode, PreviousCustomMode) end
