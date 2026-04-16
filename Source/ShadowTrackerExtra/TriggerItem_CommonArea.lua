---@meta

---@class ATriggerItem_CommonArea: AUAETriggerArea
---@field UniqueID number
---@field LifeSpan number
---@field TipMsgID number
local ATriggerItem_CommonArea = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function ATriggerItem_CommonArea:OnTriggerEnter(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function ATriggerItem_CommonArea:OnTriggerExit(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
