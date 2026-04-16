---@meta

---@class UMLAITrainingStateComponent: UActorComponent
---@field bBeginRequestAIState boolean
---@field bEndRequestAIState boolean
local UMLAITrainingStateComponent = {}

---@param CollectPoint number
---@param SendInterval number
---@param SleepTime number
---@param ThreadPriority number
function UMLAITrainingStateComponent:InitStateWorker(CollectPoint, SendInterval, SleepTime, ThreadPriority) end

function UMLAITrainingStateComponent:StopStateWorker() end

---@param InLuaState FLuaState
---@param ParamIndex number
---@return number
function UMLAITrainingStateComponent:SendAIState_LuaExtd(InLuaState, ParamIndex) end

---@return boolean
function UMLAITrainingStateComponent:IsRequestAIState() end

function UMLAITrainingStateComponent:EndRequestAIState() end

---@param Msg string
function UMLAITrainingStateComponent:PrintLog(Msg) end
