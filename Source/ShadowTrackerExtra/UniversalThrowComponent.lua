---@meta

---@class UUniversalThrowComponent: UCharacterThrowComponent
---@field UniversalProjectileClass AUniversalProjectileCore
---@field LaunchParams FProjectileParams
---@field bEnableExplosionDelayTime boolean
---@field bDrawTrajectory boolean
local UUniversalThrowComponent = {}

function UUniversalThrowComponent:OnRep_UniversalProjectileClass() end

function UUniversalThrowComponent:OnRep_SpawnedProjectile() end

---@param DestroyedActor AActor
function UUniversalThrowComponent:OnProjectileDestroyed(DestroyedActor) end

---@param PrevData FThrowObjectData
function UUniversalThrowComponent:OnRep_ThrowObjectData(PrevData) end

---@param InProjectilePrepareSound UAkAudioEvent
function UUniversalThrowComponent:Muticast_ModifyProjectilePrepareSound(InProjectilePrepareSound) end

---@param InExplosionDelayOverride number
function UUniversalThrowComponent:Multicast_ModifyExplosionDelayOverride(InExplosionDelayOverride) end

---@param bEnable boolean
function UUniversalThrowComponent:Multicast_SetEnableExplosionDelayOverride(bEnable) end

---@param bEnable boolean
function UUniversalThrowComponent:Multicast_EnableDrawTrajectory(bEnable) end
