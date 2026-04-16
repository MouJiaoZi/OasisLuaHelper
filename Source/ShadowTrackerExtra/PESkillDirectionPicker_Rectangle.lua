---@meta

---@class FPESkillRectangleEffect
---@field RectangleActorClass FSoftClassPath
FPESkillRectangleEffect = {}


---@class UPESkillDirectionPicker_Rectangle: UPESkillDirectionPickerBase
---@field Offset FVector
---@field Width FFloatGetter
---@field Length FFloatGetter
---@field RectangleEffct FPESkillRectangleEffect
local UPESkillDirectionPicker_Rectangle = {}

---@param InProgress number
function UPESkillDirectionPicker_Rectangle:SetProgress(InProgress) end
