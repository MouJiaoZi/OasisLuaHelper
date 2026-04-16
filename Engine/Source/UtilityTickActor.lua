---@meta

---@class FPHXCheckData
FPHXCheckData = {}


---@class AUtilityTickActor: AActor
---@field CheckData ULuaArrayHelper<FPHXCheckData>
local AUtilityTickActor = {}

---@param InCheckData FPHXCheckData
function AUtilityTickActor:AddCheckData(InCheckData) end

---@param InComponent UPrimitiveComponent
---@param InErrorTag string
---@return boolean
function AUtilityTickActor:CheckComponentPHXError(InComponent, InErrorTag) end
