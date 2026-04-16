---@meta

---@class URelativeMoveGlobalMethods: UBlueprintFunctionLibrary
local URelativeMoveGlobalMethods = {}

---@param NeedRelativeMoveActor UObject
---@param NewBase USceneComponent
function URelativeMoveGlobalMethods:AddTickDependencyOnRelativeMoveActor(NeedRelativeMoveActor, NewBase) end

---@param NeedRelativeMoveActor UObject
---@param OldBase USceneComponent
function URelativeMoveGlobalMethods:RemoveTickDependencyOnRelativeMoveActor(NeedRelativeMoveActor, OldBase) end
