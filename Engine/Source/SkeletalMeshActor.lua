---@meta

---SkeletalMeshActor is an instance of a USkeletalMesh in the world. Skeletal meshes are deformable meshes that can be animated and change their geometry at run-time. Skeletal meshes dragged into the level from the Content Browser are automatically converted to StaticMeshActors.
---@class ASkeletalMeshActor: AActor, IMatineeAnimInterface
---@field bShouldDoAnimNotifies number @Whether or not this actor should respond to anim notifies - CURRENTLY ONLY AFFECTS PlayParticleEffect NOTIFIES*
---@field bWakeOnLevelStart_DEPRECATED number
local ASkeletalMeshActor = {}

---Replication Notification Callbacks
function ASkeletalMeshActor:OnRep_ReplicatedMesh() end

function ASkeletalMeshActor:OnRep_ReplicatedPhysAsset() end

function ASkeletalMeshActor:OnRep_ReplicatedMaterial0() end

function ASkeletalMeshActor:OnRep_ReplicatedMaterial1() end
