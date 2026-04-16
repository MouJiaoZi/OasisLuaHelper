---@meta

---@class FGISCCF_Param
---@field Message string
FGISCCF_Param = {}


---@class FGISCCF_Selector
---@field FunctionName string
---@field bShowOnlyBlueprintFunctions boolean
---@field bUsedForGISConditions boolean
FGISCCF_Selector = {}


---@class USTExtreGISActionBase: UGISObjectBaseAction
---@field InstanceIDParameterName FUAEBlackboardKeySelector
---@field TypeIDParameterName FUAEBlackboardKeySelector
local USTExtreGISActionBase = {}

---@return number
function USTExtreGISActionBase:GetOwnerGISActorInstanceID() end

---@return number
function USTExtreGISActionBase:GetOwnerGISTypeID() end
