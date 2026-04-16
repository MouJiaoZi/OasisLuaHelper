---@meta

---激光追踪导弹
---@class ALaserSeekAndLockRPGBullet: ASeekAndLockRPGBullet
---@field AutoExplodeSphereRadius number
---@field LaserLockNearTargetDistance number
---@field AutoExplodeVisibleAreaDegree number
---@field PassTraceTargetMinDegree number
---@field bAutoExplodeWhenReachTraceTarget boolean
---@field bDrawAutoExplodeSphere boolean
---@field DrawAutoExplodeSphereLifeTime number
---@field DrawAutoExplodeSphereThickness number
---@field CurLaserTracePosition FVector
---@field ServerBulletSpeed FVector
local ALaserSeekAndLockRPGBullet = {}

function ALaserSeekAndLockRPGBullet:OnRep_ServerBulletSpeed() end
