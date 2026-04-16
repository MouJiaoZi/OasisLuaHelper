---@meta

---@class FMoveIgnoreComponentsData
---@field ItemIndex number
---@field BoneName string
FMoveIgnoreComponentsData = {}


---@class AEliteProjectile_Simplest: AEliteProjectile
local AEliteProjectile_Simplest = {}


---@class AEliteProjectile_MeshOnly: AEliteProjectile
local AEliteProjectile_MeshOnly = {}


---@class AEliteProjectile_NoRotate: AEliteProjectile
local AEliteProjectile_NoRotate = {}


---@class AEliteProjectile_SkeletalMesh: AEliteProjectile
local AEliteProjectile_SkeletalMesh = {}


---@class AEliteProjectile_DrillGrenadeSubProjectile: AEliteProjectile_MeshOnly
---@field MoveIgnoreData ULuaArrayHelper<FMoveIgnoreComponentsData>
local AEliteProjectile_DrillGrenadeSubProjectile = {}

---@param ComponentToIgnore UPrimitiveComponent
---@param ItemIndex number
---@param BoneName string
function AEliteProjectile_DrillGrenadeSubProjectile:IgnoreComponentWhenMoving(ComponentToIgnore, ItemIndex, BoneName) end


---@class AEliteProjectile_SkeletalMesh_CustomAttachmentReplication: AEliteProjectile_SkeletalMesh
---@field bNeedAttachmentReplication boolean
local AEliteProjectile_SkeletalMesh_CustomAttachmentReplication = {}
