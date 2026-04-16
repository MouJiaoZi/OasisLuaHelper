---@meta

---@class AUAEOBState: APlayerState
---@field UID number
---@field PlayerKey number
---@field bIsPureSpectator boolean
---@field GameBaseInfo FGameBaseInfo
local AUAEOBState = {}

---@return boolean
function AUAEOBState:IsPureSpectator() end
