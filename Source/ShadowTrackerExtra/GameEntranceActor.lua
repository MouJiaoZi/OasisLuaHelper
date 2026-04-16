---@meta

---@class AGameEntranceActor: AUAERegionActor
---@field Index number
---@field MainModeID number
---@field ModeID string
---@field ModeID_Num number
---@field UniqueID string
---@field bInArea boolean
local AGameEntranceActor = {}

---@param bBegin boolean
---@return boolean
function AGameEntranceActor:TrigEntranceFunction(bBegin) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
---@param bFromSweep boolean
---@param SweepResult FHitResult
function AGameEntranceActor:OnTriggerSphereBeginOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex, bFromSweep, SweepResult) end

---@param OverlappedComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param OtherBodyIndex number
function AGameEntranceActor:OnTriggerSphereEndOverlap(OverlappedComponent, OtherActor, OtherComp, OtherBodyIndex) end

---@param EntranceManagerComponent UEntranceManagerComponent
function AGameEntranceActor:RefreshState(EntranceManagerComponent) end
