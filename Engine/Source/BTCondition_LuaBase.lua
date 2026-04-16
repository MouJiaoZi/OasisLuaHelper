---@meta

---Base class for lua based condition nodes. Do NOT use it for creating native c++ classes! Unlike task and attachments, condition have two execution chains: ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated which makes automatic latent action cleanup impossible. Keep in mind, that you HAVE TO verify is given chain is still active after resuming from any latent action (like Delay, Timelines, etc). Helper functions: - IsConditionExecutionActive (true after ExecutionStart, until ExecutionFinish) - IsConditionObserverActive (true after ObserverActivated, until ObserverDeactivated)
---@class UBTCondition_LuaBase: UBTDecorator
---@field ObservedKeyNames ULuaArrayHelper<string> @blackboard key names that should be observed
---@field bCheckConditionOnlyBlackBoardChanges number @Applies only if Condition has any FBlackboardKeySelector property and if condition is set to abort BT flow. Is set to true ReceiveConditionCheck will be called only on changes to observed BB keys. If false or no BB keys observed ReceiveConditionCheck will be called every tick
---@field bIsObservingBB number @gets set to true if condition declared BB keys it can potentially observe
local UBTCondition_LuaBase = {}

---tick function
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds number
function UBTCondition_LuaBase:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end

---called on execution of underlying node
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTCondition_LuaBase:ReceiveExecutionStartAI(OwnerController, ControlledPawn) end

---called when execution of underlying node is finished
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param NodeResult EBTNodeResult
function UBTCondition_LuaBase:ReceiveExecutionFinishAI(OwnerController, ControlledPawn, NodeResult) end

---called when observer is activated (flow controller)
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTCondition_LuaBase:ReceiveObserverActivatedAI(OwnerController, ControlledPawn) end

---called when observer is deactivated (flow controller)
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTCondition_LuaBase:ReceiveObserverDeactivatedAI(OwnerController, ControlledPawn) end

---called when testing if underlying node can be executed
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@return boolean
function UBTCondition_LuaBase:PerformConditionCheckAI(OwnerController, ControlledPawn) end

---check if condition is part of currently active branch
---@return boolean
function UBTCondition_LuaBase:IsConditionExecutionActive() end

---check if condition's observer is currently active
---@return boolean
function UBTCondition_LuaBase:IsConditionObserverActive() end
