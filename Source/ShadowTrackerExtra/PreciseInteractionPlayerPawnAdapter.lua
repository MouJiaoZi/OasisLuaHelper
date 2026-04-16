---@meta

---@class UPreciseInteractionPlayerPawnAdapter: UPreciseInteractionAdapter
---@field bUseVisibilityDetection boolean
local UPreciseInteractionPlayerPawnAdapter = {}

---@param CollectionWrapper FInteractBehaviorWrapper
---@param TargetCharacter ASTExtraBaseCharacter
---@param TraceCharacter ASTExtraBaseCharacter
---@param Interactor UObject
function UPreciseInteractionPlayerPawnAdapter:CollectionBehavior(CollectionWrapper, TargetCharacter, TraceCharacter, Interactor) end
