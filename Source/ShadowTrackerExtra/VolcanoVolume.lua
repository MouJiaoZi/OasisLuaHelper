---@meta

---AVolcanoVolume
---@class AVolcanoVolume: ATriggerBox
local AVolcanoVolume = {}

---Called when OnActorBeginOverlap event is triggered
---@param OverlappedActor AActor
---@param Other AActor
function AVolcanoVolume:OnTriggerEnter(OverlappedActor, Other) end

---Called when OnActorEndOverlap event is triggered
---@param OverlappedActor AActor
---@param Other AActor
function AVolcanoVolume:OnTriggerExit(OverlappedActor, Other) end
