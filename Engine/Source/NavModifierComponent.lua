---@meta

---@class UNavModifierComponent: UNavRelevantComponent
---@field AreaClass UNavArea
---@field FailsafeExtent FVector @box extent used ONLY when owning actor doesn't have collision component
local UNavModifierComponent = {}

---@param NewAreaClass UNavArea
function UNavModifierComponent:SetAreaClass(NewAreaClass) end
