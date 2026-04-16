---@meta

---@class USafeZoneCountDown: UUAEUserWidget
---@field TimeToShowDigist number
---@field TimeToShowDangrous number
---@field bShowSignalAreaChangeAnimation boolean
local USafeZoneCountDown = {}

---@param _CurrentSignalHP number
---@param _PreSignalHP number
---@param _RadioSignalHP number
function USafeZoneCountDown:SignalHpChange(_CurrentSignalHP, _PreSignalHP, _RadioSignalHP) end

---@param bInFreeView boolean
function USafeZoneCountDown:OnFreeViewChangedHandle(bInFreeView) end

---@param InRemainingTime number
function USafeZoneCountDown:SignalHPRemainingTimeChange(InRemainingTime) end

function USafeZoneCountDown:SetTimeCDYellowEffect() end

---@param _TargetRadio number
---@param _CurrRadio number
function USafeZoneCountDown:UpdateSignalPredict(_TargetRadio, _CurrRadio) end

---@param visible boolean
function USafeZoneCountDown:SetCountDownVisible(visible) end
