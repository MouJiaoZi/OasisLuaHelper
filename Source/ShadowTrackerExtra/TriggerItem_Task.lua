---@meta

---@class ATriggerItem_Task: ATriggerSphere
---@field OwningTeamID number
---@field TriggerItemType ETaskTriggerItemType @Trigger item type ETTIT_DoEmote : a trigger volume for doing emote ETTIT_DeathBox : a trigger volume for death box
---@field LifeSpan number @Life span for death box trigger
local ATriggerItem_Task = {}

---Called when OnActorBeginOverlap event is triggered
---@param OverlappedActor AActor
---@param Other AActor
function ATriggerItem_Task:OnTriggerEnter(OverlappedActor, Other) end

---Called when OnActorEndOverlap event is triggered
---@param OverlappedActor AActor
---@param Other AActor
function ATriggerItem_Task:OnTriggerExit(OverlappedActor, Other) end
