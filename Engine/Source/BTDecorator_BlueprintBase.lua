---@meta

---Base class for blueprint based decorator nodes. Do NOT use it for creating native c++ classes! Unlike task and services, decorator have two execution chains: ExecutionStart-ExecutionFinish and ObserverActivated-ObserverDeactivated which makes automatic latent action cleanup impossible. Keep in mind, that you HAVE TO verify is given chain is still active after resuming from any latent action (like Delay, Timelines, etc). Helper functions: - IsDecoratorExecutionActive (true after ExecutionStart, until ExecutionFinish) - IsDecoratorObserverActive (true after ObserverActivated, until ObserverDeactivated)
---@class UBTDecorator_BlueprintBase: UBTDecorator
---@field ObservedKeyNames ULuaArrayHelper<string> @blackboard key names that should be observed
---@field bShowPropertyDetails number @show detailed information about properties
---@field bCheckConditionOnlyBlackBoardChanges number @Applies only if Decorator has any FBlackboardKeySelector property and if decorator is set to abort BT flow. Is set to true ReceiveConditionCheck will be called only on changes to observed BB keys. If false or no BB keys observed ReceiveConditionCheck will be called every tick
---@field bIsObservingBB number @gets set to true if decorator declared BB keys it can potentially observe
local UBTDecorator_BlueprintBase = {}

---tick function suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
---@param DeltaSeconds number
function UBTDecorator_BlueprintBase:ReceiveTick(OwnerActor, DeltaSeconds) end

---called on execution of underlying node suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
function UBTDecorator_BlueprintBase:ReceiveExecutionStart(OwnerActor) end

---called when execution of underlying node is finished suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
---@param NodeResult EBTNodeResult
function UBTDecorator_BlueprintBase:ReceiveExecutionFinish(OwnerActor, NodeResult) end

---called when observer is activated (flow controller) suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
function UBTDecorator_BlueprintBase:ReceiveObserverActivated(OwnerActor) end

---called when observer is deactivated (flow controller) suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
function UBTDecorator_BlueprintBase:ReceiveObserverDeactivated(OwnerActor) end

---called when testing if underlying node can be executed, must call FinishConditionCheck suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
---@return boolean
function UBTDecorator_BlueprintBase:PerformConditionCheck(OwnerActor) end

---Alternative AI version of ReceiveTick suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds number
function UBTDecorator_BlueprintBase:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end

---Alternative AI version of ReceiveExecutionStart suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTDecorator_BlueprintBase:ReceiveExecutionStartAI(OwnerController, ControlledPawn) end

---Alternative AI version of ReceiveExecutionFinish suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param NodeResult EBTNodeResult
function UBTDecorator_BlueprintBase:ReceiveExecutionFinishAI(OwnerController, ControlledPawn, NodeResult) end

---Alternative AI version of ReceiveObserverActivated suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTDecorator_BlueprintBase:ReceiveObserverActivatedAI(OwnerController, ControlledPawn) end

---Alternative AI version of ReceiveObserverDeactivated suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTDecorator_BlueprintBase:ReceiveObserverDeactivatedAI(OwnerController, ControlledPawn) end

---Alternative AI version of ReceiveConditionCheck suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@return boolean
function UBTDecorator_BlueprintBase:PerformConditionCheckAI(OwnerController, ControlledPawn) end

---check if decorator is part of currently active branch
---@return boolean
function UBTDecorator_BlueprintBase:IsDecoratorExecutionActive() end

---check if decorator's observer is currently active
---@return boolean
function UBTDecorator_BlueprintBase:IsDecoratorObserverActive() end
