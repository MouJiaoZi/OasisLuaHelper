---@meta

---@class UGameplayTask_RegistPawnState: UUAEGameplayTask
---@field OnMeetEvent FRegistPawnStateDelegate
local UGameplayTask_RegistPawnState = {}

---@param State EPawnState
function UGameplayTask_RegistPawnState:OnPawnStateEnter(State) end
