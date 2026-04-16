---@meta

---@class UGameModeState_Training: UGameModeState
---@field AboutToOverTime number
---@field AboutToOverMsgID number
---@field PlayerExitTime number
---@field PostLoginMsgDelay number
---@field PostLoginMsgID number
---@field StateOverMsg string
---@field IsStarShow boolean
local UGameModeState_Training = {}

function UGameModeState_Training:BroadcastAboutToOver() end
