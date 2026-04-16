---@meta

---Base class for blueprint based task nodes. Do NOT use it for creating native c++ classes! When task receives Abort event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Execute, but does not handle external events. Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.
---@class UBTTask_BlueprintBase: UBTTaskNode
---@field bShowPropertyDetails number @show detailed information about properties
local UBTTask_BlueprintBase = {}

---entry point, task will stay active until FinishExecute is called. suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
function UBTTask_BlueprintBase:ReceiveExecute(OwnerActor) end

---if blueprint graph contains this event, task will stay active until FinishAbort is called suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
function UBTTask_BlueprintBase:ReceiveAbort(OwnerActor) end

---tick function suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerActor AActor
---@param DeltaSeconds number
function UBTTask_BlueprintBase:ReceiveTick(OwnerActor, DeltaSeconds) end

---Alternative AI version of ReceiveExecute suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTTask_BlueprintBase:ReceiveExecuteAI(OwnerController, ControlledPawn) end

---Alternative AI version of ReceiveAbort suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTTask_BlueprintBase:ReceiveAbortAI(OwnerController, ControlledPawn) end

---Alternative AI version of tick function. suitable one will be called, meaning the AI version if called for AI, generic one otherwise
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds number
function UBTTask_BlueprintBase:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end

---finishes task execution with Success or Fail result
---@param bSuccess boolean
function UBTTask_BlueprintBase:FinishExecute(bSuccess) end

---aborts task execution
function UBTTask_BlueprintBase:FinishAbort() end

---task execution will be finished (with result 'Success') after receiving specified message
---@param MessageName string
function UBTTask_BlueprintBase:SetFinishOnMessage(MessageName) end

---task execution will be finished (with result 'Success') after receiving specified message with indicated ID
---@param MessageName string
---@param RequestID number
function UBTTask_BlueprintBase:SetFinishOnMessageWithId(MessageName, RequestID) end

---check if task is currently being executed
---@return boolean
function UBTTask_BlueprintBase:IsTaskExecuting() end

---check if task is currently being aborted
---@return boolean
function UBTTask_BlueprintBase:IsTaskAborting() end
