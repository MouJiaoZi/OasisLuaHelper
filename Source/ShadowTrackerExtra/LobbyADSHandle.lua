---@meta

---@class ULobbyADSHandle: UBattleItemHandleBase
---@field SKMesh USkeletalMesh
---@field SKMeshLOD USkeletalMesh
---@field STMesh UStaticMesh
---@field STMeshLOD UStaticMesh
---@field MaterialList ULuaArrayHelper<FMaterialAssetSet>
---@field MaterialListLOD ULuaArrayHelper<FMaterialAssetSet>
---@field DefaultParticleList ULuaArrayHelper<FAttachParticle>
---@field LobbyAnimBPClass UAnimInstance
---@field DestroyShowAnim UAnimationAsset
---@field SurroundingEffect FAttachParticle
---@field ExplosionParticle FAttachParticle
---@field ExplosionAudio UAkAudioEvent
---@field ReplayDuration number
local ULobbyADSHandle = {}

---@return FSoftObjectPath
function ULobbyADSHandle:GetADSSkMeshPath() end

---@return FSoftObjectPath
function ULobbyADSHandle:GetADSStMeshPath() end

function ULobbyADSHandle:GetADSMaterial() end
