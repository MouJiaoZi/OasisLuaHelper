---@meta

---@class ECharacterMeshClipType
---@field PlaneClip number @平面裁剪
---@field SphereClip number @球面裁剪
ECharacterMeshClipType = {}


---@class FCharacterMeshClipData
---@field ClipType ECharacterMeshClipType
---@field Plane FPlane
---@field SphereCenter FVector
---@field SphereRadius number
FCharacterMeshClipData = {}


---@class FCharacterMeshClipData_Edit
---@field CopyData boolean
---@field ShowDebug boolean
---@field ShowColor FLinearColor
---@field ClipType ECharacterMeshClipType
---@field PlaneDistance number
---@field PlaneRotator FRotator
---@field SphereCenter FVector
---@field SphereRadius number
---@field Plane FPlane
FCharacterMeshClipData_Edit = {}


---@class UCharacterMeshClipComponent: UActorComponent
---@field AvatarClipDatas ULuaArrayHelper<FCharacterMeshClipData_Edit>
local UCharacterMeshClipComponent = {}
