---@meta

---@class UWeaponLaserEntity: UWeaponAvatarEntity
---@field CacheIgnoreActorList ULuaArrayHelper<AActor>
local UWeaponLaserEntity = {}

---@param AssetRef FSoftObjectPath
function UWeaponLaserEntity:RenderEntity(AssetRef) end

---@param ForceClear boolean
function UWeaponLaserEntity:ClearEntity(ForceClear) end

function UWeaponLaserEntity:ApplyParticleEffect() end

function UWeaponLaserEntity:RemoveParticleEffect() end

---@param DeltaTime number
function UWeaponLaserEntity:TickEntity(DeltaTime) end

---@param LineComp UParticleSystemComponent
---@param EndComp UParticleSystemComponent
function UWeaponLaserEntity:UpdateParticleAttribute(LineComp, EndComp) end

---@param DisableCheck boolean
function UWeaponLaserEntity:ResetEntityBeforePushToPool(DisableCheck) end

---@param DeltaSeconds number
function UWeaponLaserEntity:UpdateParticlesNew(DeltaSeconds) end

function UWeaponLaserEntity:OnOwnerWeaponPostInit() end
