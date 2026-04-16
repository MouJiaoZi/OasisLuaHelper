---@meta

---@class FNetReplicateModifiers
---@field RepItems ULuaArrayHelper<FItemDefineID>
FNetReplicateModifiers = {}


---@class UReplicateModifiersComponent: UActorComponent
---@field NetReplicateModifiers FNetReplicateModifiers
local UReplicateModifiersComponent = {}

---@param RepItems ULuaArrayHelper<FItemDefineID>
function UReplicateModifiersComponent:ReplicateItemModifiers(RepItems) end

function UReplicateModifiersComponent:OnRep_Modifiers() end
