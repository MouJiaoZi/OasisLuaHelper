---@meta

---@class EAddtiveTransOffsetState
---@field None number
---@field LerpIn number
---@field LerpOut number
EAddtiveTransOffsetState = {}


---@class USTExtraSCA_AddtiveAimTransOffset: USightActionNode
---@field AddtiveTransOffsetState EAddtiveTransOffsetState
---@field CurrentAddtiveTime number
---@field CurrentAlpha number
---@field CurveRotatorOffsetValue FRotator
---@field SourceOffsetValue FRotator
---@field DestinOffsetValue FRotator
local USTExtraSCA_AddtiveAimTransOffset = {}

---@param InState EAddtiveTransOffsetState
function USTExtraSCA_AddtiveAimTransOffset:SetAddtiveTransOffsetState(InState) end
