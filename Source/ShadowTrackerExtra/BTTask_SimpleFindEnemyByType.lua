---@meta

---@class ESimpleFindEnemyType
---@field EnemyType_Player number @人
---@field EnemyType_FakePlayer number @假人AI
---@field EnemyType_Monster number @怪物
ESimpleFindEnemyType = {}


---寻找敌人
---@class UBTTask_SimpleFindEnemyByType: UBTTaskNode
---@field OutTargetEnemyActor any
---@field SenseDistance number
---@field SenseLoseDistance number
---@field bSenseInvisibleEnemy boolean
---@field bSetEnemy boolean
---@field TraceStartOffset FVector
---@field TraceEndOffset FVector
---@field MinTimeLockTarget number
---@field ChooseEnemyTypes ULuaArrayHelper<ESimpleFindEnemyType>
---@field ChooseEnemyActorTagsWhitelist ULuaArrayHelper<string>
---@field ChooseEnemyActorTagsBlacklist ULuaArrayHelper<string>
local UBTTask_SimpleFindEnemyByType = {}
