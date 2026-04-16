---@meta

---@class UNavRelevantComponent: UActorComponent, INavRelevantInterface
---@field bAttachToOwnersRoot number @attach navigation data to entry for owner's root component (depends on its relevancy)
local UNavRelevantComponent = {}

---@param bRelevant boolean
function UNavRelevantComponent:SetNavigationRelevancy(bRelevant) end
