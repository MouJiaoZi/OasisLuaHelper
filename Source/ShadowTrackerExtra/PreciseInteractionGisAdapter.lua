---@meta

---@class FGisAdapterSpecialUIInfo
---@field CustomUIPath string
---@field bUseVisibilityDetection boolean
FGisAdapterSpecialUIInfo = {}


---@class UPreciseInteractionGisAdapter: UPreciseInteractionAdapter, ILuaInterface
---@field SpecialUIInfoMap ULuaMapHelper<string, FGisAdapterSpecialUIInfo>
---@field bUseVisibilityDetection boolean
local UPreciseInteractionGisAdapter = {}

---@return string
function UPreciseInteractionGisAdapter:GetLuaModule() end

---@param InteractorActor AActor
---@return number
function UPreciseInteractionGisAdapter:GetGISActorInstanceID(InteractorActor) end

---@param GISComponent UActorComponent
---@return number
function UPreciseInteractionGisAdapter:GetGISComponentInstanceID(GISComponent) end
