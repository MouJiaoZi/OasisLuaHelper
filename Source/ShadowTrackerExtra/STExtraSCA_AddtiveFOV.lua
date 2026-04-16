---@meta

---@class EAddtiveFOVState
---@field None number
---@field LerpIn number
---@field LerpOut number
EAddtiveFOVState = {}


---@class USTExtraSCA_AddtiveFOV: USightActionNode
---@field DestinAddtiveFOV number
---@field InSpeed number
---@field OutSpeed number
local USTExtraSCA_AddtiveFOV = {}

---@param InState EAddtiveFOVState
function USTExtraSCA_AddtiveFOV:SetAddtiveFOVState(InState) end

function USTExtraSCA_AddtiveFOV:OnEnterAccumulateEnergyState() end

function USTExtraSCA_AddtiveFOV:OnLeaveAccumulateEnergyState() end
