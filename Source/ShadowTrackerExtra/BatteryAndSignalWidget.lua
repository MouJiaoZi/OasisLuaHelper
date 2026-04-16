---@meta

---@class UBatteryAndSignalWidget: UUAEUserWidget
---@field BatteryUpdateTime number
---@field PingNoSignalValue number
---@field PingMinusValue number
---@field UpdatePingCycle number
---@field PingDelayThreshold number
---@field PingDelayTime number
---@field OutPacketLostYellowValue number
---@field OutPacketLostRedValue number
---@field OutPacketLostYellowValueBoth number
---@field OutPacketLostRedValueBoth number
---@field InPacketLostYellowValue number
---@field InPacketLostRedValue number
---@field InPacketLostYellowValueBoth number
---@field InPacketLostRedValueBoth number
---@field bIsReplay boolean
local UBatteryAndSignalWidget = {}

---@param InDeltaTime number
function UBatteryAndSignalWidget:UpdateBatteryLevelAndSignalC(InDeltaTime) end

---@param InDeltaTime number
function UBatteryAndSignalWidget:UpdateSignalC(InDeltaTime) end

function UBatteryAndSignalWidget:UpdateSignalByPingC() end

function UBatteryAndSignalWidget:UpdatePacketLost() end

---@param InDeltaTime number
function UBatteryAndSignalWidget:UpdateBatteryChargeTimer(InDeltaTime) end

---@param bisCharge boolean
function UBatteryAndSignalWidget:UpdateChargingImage(bisCharge) end

---@param Index number
function UBatteryAndSignalWidget:UpdateSignalPic(Index) end
