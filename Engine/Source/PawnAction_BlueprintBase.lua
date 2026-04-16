---@meta

---@class UPawnAction_BlueprintBase: UPawnAction
local UPawnAction_BlueprintBase = {}

---@param ControlledPawn APawn
function UPawnAction_BlueprintBase:ActionStart(ControlledPawn) end

---@param ControlledPawn APawn
---@param DeltaSeconds number
function UPawnAction_BlueprintBase:ActionTick(ControlledPawn, DeltaSeconds) end

---@param ControlledPawn APawn
function UPawnAction_BlueprintBase:ActionPause(ControlledPawn) end

---@param ControlledPawn APawn
function UPawnAction_BlueprintBase:ActionResume(ControlledPawn) end

---@param ControlledPawn APawn
---@param WithResult EPawnActionResult
function UPawnAction_BlueprintBase:ActionFinished(ControlledPawn, WithResult) end
