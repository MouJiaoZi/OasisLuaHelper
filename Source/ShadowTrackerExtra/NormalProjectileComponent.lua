---@meta

---@class FNormalProjectileVerifyConfig
---@field MaxShootPointTolerateDistanceOffset number @客户端传来的发射点与服务器角色位置可容忍最大偏差
---@field MaxShootPointTolerateDistanceOffsetVehicle number @在载具上时发射点与角色容错
---@field MaxImpactPointTolerateDistanceOffset number
---@field BlockVerifyImpactNormalOffset number
---@field bVerifyMuzzleHitBlock boolean @是否验证碰撞点到记录的枪口位置的穿墙 理论上，开启了重力的子弹都应该关掉 当前一直是默认开启的，所以对旧武器不进行配置 这个校验失败只会使用服务器位置进行爆炸，修改旧武器配置收益不高 对应函数：VerifyClientProjectileBulletImpact_VerifyBlock
---@field bVerifyBulletScDiff boolean @是否对服务器与客户端之间的子弹距离进行校验
---@field MaxDiffServerClient number @允许服务器子弹位置与客户端碰撞位置的最大距离偏差
---@field bVerifyShootDir2D boolean @是否对射线进行校验
---@field ShortDirReverseDistance number @在多长的距离以内允许射击方向校验的方向是反的
---@field TolerateBulletDirOffsetSquared number @允许的最大射线偏差
---@field bVerifyWeaponFireInfoTimeForcePunish boolean @是否启用射速校验 由于RPG这边是射出之前校验的，所以逻辑与默认子弹的射速校验稍有不同
---@field bVerifyClientFlySpeed boolean @是否验证客户端收集记录的速度信息 速度不能超过子弹的GetMaxBulletFlySpeed
---@field bVerifyLauchTimeWithServer boolean @是否验证客户端飞行时间不大于服务器飞行时间 要求子弹是在服务器确认之后再发射的，如果没有这个假定这个验证会失败！
---@field ClientServerFlyTimeTorelate number @客户端服务端的飞行时间比较时允许的容错 由于两边都是使用的帧时间，可能会出现计算上的误差： 1. 客户端收Launch包时帧率很低 2. 服务端收确认包时帧率很低 不过收包在Tick顺序中是很高的，出现误差的概率比较小。
FNormalProjectileVerifyConfig = {}


---发射所有客户端都可见的抛体组件
---@class UNormalProjectileComponent: USTEShootWeaponProjectComponent
---@field AutoRecoverShootLockInterval number
---@field bEnableCheckShootLock boolean
---@field DestroyBulletDelayAfterDestroyWeapon number
---@field bOwnerClientReCalcShootTransform boolean
---@field bEnableProjectileSimulateOBBulletTrack boolean
---@field VerifyConfig FNormalProjectileVerifyConfig
---@field OnHandleShootDamageDelegate FOnHandleShootDamageDelegate
---@field bNeedWaitClientBulletLaunch boolean
---@field CurShootLockInterval number
---@field bContinueSpawnBulletOnShootIntervalVerifyFailed boolean
---@field ProjectileSimulateRepCacheDataList ULuaArrayHelper<FProjectileSimulateRepCacheData>
---@field CriticalFrameNumber number
---@field Params FProjectileParams
local UNormalProjectileComponent = {}

---@return boolean
function UNormalProjectileComponent:CheckShootState() end

---@param DeltaTime number
function UNormalProjectileComponent:UpdateShootLockCD(DeltaTime) end

---@param OldFrameNumber number
function UNormalProjectileComponent:OnRep_CriticalFrameNumber(OldFrameNumber) end
