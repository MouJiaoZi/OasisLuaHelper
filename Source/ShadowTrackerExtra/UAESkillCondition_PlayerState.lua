---@meta

---@class EPawnStateSettingValueType
---@field Custom number @自定义
---@field DefaultSkill number @默认技能
---@field PassiveSkill number @被动技能
---@field MovementModeSkill number @移动模式技能
EPawnStateSettingValueType = {}


---@class UUAESkillCondition_PlayerState: UUAESkillCondition
---@field OperatorType EOperatorType
---@field ArrPlayerState ULuaArrayHelper<EPawnState>
---@field bOnlyHasCurrentStates boolean
---@field bMustHasAllStates boolean
---@field ArrFatalPlayerState ULuaArrayHelper<EPawnState>
---@field ArrFatalDynamicPawnState ULuaArrayHelper<FGameplayTag>
---@field CanEnterStates ULuaArrayHelper<EPawnState>
---@field CanEnterOrExistStates ULuaArrayHelper<EPawnState>
---@field PawnStateToPoseState ULuaMapHelper<EPawnState, ESTEPoseState>
local UUAESkillCondition_PlayerState = {}
