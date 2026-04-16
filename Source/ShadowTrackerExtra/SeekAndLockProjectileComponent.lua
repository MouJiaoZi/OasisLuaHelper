---@meta

---跟踪导弹准心组件发射组件
---@class USeekAndLockProjectileComponent: UNormalProjectileComponent
---@field ShootDirectFlyTime number
---@field TurnDirectionRadSpeed number
---@field FollowTargetTimeByStageMap ULuaMapHelper<ESeekAndLockStage, number>
---@field SeekAndLockRPGBulletUploadData FSeekAndLockRPGBulletUploadData
local USeekAndLockProjectileComponent = {}
