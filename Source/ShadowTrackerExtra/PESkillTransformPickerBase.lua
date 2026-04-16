---@meta

---@class UPESkillTransformPickerBase: UPESkillPickerBase
---@field PickedTransform FTransform
---@field PickedTransforms ULuaArrayHelper<FTransform>
local UPESkillTransformPickerBase = {}

---@param PickedResults ULuaArrayHelper<FTransform>
---@return boolean
function UPESkillTransformPickerBase:PickTransform(PickedResults) end
