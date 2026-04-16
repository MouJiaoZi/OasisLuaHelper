---@meta

---@class ETestBoneVertexType
---@field None number
---@field ContainOneIgnoreBone number
---@field AllInTestBone number
---@field OnlyInOneTestBone number
---@field Max number
ETestBoneVertexType = {}


---@class FMeshVertexData
FMeshVertexData = {}


---@class USkeletalMeshTriangleCollisionComponent: UActorComponent
---@field MeshList ULuaArrayHelper<UMeshComponent>
---@field MeshComInitOnce boolean
---@field TestBoneVertexType ETestBoneVertexType
local USkeletalMeshTriangleCollisionComponent = {}

function USkeletalMeshTriangleCollisionComponent:OnCollisionUpdated() end
