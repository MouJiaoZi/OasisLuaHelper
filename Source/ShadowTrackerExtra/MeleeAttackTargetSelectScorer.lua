---@meta

---@class UTargetSelectConditionBase: UObject
---@field Weight number
local UTargetSelectConditionBase = {}


---@class UTargetSelectCondition_BlueprintBase: UTargetSelectConditionBase
local UTargetSelectCondition_BlueprintBase = {}

---@param OwnerActor AActor
---@param CandidateActor AActor
---@param ConditionScore number
---@return boolean
function UTargetSelectCondition_BlueprintBase:BPCanSelect(OwnerActor, CandidateActor, ConditionScore) end


---@class UTargetSelectCondition_Distance: UTargetSelectConditionBase
---@field MinDistanceSquared number
---@field MaxDistanceSquared number
local UTargetSelectCondition_Distance = {}

---@param OwnerActor AActor
---@param CandidateActor AActor
---@return number
function UTargetSelectCondition_Distance:GetMaxDistanceSquared(OwnerActor, CandidateActor) end


---@class UTargetSelectCondition_Angle: UTargetSelectConditionBase
---@field RootOffset FVector
local UTargetSelectCondition_Angle = {}


---@class UTargetSelectCondition_Obstacle: UTargetSelectConditionBase
---@field TraceBoxHalfExtent FVector
---@field bCheckSmoke boolean
---@field SmokeChannel ECollisionChannel
local UTargetSelectCondition_Obstacle = {}


---@class UTargetSelectCondition_Mob: UTargetSelectConditionBase
---@field MobScoreScale number
local UTargetSelectCondition_Mob = {}


---@class UTargetSelectCondition_DynamicState: UTargetSelectConditionBase
---@field Tags FGameplayTagContainer
local UTargetSelectCondition_DynamicState = {}


---@class UTargetSelectCondition_LineTrace: UTargetSelectConditionBase
---@field StartTraceOffset FVector
---@field LineTraceChannels ULuaArrayHelper<ECollisionChannel>
local UTargetSelectCondition_LineTrace = {}


---@class UMeleeAttackTargetSelectScorer: UObject
---@field SelectConditionList ULuaArrayHelper<UTargetSelectConditionBase>
local UMeleeAttackTargetSelectScorer = {}
