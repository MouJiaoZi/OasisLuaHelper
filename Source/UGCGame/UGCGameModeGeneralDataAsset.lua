---@meta

---@class EUGCPlayerSpawnPointSelectionMethod
---@field DefaultSelectionMethod number @使用默认的PlayerStart作为出生点（关卡中第一个PlayerStart）
---@field DesignatedSpawnLocation number @使用指定世界坐标作为出生点
---@field RandomSpawnPoint number @关卡中所有PlayerStart随机选择一个作为出生点
---@field CampSpawnMethod number @使用阵营的出生方式
---@field DesignatedPlayerStartID number @使用指定PlayerStartID的出生点
EUGCPlayerSpawnPointSelectionMethod = {}


---@class EUGCPlayerRespawnPointSelectionMethod
---@field RespawnOnTheSpot number @原地复活
---@field DesignatedRespawnLocation number @使用指定世界坐标作为复活点
---@field RespawnBySpawnMethod number @以出生的方式选择复活点
EUGCPlayerRespawnPointSelectionMethod = {}


---@class EUGCCampSpawnPointSelectionMethod
---@field DesignatedCampSpawnLocation number @指定世界坐标
---@field DesignatedCampPlayerStartID number @指定PlayerStartID
EUGCCampSpawnPointSelectionMethod = {}


---@class EUGCDeadDropType
---@field DeadBox number @生成死亡盒子
---@field Scatter number @散落
---@field NoAll number @不生成盒子也不散落
EUGCDeadDropType = {}


---@class FUGCDamageNumberConfig
---@field TimeLife number
---@field MoveTimeLife number
---@field DrawColor FLinearColor
---@field DrawOutlineColor FLinearColor
---@field DrawOutlineSize number
---@field FadeInTime number
---@field FadeOutTime number
---@field SizeScaleRange FVector2D
---@field MoveScaleRange FVector2D
---@field OriginPositionRangeX FVector2D
---@field OriginPositionRangeY FVector2D
---@field MoveDirection FVector2D
---@field PreText string
---@field TailText string
---@field PreImage FSoftObjectPath
---@field PreImageScaleX number
---@field PreImageScaleY number
---@field TailImage FSoftObjectPath
---@field TailImageScaleX number
---@field TailImageScaleY number
---@field Priority number
---@field AbbrStartNumber number
---@field bFollowTarget boolean
FUGCDamageNumberConfig = {}


---@class FUGCCampPlayerStartInfo
---@field CampID number
---@field CampSpawnPointType EUGCCampSpawnPointSelectionMethod
---@field CampDesignatedSpawnLocation FVector
---@field CampPlayerStartID number
---@field bIsRandomCampPlayerStartIDWithMultiChoise boolean
FUGCCampPlayerStartInfo = {}


---@class FUGCDamageNumberSwitchConfig
---@field bEnableDamageNumberForGenericCharacter boolean
---@field bEnableDamageNumberForPlayer boolean
---@field bEnableDamageNumberForPlayerRecover boolean
---@field bEnableDamageNumberForGenericCharacterRecover boolean
FUGCDamageNumberSwitchConfig = {}


---@class FUGCItemQualityInfo
---@field QualityBarPath FSoftObjectPath
---@field QualityBgPath FSoftObjectPath
---@field EquipmentQualityBarPath FSoftObjectPath
FUGCItemQualityInfo = {}


---@class UUGCGameModeGeneralDataAsset: UGameModeGeneralDataAsset
---@field ActiveGamePartConfigs ULuaArrayHelper<UUGCGamePartConfig>
---@field DamageNumberSwitchConfig FUGCDamageNumberSwitchConfig
---@field DefaultDamageNumberConfig FUGCDamageNumberConfig
---@field DamageNumberConfig ULuaMapHelper<FGameplayTag, FUGCDamageNumberConfig>
---@field EntityTypeConfigDataAsset UCommonEntityTypeConfigDataAsset
---@field UGCPlayerSpawnPointSelectionMethod EUGCPlayerSpawnPointSelectionMethod
---@field UGCPlayerRespawnPointSelectionMethod EUGCPlayerRespawnPointSelectionMethod
---@field DesignateRespawnLocation FVector
---@field DesignatedSpawnLocation FVector
---@field DesignatedPlayerStartID number
---@field bIsRandomPlayerStartIDWithMultiChoise boolean
---@field bIsPlayerDirectlyDie boolean
---@field CampPlayerStartInfos ULuaMapHelper<number, FUGCCampPlayerStartInfo>
---@field DeadDropType EUGCDeadDropType
---@field HealthBarMaxShowNum number
---@field bShowBackpackButton boolean
---@field bEnablePreciseInteraction boolean
---@field MaxShowPreciseAtSameTime number
---@field MaxShowPreciseActorAtSameTime number
---@field MiniMapVoiceVisualizationFlag number
---@field ServerMainPath string
---@field ClientMainPath string
---@field ItemQualityInfos ULuaArrayHelper<FUGCItemQualityInfo>
local UUGCGameModeGeneralDataAsset = {}
