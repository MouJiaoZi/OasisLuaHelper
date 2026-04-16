---@meta

---@class FWheelFrictionCurve
---@field m_ExtremumSlip number
---@field m_ExtremumValue number
---@field m_AsymptoteSlip number
---@field m_AsymptoteValue number
---@field m_Stiffness number
---@field MaxForce number
---@field ClampSlipMin number
---@field ClampSlipMax number
FWheelFrictionCurve = {}


---@class USTExtraDriftVehicleWheel: USTExtraVehicleWheel
---@field ForwardFriction FWheelFrictionCurve
---@field SidewaysFriction FWheelFrictionCurve
---@field bThrottleWheel boolean
---@field bSteerWheel boolean
local USTExtraDriftVehicleWheel = {}

---@param Curve FWheelFrictionCurve
---@param t number
---@return number
function USTExtraDriftVehicleWheel:HermiteEval(Curve, t) end
