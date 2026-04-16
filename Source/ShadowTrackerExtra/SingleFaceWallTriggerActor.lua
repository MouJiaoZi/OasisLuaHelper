---@meta

---@class ASingleFaceWallTriggerActor: ATriggerBox
local ASingleFaceWallTriggerActor = {}

---@param OverlappedActor AActor
---@param Other AActor
function ASingleFaceWallTriggerActor:OnActorOverlapBegin(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param Other AActor
function ASingleFaceWallTriggerActor:OnActorOverlapEnd(OverlappedActor, Other) end
