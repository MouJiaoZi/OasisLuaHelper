---@meta

---@class UCustomTickTaskComponent: UActorComponent
---@field NeedTickComponentList ULuaArrayHelper<FCustomTickItem>
local UCustomTickTaskComponent = {}

---@param TickItem UActorComponent
function UCustomTickTaskComponent:AddToTickComponentList(TickItem) end

---@param TickItem UActorComponent
function UCustomTickTaskComponent:RemoveFromTickComponentList(TickItem) end

---@param Comp UActorComponent
---@return boolean
function UCustomTickTaskComponent:IsExistTickComponent(Comp) end
