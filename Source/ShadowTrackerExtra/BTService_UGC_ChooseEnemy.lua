---@meta

---@class EUGCChooseEnemyStrategy
---@field Nearest number @就近原则
---@field RangeRandom number @范围内随机原则
EUGCChooseEnemyStrategy = {}


---@class EUGCChooseEnemyType
---@field Player number @人
---@field Monster number @怪物
---@field PlayerAndMonster number @人和怪物
---@field MonsterAndPlayer number @怪物和人
EUGCChooseEnemyType = {}


---@class UBTService_UGC_ChooseEnemy: UBTService
---@field ChooseEnemyType EUGCChooseEnemyType
---@field ChooseEnemyStrategy EUGCChooseEnemyStrategy
---@field SenseRadius number
---@field bCheckVisibility boolean
---@field TraceTestChannel ECollisionChannel
---@field MemoryTime number
---@field MinTimeLockTarget number
---@field OutIsCanNotSeeTarget any
---@field OutTargetEnemyActor any
local UBTService_UGC_ChooseEnemy = {}
