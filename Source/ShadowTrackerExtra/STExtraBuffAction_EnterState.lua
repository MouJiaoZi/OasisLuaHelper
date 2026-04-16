---@meta

---@class FPawnStateRelationTempPermission
---@field From EPawnState
---@field To EPawnState
FPawnStateRelationTempPermission = {}


---@class UPawnStateOverrider_TempPermission: UPawnStateRelationOverrider
---@field PawnStateConfigs ULuaArrayHelper<FPawnStateRelationTempPermission>
local UPawnStateOverrider_TempPermission = {}


---@class USTExtraBuffAction_EnterState: UUAESkillAction
---@field TargetState EPawnState
local USTExtraBuffAction_EnterState = {}
