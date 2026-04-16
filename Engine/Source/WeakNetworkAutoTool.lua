---@meta

---@class FActExecutionProcessInfo
---@field ActName string
---@field ProcessName string
---@field StartLabel string
---@field EndLabel string
FActExecutionProcessInfo = {}


---@class UActExecutionProcess: UDeveloperSettings
---@field ActExecutionProcessList ULuaArrayHelper<FActExecutionProcessInfo>
local UActExecutionProcess = {}

---@param LabelName string
function UActExecutionProcess:HandleWeakNetworkLabel(LabelName) end

---@param LabelName string
---@param Actor AActor
---@param bMustVaild boolean
function UActExecutionProcess:HandleWeakNetworkLabelServer(LabelName, Actor, bMustVaild) end

---@param LabelName string
function UActExecutionProcess:HandleWeakNetworkRPC(LabelName) end
