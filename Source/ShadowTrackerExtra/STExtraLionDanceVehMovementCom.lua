---@meta

---@class USTExtraLionDanceVehMovementCom: USTExtraMyriapodVehMovementCom
---@field fJumpHeightRate number
---@field fMaxSpeedRate number
---@field fAccRate number
local USTExtraLionDanceVehMovementCom = {}

---@param DeltaTime number
---@param bFluid boolean
function USTExtraLionDanceVehMovementCom:CalculateVelocityWithResistance(DeltaTime, bFluid) end

---@param DeltaTime number
---@param Friction number
---@param bFluid boolean
---@param BrakingDeceleration number
function USTExtraLionDanceVehMovementCom:CalcVelocity(DeltaTime, Friction, bFluid, BrakingDeceleration) end

---@return number
function USTExtraLionDanceVehMovementCom:GetMaxAcceleration() end

---@return number
function USTExtraLionDanceVehMovementCom:GetMaxBrakingDeceleration() end
