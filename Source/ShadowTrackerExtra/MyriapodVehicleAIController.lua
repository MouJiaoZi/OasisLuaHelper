---@meta

---@class AMyriapodVehicleAIController: ABasicAIController
---@field bPossessRunBehaviorTree boolean
---@field TurnVelocity number
---@field SetAirDropTargetInterval number
---@field IgnoreMoveCollisionTimeWhenBlocked number
---@field IgnoreMoveCollisionSetInterval number
---@field DragOnGroundCheckInterval number
---@field DragOnGroundMaxOverGroundHeight number
---@field DragOnGroundMaxRayLen number
---@field DragOnGroundMaxFloorThickness number
---@field DragOnGroundMaxSubsidenceDepth number
---@field DragOnGroundNavRandomRadius number
---@field FindMovePointLimitArea ULuaArrayHelper<FBox>
local AMyriapodVehicleAIController = {}

---@param AirDropBoxActor AActor
---@param bIsInWater boolean
function AMyriapodVehicleAIController:OnAirDropLandGroup(AirDropBoxActor, bIsInWater) end

---@param TreeIndex number
function AMyriapodVehicleAIController:RunBehaviorTreeWithIndex(TreeIndex) end

---@param CaughtOwner AActor
function AMyriapodVehicleAIController:SetCaughtOwner(CaughtOwner) end

---@param TargetLoc FVector
function AMyriapodVehicleAIController:SetMoveTargetLoc(TargetLoc) end
