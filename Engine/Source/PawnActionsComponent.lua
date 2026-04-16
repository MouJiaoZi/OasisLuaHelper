---@meta

---@class FPawnActionEvent
FPawnActionEvent = {}


---@class FPawnActionStack
FPawnActionStack = {}


---@class UPawnActionsComponent: UActorComponent
---@field ActionStacks ULuaArrayHelper<FPawnActionStack>
---@field ActionEvents ULuaArrayHelper<FPawnActionEvent>
local UPawnActionsComponent = {}

---@param Pawn APawn
---@param Action UPawnAction
---@param Priority EAIRequestPriority
---@return boolean
function UPawnActionsComponent:K2_PerformAction(Pawn, Action, Priority) end

---@param NewAction UPawnAction
---@param Priority EAIRequestPriority
---@param Instigator UObject
---@return boolean
function UPawnActionsComponent:K2_PushAction(NewAction, Priority, Instigator) end

---Aborts given action instance
---@param ActionToAbort UPawnAction
---@return EPawnActionAbortState
function UPawnActionsComponent:K2_AbortAction(ActionToAbort) end

---Aborts given action instance
---@param ActionToAbort UPawnAction
---@return EPawnActionAbortState
function UPawnActionsComponent:K2_ForceAbortAction(ActionToAbort) end
