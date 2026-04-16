---@meta

---@class UFlightPlanGenerator: UObject
---@field DropLoc FVector
local UFlightPlanGenerator = {}

---@param ActorComp UActorComponent
function UFlightPlanGenerator:MakeFlightPlan(ActorComp) end

---@param _airplane AAirDropPlane
function UFlightPlanGenerator:OnAirplaneSpawn(_airplane) end

---@param Order FAirDropOrder
function UFlightPlanGenerator:OnAirdropConfigComplete(Order) end

---@param order FAirDropOrder
function UFlightPlanGenerator:OnAirpathGenerateComplete(order) end

---@param Loc FVector
function UFlightPlanGenerator:OnArriveAirdropLoc(Loc) end

function UFlightPlanGenerator:OnFlyaway() end
