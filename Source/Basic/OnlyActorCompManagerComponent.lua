---@meta

---@class UOnlyActorCompManagerComponent: UActorComponent
---@field CacheComponents ULuaMapHelper<string, UOnlyActorComponent>
---@field CacheUpdateComponents ULuaArrayHelper<UOnlyActorComponent>
---@field CustomTickTaskManager FCustomTickTaskManager
local UOnlyActorCompManagerComponent = {}

---@param TickItem UActorComponent
function UOnlyActorCompManagerComponent:AddToTickComponentList(TickItem) end

---@param TickItem UActorComponent
function UOnlyActorCompManagerComponent:RemoveFromTickComponentList(TickItem) end

---@param Comp UActorComponent
---@return boolean
function UOnlyActorCompManagerComponent:IsExistTickComponent(Comp) end
