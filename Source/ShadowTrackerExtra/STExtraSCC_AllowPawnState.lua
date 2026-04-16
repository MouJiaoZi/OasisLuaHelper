---@meta

---@class FSCCComposeState
---@field TemporaryScoppingValue boolean
---@field IgnoreIfAutoSpringInEnter boolean
---@field FailResult EConditionNodeResult
---@field ComposeState ULuaArrayHelper<EPawnState>
FSCCComposeState = {}


---@class USTExtraSCC_AllowPawnState: USightConditionNode
---@field IgnoreNotAllowComposeMoveDisableMove boolean
---@field IgnoreCheckDisabledByWeapon boolean
---@field IgnoreCheckVehicleSeatState boolean
---@field IsCheckAllowScopeInTick boolean
---@field IsBeginFailNotAllowTemp boolean
---@field NotAllowStates ULuaArrayHelper<EPawnState>
---@field TemporaryCloseStates ULuaArrayHelper<EPawnState>
---@field NotAllowComposeState ULuaArrayHelper<FSCCComposeState>
---@field IgnoreCheckAllowStates ULuaArrayHelper<EPawnState>
---@field NewFPPScopeBoltIgnoreNotAllowStates ULuaArrayHelper<EPawnState>
---@field NewFPPScopeReloadIgnoreNotAllowStates ULuaArrayHelper<EPawnState>
local USTExtraSCC_AllowPawnState = {}
