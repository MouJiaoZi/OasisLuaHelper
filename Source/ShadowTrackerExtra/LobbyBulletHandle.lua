---@meta

---@class ULobbyBulletHandle: UBattleItemHandleBase
---@field TrailSeq ULevelSequence
---@field BindActorName string
---@field BindParticleName string
---@field LaunchParticle UParticleSystem
---@field ExplosionParticle UParticleSystem @/
---@field ExplosionAudio UAkAudioEvent
---@field ReplayDuration number
---@field BulletItem AActor
---@field BulletItemLow AActor
---@field SKMesh USkeletalMesh
---@field SKMeshLOD USkeletalMesh
---@field STMesh UStaticMesh
---@field STMeshLOD UStaticMesh
---@field MaterialList ULuaArrayHelper<FMaterialAssetSet>
---@field MaterialListLOD ULuaArrayHelper<FMaterialAssetSet>
---@field DefaultParticleList ULuaArrayHelper<FAttachParticle>
local ULobbyBulletHandle = {}

---@return FSoftObjectPath
function ULobbyBulletHandle:GetBulletSkMeshPath() end

---@return FSoftObjectPath
function ULobbyBulletHandle:GetBulletStMeshPath() end

function ULobbyBulletHandle:GetBulletMaterial() end

function ULobbyBulletHandle:GetBulletActor() end
