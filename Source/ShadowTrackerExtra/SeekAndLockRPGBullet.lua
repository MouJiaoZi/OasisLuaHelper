---@meta

---@class FRPGBulletSeekAndLockData
---@field DirectFlyTime number
---@field TurnDirectionRadSpeed number
---@field FollowTargetTime number
---@field FollowTarget AActor
FRPGBulletSeekAndLockData = {}


---@class FSeekAndLockRPGBulletLaunchParams
---@field BaseParam FProjectileBulletLaunchParams
---@field SeekAndLockData FRPGBulletSeekAndLockData
FSeekAndLockRPGBulletLaunchParams = {}


---跟踪导弹
---@class ASeekAndLockRPGBullet: AExplosionProjectileBullet
---@field MaxHp number
---@field SpeedAcceleration number
---@field MaxFlySpeed number
---@field DelayBurstSpeedUpTime number
---@field ServerSeekAndLockLaunchParams FSeekAndLockRPGBulletLaunchParams
---@field SeekAndLockData FRPGBulletSeekAndLockData
---@field CurFlyTime number
---@field CurHp number
---@field CurDelayBurstSpeedUpTime number
---@field bHasBurstSpeedUp boolean
---@field MaxTurnRadSpeed number
local ASeekAndLockRPGBullet = {}

---@param speed number
---@param Trans FTransform
---@param InOwningWeapon AActor
---@param InInstigator AActor
---@param _ShootID number
function ASeekAndLockRPGBullet:LaunchOnServer(speed, Trans, InOwningWeapon, InInstigator, _ShootID) end

---@param DamageAmount number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASeekAndLockRPGBullet:TakeDamage(DamageAmount, DamageEvent, EventInstigator, DamageCauser) end

function ASeekAndLockRPGBullet:BPOnStartBurstSpeedUp() end

---@param speed number
---@param Trans FTransform
---@param InOwningWeapon AActor
---@param InInstigator AActor
---@param _ShootID number
---@param Data FRPGBulletSeekAndLockData
function ASeekAndLockRPGBullet:RPC_Multicast_StartSeekAndLockLaunch(speed, Trans, InOwningWeapon, InInstigator, _ShootID, Data) end

---@param LaunchParams FSeekAndLockRPGBulletLaunchParams
function ASeekAndLockRPGBullet:RPC_Multicast_StartSeekAndLockLaunchNew(LaunchParams) end

---@param OldParam FSeekAndLockRPGBulletLaunchParams
function ASeekAndLockRPGBullet:OnRep_ServerSeekAndLockLaunchParams(OldParam) end
