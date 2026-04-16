---@meta

---@class UGSListener_OnPawnStateChange: UGSListenerBase
---@field EnterState EPawnState
---@field LeaveState EPawnState
local UGSListener_OnPawnStateChange = {}

---@param state EPawnState
function UGSListener_OnPawnStateChange:OnPawnStateEnter(state) end

---@param state EPawnState
function UGSListener_OnPawnStateChange:OnPawnStateLeave(state) end

---@param State EPawnState
---@param InterruptedBy EPawnState
function UGSListener_OnPawnStateChange:OnPawnStateInterrupted(State, InterruptedBy) end
