---@meta

---@class FSTBaseBuffEventContext
---@field BuffEventClass USTBaseBuffEventType
---@field UAEBlackboardContainer FUAEBlackboardContainer
FSTBaseBuffEventContext = {}


---@class USTBaseBuffEventContextBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local USTBaseBuffEventContextBlueprintFunctionLibrary = {}

---@param InBuffEventClass USTBaseBuffEventType
---@return FSTBaseBuffEventContext
function USTBaseBuffEventContextBlueprintFunctionLibrary:MakeSTBaseBuffEventContext(InBuffEventClass) end
