---@meta

---在特定区域中，进圈触发useitem，出圈触发disuse。
---@class UTriggerAction_SwitchHalloweenMask: UTriggerAction
---@field ItemSubType number
---@field UIMsgParamCanEnable string
---@field UIMsgParamCannotEnable string
---@field UIMsgParamEnter string
---@field UIMsgParamLeave string
---@field CircleIndex number
local UTriggerAction_SwitchHalloweenMask = {}

function UTriggerAction_SwitchHalloweenMask:CircleIndexDetectTimer() end
