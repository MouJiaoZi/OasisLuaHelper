---@meta

---@class FExtraStateScoreConfig
---@field TargetDynamicState FGameplayTag
---@field DynamicStateScore number
FExtraStateScoreConfig = {}


---@class UBTService_MobaHero_ChooseEnemy: UBTService
---@field OutTargetMinionActor any
---@field LastHitHpThreshold number
---@field OutTargetHeroActor any
---@field CanSeeStateScore number
---@field UnCoverStateScore number
---@field UnCoverTime number
---@field SeeOnMapStateScore number
---@field UpDistanceLimit number
---@field DistanceScoreRate number
---@field HpScoreRate number
---@field EquipmentScoreRate number
---@field bEnableExtraDamageSocre boolean
---@field DamageTimeLimit number
---@field bEnableExtraStateSocre boolean
---@field ExtraStateScoreConfig ULuaArrayHelper<FExtraStateScoreConfig>
---@field OutTargetTowerActor any
---@field EnableAllyForHelpStrategy boolean
---@field TargetProviderParams_AllyForHelp FTargetProviderParams
---@field EnableEnemyHatredStrategy boolean
---@field TargetProviderParams_EnemyHatred FTargetProviderParams
---@field EnableEnemyDistanceStrategy boolean
---@field TargetProviderParams_EnemyDistance FTargetProviderParams
local UBTService_MobaHero_ChooseEnemy = {}
