---@meta

---@class UPESkillTargetPicker_Fan: UPESkillTargetPickerBase
---@field FanActorClass FSoftClassPath
---@field Radius FFloatGetter
---@field Angle FFloatGetter
---@field Height FFloatGetter
local UPESkillTargetPicker_Fan = {}

---@param TestActor AActor
---@return boolean
function UPESkillTargetPicker_Fan:IsAngleCheckSuc(TestActor) end

---@param InProgress number
function UPESkillTargetPicker_Fan:SetProgress(InProgress) end
