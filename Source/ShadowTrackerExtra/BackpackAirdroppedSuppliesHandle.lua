---@meta

---@class FHandleParticle
---@field SocketName string
---@field BehaveParticle UParticleSystem
---@field OffsetTrans FTransform
FHandleParticle = {}


---@class FAirdroppedParticleAndAudio
---@field BehaveParticles ULuaArrayHelper<FHandleParticle>
---@field BehaveAudio UAkAudioEvent
FAirdroppedParticleAndAudio = {}


---@class FHandleMeshCfg
---@field SkMesh USkeletalMesh
---@field StMesh UStaticMesh
---@field Socket string
---@field MeshMat ULuaMapHelper<string, UMaterialInterface>
---@field AnimBPClass UAnimInstance
---@field IdleAnim UAnimationAsset
---@field RoleAndQualitySelector FRoleAndQualityLobbySelector
FHandleMeshCfg = {}


---@class UBackpackAirdroppedSuppliesHandle: UBattleItemHandleBase
---@field LobbyModel_Bag FHandleMeshCfg
---@field LobbyModel_pendant FHandleMeshCfg
---@field LobbyModel_Bag_Device ULuaArrayHelper<FHandleMeshCfg>
---@field LobbyModel_pendant_Device ULuaArrayHelper<FHandleMeshCfg>
---@field LobbyModel_Addition ULuaMapHelper<string, FHandleMeshCfg>
---@field ParticlesAndAudio ULuaMapHelper<string, FAirdroppedParticleAndAudio>
local UBackpackAirdroppedSuppliesHandle = {}
