---@meta

---@class FOnAIMessage : ULuaSingleDelegate
FOnAIMessage = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: UBrainComponent, Param2: FAIMessage) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAIMessage:Bind(Callback, Obj) end

---执行委托
---@param Param1 UBrainComponent
---@param Param2 FAIMessage
function FOnAIMessage:Execute(Param1, Param2) end


---@class UBrainComponent: UActorComponent, IAIResourceInterface
local UBrainComponent = {}

function UBrainComponent:RestartLogic() end

---@param Reason string
function UBrainComponent:StopLogic(Reason) end

---MUST be called by child implementations! handled in a different way and no other actions are required (false)
---@param Reason string
---@return EAILogicResuming
function UBrainComponent:ResumeLogic(Reason) end

---@return boolean
function UBrainComponent:IsRunning() end

---@return boolean
function UBrainComponent:IsPaused() end
