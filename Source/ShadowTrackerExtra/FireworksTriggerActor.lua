---@meta

---@class FFireworksTriggerPositionInfo
---@field PlayerKey string
---@field PlayPosition FVector
---@field PlayRotation FRotator
FFireworksTriggerPositionInfo = {}


---@class AFireworksTriggerActor: AActor, IPostProcessor_SpawnActorAction
---@field StartFireworksTime number
---@field TotalPlayerPos ULuaMapHelper<string, FVector>
---@field TotalFireworksPos ULuaArrayHelper<FFireworksTriggerPositionInfo>
local AFireworksTriggerActor = {}

function AFireworksTriggerActor:OnRep_StartFireworksTime() end

function AFireworksTriggerActor:CollectAllPlayerInfo() end

function AFireworksTriggerActor:StartShowFireworks() end

function AFireworksTriggerActor:ClientCreateEffect() end

function AFireworksTriggerActor:ComputeFireworksPos() end

---@return FVector
function AFireworksTriggerActor:GetFireworksTriggerPositionByLocalClient() end
