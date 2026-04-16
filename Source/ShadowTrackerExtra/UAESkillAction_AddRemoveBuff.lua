---@meta

---@class UUAESkillAction_AddRemoveBuff: UUAESkillAction
---@field IsAddBuff boolean
---@field BuffName string
---@field AddLayerCount number
---@field BuffDuration number
---@field BuffDurationGetter FUTFloatPropertyGetter
---@field IgnoredActorClasses ULuaArrayHelper<AActor>
---@field PawnStateListDisableBuff ULuaArrayHelper<EPawnState>
---@field SameBuffNameList ULuaArrayHelper<string>
---@field bWhetherStopBuffAfterStopPhase boolean
---@field bWhetherStopBuffAfterStopSkill boolean
---@field bWhetherStopBuffBeforeCloseSkill boolean
local UUAESkillAction_AddRemoveBuff = {}
