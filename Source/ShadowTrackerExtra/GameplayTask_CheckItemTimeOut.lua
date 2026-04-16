---@meta

---@class UGameplayTask_CheckItemTimeOut: UUAEGameplayTask
---@field OnItemTimeOut FItemTimeOutDelegate
local UGameplayTask_CheckItemTimeOut = {}

function UGameplayTask_CheckItemTimeOut:Pause() end

function UGameplayTask_CheckItemTimeOut:Resume() end

function UGameplayTask_CheckItemTimeOut:ItemTimeOut() end
