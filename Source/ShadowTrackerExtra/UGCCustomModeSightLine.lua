---@meta

---@class UUGCCustomModeSightLine: UObject
---@field SightLineParticleConfigMap ULuaMapHelper<EWeaponTypeNew, UParticleSystem>
local UUGCCustomModeSightLine = {}

---@param ShootWeapon ASTExtraShootWeapon
function UUGCCustomModeSightLine:OnEquipWeapon(ShootWeapon) end

---@param ShootWeapon ASTExtraShootWeapon
function UUGCCustomModeSightLine:FindSightLineTemplateByShootWeapon(ShootWeapon) end

---@param Weapon ASTExtraWeapon
function UUGCCustomModeSightLine:DestroySightLineEffect(Weapon) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function UUGCCustomModeSightLine:HandleClientAvatarAsyncLoadingFinished(AsyncLoadID, LoadEventFrom) end
