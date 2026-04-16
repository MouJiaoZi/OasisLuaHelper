---@meta

---@class AShrineActivityActorBase: AActivityBaseActor, IFourShrineEventInterface
---@field BeastType EBeastType
---@field ShrineActorType EShrineActorType
local AShrineActivityActorBase = {}

---@param NewEvent EShrineEvent
function AShrineActivityActorBase:DispatchEvent(NewEvent) end

---@param NewEvent EShrineEvent
function AShrineActivityActorBase:DispatchEvent_BP(NewEvent) end
