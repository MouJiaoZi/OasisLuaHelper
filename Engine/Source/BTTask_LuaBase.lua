---@meta

---Base class for lua based task nodes. Do NOT use it for creating native c++ classes! When task receives Abort event, all latent actions associated this instance are being removed. This prevents from resuming activity started by Execute, but does not handle external events. Please use them safely (unregister at abort) and call IsTaskExecuting() when in doubt.
---@class UBTTask_LuaBase: UBTTaskNode
---@field bShowPropertyDetails number @show detailed information about properties
local UBTTask_LuaBase = {}

---entry point, task will stay active until FinishExecute is called.
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTTask_LuaBase:ReceiveExecuteAI(OwnerController, ControlledPawn) end

---if blueprint graph contains this event, task will stay active until FinishAbort is called
---@param OwnerController AAIController
---@param ControlledPawn APawn
function UBTTask_LuaBase:ReceiveAbortAI(OwnerController, ControlledPawn) end

---tick function
---@param OwnerController AAIController
---@param ControlledPawn APawn
---@param DeltaSeconds number
function UBTTask_LuaBase:ReceiveTickAI(OwnerController, ControlledPawn, DeltaSeconds) end

---finishes task execution with Success or Fail result
---@param bSuccess boolean
function UBTTask_LuaBase:FinishExecute(bSuccess) end

---aborts task execution
function UBTTask_LuaBase:FinishAbort() end

---task execution will be finished (with result 'Success') after receiving specified message
---@param MessageName string
function UBTTask_LuaBase:SetFinishOnMessage(MessageName) end

---task execution will be finished (with result 'Success') after receiving specified message with indicated ID
---@param MessageName string
---@param RequestID number
function UBTTask_LuaBase:SetFinishOnMessageWithId(MessageName, RequestID) end

---check if task is currently being executed
---@return boolean
function UBTTask_LuaBase:IsTaskExecuting() end

---check if task is currently being aborted
---@return boolean
function UBTTask_LuaBase:IsTaskAborting() end
