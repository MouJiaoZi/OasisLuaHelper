---@meta

---@class UGSListener_JoystickActive: USTNewbieGuideSuccessListenerBase
---@field CheckX boolean
---@field XValueThreshold number
---@field CheckY boolean
---@field YValueThreshold number
local UGSListener_JoystickActive = {}

---@param JSInput FVector2D
---@param Size FVector2D
function UGSListener_JoystickActive:ReceiveJoystickInput(JSInput, Size) end
