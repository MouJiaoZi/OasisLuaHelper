---@meta

---@class ATirggerItem_TriggerBox: ATriggerBox
---@field ExtraMsgInfo string
local ATirggerItem_TriggerBox = {}

---@param OverlappedActor AActor
---@param Other AActor
function ATirggerItem_TriggerBox:OnTriggerEnter(OverlappedActor, Other) end

---@param OverlappedActor AActor
---@param other AActor
function ATirggerItem_TriggerBox:OnTriggerExit(OverlappedActor, other) end
