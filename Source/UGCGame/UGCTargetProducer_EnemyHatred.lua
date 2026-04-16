---@meta

---@class EUGCEnemyHatredMaxDistanceType
---@field Default number @不处理
---@field Plus number @固定增大
---@field Multiply number @比例增大
EUGCEnemyHatredMaxDistanceType = {}


---@class UUGCTargetProducer_EnemyHatred: UTargetProducer_EnemyHatred
---@field RandomChangeProbability number
---@field MaxSenseRadius number
---@field MaxViewRadius number
---@field MaxViewHeight number
---@field MaxViewAngle number
---@field bViewRangeCanBeBlock boolean
---@field TargetMaxLockTime number
---@field TargetMinLockTime number
---@field HatredElapseTime number
---@field HatredElapseDistance number
---@field EnemyHatredMaxDistanceType EUGCEnemyHatredMaxDistanceType
---@field HatredMaxDistanceMultiplyParam number
---@field HatredMaxDistancePlusParam number
---@field CurrentBestTarget AActor
local UUGCTargetProducer_EnemyHatred = {}

function UUGCTargetProducer_EnemyHatred:UpdateRangeLimit() end
