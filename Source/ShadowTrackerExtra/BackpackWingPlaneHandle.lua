---@meta

---@class FWingManStaticMeshParticleSockets
---@field SocketName string
---@field ParticleSystem FSoftObjectPath
FWingManStaticMeshParticleSockets = {}


---@class UBackpackWingPlaneHandle: UBattleItemHandleBase
---@field battleSkMesh USkeletalMesh
---@field battleSkMeshEntranceAnim UAnimationAsset
---@field TeamAssembleDisplayAnim UAnimationAsset
---@field battleStMesh UStaticMesh
---@field BattleAdditionStMesh ULuaArrayHelper<UStaticMesh>
---@field BattleParticleSystem UParticleSystem
---@field CallAirdropAkAudioEvent UAkAudioEvent
---@field BattleAkAudioEvent UAkAudioEvent
---@field WinnerResultAkAudioEvent UAkAudioEvent
---@field LobbySkMesh USkeletalMesh
---@field LobbySkMeshLod00 USkeletalMesh
---@field AnimBPClass UAnimInstance
---@field MeshMat UMaterialInterface
---@field Lod00MeshMat UMaterialInterface
---@field LobbyParticleEffect_helpSocket UParticleSystem
---@field LobbyParticleEffect_helpSocket_0 UParticleSystem
---@field LobbyWingManTranslucentPriority number
---@field MatInstanceMapping ULuaMapHelper<UMaterialInterface, UMaterialInterface>
---@field DeviceQualityLevel number
---@field Particles ULuaArrayHelper<FWingManStaticMeshParticleSockets>
local UBackpackWingPlaneHandle = {}

function UBackpackWingPlaneHandle:GetAdditionSTMeshPath() end
