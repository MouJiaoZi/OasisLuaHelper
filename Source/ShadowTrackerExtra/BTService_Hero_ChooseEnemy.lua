---@meta

---@class FShortSmokeVisionConfig
---@field DifficultyLevel number
---@field Distance number
FShortSmokeVisionConfig = {}


---@class UBTService_Hero_ChooseEnemy: UBTService_ChooseEnemyByShape
---@field RealPlayerBasicScore number
---@field FakePlayerBasicScore number
---@field NPCBasicScore number
---@field DistanceDecayRete number
---@field TimeDecayRete number
---@field DamageFixRate number
---@field VisibleScore number
---@field EnableMonsterFilter boolean
---@field MonsterFilterTag string
---@field DynamicFilterState FGameplayTag
---@field EnableShortSmokeVision boolean
---@field ShortSmokeVisionConfigs ULuaArrayHelper<FShortSmokeVisionConfig>
local UBTService_Hero_ChooseEnemy = {}
