---@meta

---@class UGameplayTask_ActivityEventStateView: UUAEGameplayTask
---@field ViewConfig FActivityEventStateViewConfig
---@field CurrentViewResult FActivityEventStateViewResult
local UGameplayTask_ActivityEventStateView = {}

---@return FActivityEventStateViewResult
function UGameplayTask_ActivityEventStateView:GetCurrentViewResult() end

---@param FormatTime string
---@return boolean
function UGameplayTask_ActivityEventStateView:GetFormatTime(FormatTime) end

---@param ViewTime FActivityEventStateViewTime
---@return boolean
function UGameplayTask_ActivityEventStateView:GetStructTime(ViewTime) end

---@param StateNAD UActivityEventState_NAD
function UGameplayTask_ActivityEventStateView:OnActivityEventStateChange(StateNAD) end
