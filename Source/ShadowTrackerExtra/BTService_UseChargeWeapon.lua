---@meta

---@class EGetChargeTimeType
---@field FixedValue number @固定值
---@field Distance number @由距离决定
EGetChargeTimeType = {}


---蓄力武器开火服务节点
---@class UBTService_UseChargeWeapon: UBTService
---@field InTargetBBK FBlackboardKeySelector
---@field GetChargeTimeType EGetChargeTimeType
---@field FixedChargeTime number
---@field DistanceAndChargeTimeMap ULuaMapHelper<number, number>
---@field bCheckVisibility boolean
---@field bCheckAngle boolean
---@field ShootingAngleRange FVector2D
---@field DeviationScale number
---@field bShootOnCeaseRelevant boolean
---@field MinChargeTimeIfShootOnCeaseRelevant number
---@field bContinuousShooting boolean
---@field CDTimeConfig FVector2D
---@field bShootDirectlyOutOfDistance boolean
---@field MaxDistance number
---@field MinChargeTimeIfOutOfDistance number
---@field OuIsFinishChargeWeaponShootKey FBlackboardKeySelector
---@field bRandomHit boolean
local UBTService_UseChargeWeapon = {}
