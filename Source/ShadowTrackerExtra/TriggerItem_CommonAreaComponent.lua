---@meta

---@class UTriggerItem_CommonAreaComponent: USphereComponent
---@field UniqueID number
---@field TipMsgID number
---@field bOnlyTriggerTipOnce boolean
---@field EventID number
local UTriggerItem_CommonAreaComponent = {}

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function UTriggerItem_CommonAreaComponent:OnTriggerEnter(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function UTriggerItem_CommonAreaComponent:OnTriggerExit(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end
