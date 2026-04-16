---@meta

---@class UBattleLuaOverrider: UBlueprintFunctionLibrary
local UBattleLuaOverrider = {}

function UBattleLuaOverrider:Init() end

---@param ClassName string
---@param OutLuaTemplate string
---@return boolean
function UBattleLuaOverrider:TryToGetOptionalLuaExtend(ClassName, OutLuaTemplate) end
