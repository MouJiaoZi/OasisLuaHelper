---@meta

---@class UGameplayTask_RegisterPawnStateMeetAll: UUAEGameplayTask
---@field OnMeetEvent FRegistPawnStateDelegate
local UGameplayTask_RegisterPawnStateMeetAll = {}

---@param State EPawnState
function UGameplayTask_RegisterPawnStateMeetAll:OnPawnStateEnter(State) end
