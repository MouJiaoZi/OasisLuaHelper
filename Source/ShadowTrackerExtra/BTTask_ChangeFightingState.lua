---@meta

---ChangeFightingState task node. Change fighting state, Wait for the specified time.
---@class UBTTask_ChangeFightingState: UBTTaskNode
---@field bChangeFightingStateBlackboard boolean
---@field FightingStateBlackboardKey any
---@field bEnterOrLeaveFightingState boolean
---@field bGetChangeStateTimeFromOwnerBPFunction boolean
---@field GetIdleToBattleTimeBPFunctionName string
---@field GetBattleToIdleTimeBPFunctionName string
---@field ChangeStateTime number
---@field bInvincibleInProgress boolean
---@field bRestoreInvincibleBeforeWhenFinished boolean
local UBTTask_ChangeFightingState = {}
