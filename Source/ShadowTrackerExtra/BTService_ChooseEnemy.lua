---@meta

---@class EChooseEnemyType
---@field EnemyType_Player number @人
---@field EnemyType_YearBeast number @年兽
---@field EnemyType_Animal number @小动物
---@field EnemyType_Zombie number @僵尸
---@field EnemyType_UAV number @无人载具
EChooseEnemyType = {}


---@class FWeaponType2Range
---@field WeaponType EWeaponTypeNew
---@field Range number
---@field NightRange number
FWeaponType2Range = {}


---@class FWeaponTypeToRange
---@field WeaponType EWeaponTypeNew
---@field Range number
FWeaponTypeToRange = {}


---@class FWeatherToRange
---@field Ranges ULuaArrayHelper<FWeaponTypeToRange>
FWeatherToRange = {}


---@class FChooseEnemyRadiusConfig
---@field SensedRadius number
---@field EquipWeaponSensedRadius number
---@field DefaultWeaponTypeToRanges ULuaArrayHelper<FWeaponTypeToRange>
---@field WeatherToRange ULuaMapHelper<EWeatherStatusType, FWeatherToRange>
---@field WeatherTypeToWeatherRange ULuaMapHelper<EWeatherStatusType, EWeatherStatusType>
FChooseEnemyRadiusConfig = {}


---@class FFanChooseEnemyRadiusConfig
---@field FanChooseDegree number
FFanChooseEnemyRadiusConfig = {}


---@class UBTService_ChooseEnemy: UBTService
---@field MaxRememberEnemyTimeInSeconds number
---@field MaxRememberLastAttackedMeTimeInSeconds number
---@field MaxTraceLastAttackedMeDistance number
---@field MinTimeWhenCannotSeeTarget number
---@field MinTimeLockTarget number
---@field SensedRadius number
---@field EquipWeaponSensedRadius number
---@field DefaultWeaponTypeToRanges ULuaArrayHelper<FWeaponTypeToRange>
---@field WeatherToRange ULuaMapHelper<EWeatherStatusType, FWeatherToRange>
---@field WeatherTypeToWeatherRange ULuaMapHelper<EWeatherStatusType, EWeatherStatusType>
---@field bUseCircleDifficultyLevel boolean
---@field CircleChooseEnemyDifficultyCfg ULuaMapHelper<number, FChooseEnemyRadiusConfig>
---@field bUseFanChoose boolean
---@field FanRadiusConfig FFanChooseEnemyRadiusConfig
---@field bUseFanChooseDifficultyLevel boolean
---@field FanChooseEnemyDifficultyCfg ULuaMapHelper<number, FFanChooseEnemyRadiusConfig>
---@field TraceStartOffset FVector
---@field TraceEndOffset FVector
---@field ChooseEnemyTypes ULuaArrayHelper<EChooseEnemyType>
---@field bChooseNearDeathPlayer boolean
---@field CannotChooseNearDeathPlayerTime number
---@field bChoosePlayerHiddenOnVehicle boolean
---@field bChooseDisguisedPlayer boolean
---@field IgnoreDisguisedPlayerSpeedLimit number
---@field bFindEnemyByComp boolean
---@field PlayerRadiusForAIIgnoreOtherBTAI number
local UBTService_ChooseEnemy = {}
