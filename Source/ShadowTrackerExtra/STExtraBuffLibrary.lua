---@meta

---@class USTExtraBuffLibrary: UBlueprintFunctionLibrary
local USTExtraBuffLibrary = {}

---@param Buff USTBaseBuff
---@return number
function USTExtraBuffLibrary:GetBuffLayer(Buff) end

---@param Buff USTBaseBuff
---@param BuffActions ULuaArrayHelper<UUTSkillAction>
function USTExtraBuffLibrary:GetBuffActions(Buff, BuffActions) end
