---@meta

---枪械射击配置
---@class FSuperAIShootConfig
---@field WeaponType EWeaponTypeNew
---@field WeaponShotType EAIWeaponShootType
---@field DeviationScale number
---@field HitCount number
---@field ResetTime number
---@field ShootInterval number
---@field ShootRandomDeviation FVector2D
---@field HitRate FVector2D
FSuperAIShootConfig = {}


---某个射击距离不同枪械射击配置
---@class FSuperAIShootDistanceConfig
---@field ShootDistance number
---@field ShootConfigs ULuaArrayHelper<FSuperAIShootConfig>
FSuperAIShootDistanceConfig = {}


---所有射击距离不同枪械射击配置
---@class FSuperAIShootAllDistanceConfig
---@field ShootDistanceConfigs ULuaArrayHelper<FSuperAIShootDistanceConfig>
FSuperAIShootAllDistanceConfig = {}


---超级AI射击
---@class UBTService_SuperAIShooting: UBTService
---@field ShootRandomDeviation FVector2D @没有敌人或者枪械时默认开火间隔
---@field ShootAllDistanceConfigs FSuperAIShootAllDistanceConfig
---@field bUseDifficultyLevel boolean
---@field DifficultyShootConfigs ULuaMapHelper<number, FSuperAIShootAllDistanceConfig>
---@field ReloadBlackBoardKey FBlackboardKeySelector
---@field bSetCanSeeTargetFlag boolean
---@field bCheckShootingAngle boolean
---@field TolerateShootingAngle number
---@field RememberHitCountTime number
---@field bDebugLog boolean
---@field bDrawDebugShootingArea boolean
---@field DebugShootingAreaLineWidth number
---@field DebugShootingTargetSphereRadius number
local UBTService_SuperAIShooting = {}
