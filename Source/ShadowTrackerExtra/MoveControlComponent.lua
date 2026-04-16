---@meta

---@class UMoveStrategyBase: UObject
---@field ObjectInstanceMark_Override boolean
local UMoveStrategyBase = {}


---@class UMoveStrategy_Default: UMoveStrategyBase
---@field bUseDetourCrowd boolean
---@field bUseRVOAvoidance boolean
local UMoveStrategy_Default = {}


---@class UMoveStrategy_Fly: UMoveStrategyBase
---@field FlyHeight number
---@field UpdatePathDistance number
---@field bKeepHeightWhenBorn boolean
---@field bFallingWhenDead boolean
local UMoveStrategy_Fly = {}


---@class UMoveStrategy_CrowdAgent: UMoveStrategyBase
---@field GoalActorLocationTetherDistance number
local UMoveStrategy_CrowdAgent = {}


---@class UMoveStrategy_Static: UMoveStrategyBase
local UMoveStrategy_Static = {}


---@class UMoveControlComponent: UActorComponent, IMoveAbilityInterface, IObjectPoolInterface
---@field MoveTag FGameplayTag
---@field DefaultAvoidanceGroup EGenericAvoidanceGroup
---@field AvoidanceGroupID FNavAvoidanceMask
---@field MaxSpeedAttrName string
---@field DefaultMaxSpeed number
---@field bUseStateSpeed boolean
---@field SmoothClassType UActorComponent
---@field TurningTag FGameplayTag
---@field MinAngleForInterpTurnAround number
---@field DefaultTimeForInterpTurnAround number
local UMoveControlComponent = {}

---@param NewStrategy UMoveStrategyBase
function UMoveControlComponent:ChangeMoveStrategy(NewStrategy) end

---@param StateComp IStateAbilityInterface
---@param State FGameplayTag
function UMoveControlComponent:ReceiveTagStateInterruptEvent(StateComp, State) end

---@param StateComp IStateAbilityInterface
---@param State FGameplayTag
function UMoveControlComponent:ReceiveTagStateExitEvent(StateComp, State) end

---@param Character ACharacter
---@param PrevMovementMode EMovementMode
---@param PreviousCustomMode number
function UMoveControlComponent:HandleCharacterMovementModeChange(Character, PrevMovementMode, PreviousCustomMode) end

function UMoveControlComponent:HandleInterpTurnAroundFinished() end
