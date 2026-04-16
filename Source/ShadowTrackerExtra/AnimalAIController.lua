---@meta

---@class FAnimalAIStateData
FAnimalAIStateData = {}


---@class AAnimalAIController: ABasicAIController
---@field TurnVelocity number
---@field SetAirDropTargetInterval number
---@field IgnoreMoveCollisionTimeWhenBlocked number
---@field IgnoreMoveCollisionSetInterval number
---@field FindMovePointLimitArea ULuaArrayHelper<FBox>
local AAnimalAIController = {}

---@param AirDropBoxActor AActor
---@param bIsInWater boolean
function AAnimalAIController:OnAirDropLandGroup(AirDropBoxActor, bIsInWater) end

---@param TreeIndex number
function AAnimalAIController:RunBehaviorTreeWithIndex(TreeIndex) end

---@param CaughtOwner AActor
function AAnimalAIController:SetCaughtOwner(CaughtOwner) end

---@param bHasBorn boolean
function AAnimalAIController:SetHasBorn(bHasBorn) end

---@param TargetLoc FVector
function AAnimalAIController:SetMoveTargetLoc(TargetLoc) end

---@param InBBName string
---@param InFollowTarget AActor
function AAnimalAIController:SetFollowTarget(InBBName, InFollowTarget) end
