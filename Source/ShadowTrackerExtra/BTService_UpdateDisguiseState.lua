---@meta

---@class EAIDisguisedStateBehaviorType
---@field None number @无行为
---@field Stand number @静止不动
---@field RunCircle number @跑毒
---@field Deliver number @送快递
---@field ToNormal number @变回人
EAIDisguisedStateBehaviorType = {}


---@class FAIDisguisedStateBehaviorItem
---@field BehaviorType EAIDisguisedStateBehaviorType
---@field Weight number
FAIDisguisedStateBehaviorItem = {}


---AI变身状态更新
---@class UBTService_UpdateDisguiseState: UBTService
---@field InNormalToDisguisedRandomInterval FVector2D
---@field InNormalToDisguisedProbability number
---@field InDisguisedBehaviorRandomInterval FVector2D
---@field InDisguisedBehaviorRandomBehaviors ULuaArrayHelper<FAIDisguisedStateBehaviorItem>
---@field InFightingStateTimeThreshold number
---@field OutDisguiseActionBBkey any
---@field OutDisguiseItemIDBBkey any
---@field OutDisguiseBehaviorBBkey any
local UBTService_UpdateDisguiseState = {}
