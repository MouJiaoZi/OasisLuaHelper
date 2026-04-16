---@meta

---@class UFieldOfViewNotificationComponent: UActorComponent, IObjectPoolInterface
---@field InFieldOfViewChangedDelegate FInFieldOfViewChangedDelegate
---@field CheckFrequencyLowerBoundInSeconds number
---@field CheckFrequencyUpperBoundInSeconds number
---@field bSelfDebugLineTraceDrawn boolean
---@field IsCheckingFieldOfViewEnabledDelegate FIsCheckingFieldOfViewEnabledDelegate
---@field SelfActorLocationGetter IActorLocationGetterInterface
---@field FieldOfViewNotificationStatus EFieldOfViewNotificationStatus
---@field ElapsedSeconds number
---@field RecursivelyRegisterSelfTimeerHandle FTimerHandle
---@field CheckFrequencyInSeconds number
local UFieldOfViewNotificationComponent = {}

---@return EFieldOfViewNotificationStatus
function UFieldOfViewNotificationComponent:GetFieldOfViewNotificationStatus() end

---@return boolean
function UFieldOfViewNotificationComponent:IsNotificationWorking() end
