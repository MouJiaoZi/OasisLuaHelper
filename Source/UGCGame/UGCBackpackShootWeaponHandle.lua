---@meta

---@class UUGCBackpackShootWeaponHandle: UUGCBackpackWeaponHandle
---@field ShootIntervalFactor number
---@field RecoilFactor number
---@field DeviationFactor number
---@field ReloadTimeFactor number
---@field SwitchTimeFactor number
---@field BaseImpactDamage number
---@field MinimumImpactDamage number
---@field BulletFireSpeed number
---@field BulletRange number
---@field MaxBulletNumInOneClip number
---@field AutoShootInterval number
---@field BurstShootCD number
---@field BurstShootBulletsNum number
---@field BurstShootInterval number
---@field MaxBulletNumInBarrel number
---@field BulletID number
---@field PickupBulletNum number
---@field AmmoConfigMap ULuaMapHelper<number, FUGCExtraBulletConfig>
local UUGCBackpackShootWeaponHandle = {}

function UUGCBackpackShootWeaponHandle:CopyWeaponAttributeToHandle() end
