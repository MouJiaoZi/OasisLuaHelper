---@meta

---@class FOptionalUIFilterItem
---@field UILuaName string
---@field NativeClass UOptionalUIFilterInterface
FOptionalUIFilterItem = {}


---@class UOptionalUIFilterInterface: UObject
local UOptionalUIFilterInterface = {}

---@param InTestUIPath string
---@param InUIOwningController APlayerController
---@return boolean
function UOptionalUIFilterInterface:IsOptionalUIPassFilterTest(InTestUIPath, InUIOwningController) end
