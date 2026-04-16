---@meta

---@class IDamageHitPartInterface: IInterface
IDamageHitPartInterface = {}

---@param HitPoint FVector
---@param DamageInstigator AActor
---@param DamageCauser AActor
---@param InHitPart EAvatarDamagePosition
---@return EAvatarDamagePosition
function IDamageHitPartInterface:GetDamageHitPart(HitPoint, DamageInstigator, DamageCauser, InHitPart) end


---@class IShootMovePlatformInterface: IInterface
IShootMovePlatformInterface = {}

---@return boolean
function IShootMovePlatformInterface:CheckSupportShootCriticalVerify() end


---@class IWeaponCrosshairInterface: IInterface
IWeaponCrosshairInterface = {}
