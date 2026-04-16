---@meta

---@class UBTTask_MagicMove_Pack: UBTTask_MoveTo
---@field bEnableSubtreeParamOverride boolean
---@field MoveType EAIMovePose
---@field TimeLimit number
---@field ForceSuccess boolean
---@field MoveWithOutPathFinding boolean
---@field GotoExceptionWhenFailed boolean
---@field bOpenEnableCustomSpeed boolean
---@field bEnableCustomSpeed boolean
---@field CustomSpeedValue number
---@field bAvoidNonTargetPlayer boolean @避让非目标玩家角色
---@field AvoidNonTargetPlayerDistanceLimit number
---@field CheckAvoidPlayerMoveInterval number
---@field ActorLocationTetherDistanceScale number
---@field bEnableCharacterAttrModifier boolean
---@field CharacterAttrModifiers ULuaArrayHelper<string>
---@field bObserverMoveTarget boolean
local UBTTask_MagicMove_Pack = {}
