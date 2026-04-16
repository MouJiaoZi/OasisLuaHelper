---@meta

---@class UDisplayVehicleAvatarComponent: UVehicleAvatarComponent
local UDisplayVehicleAvatarComponent = {}

---@param Slot number
---@param Mesh USkeletalMesh
---@param handle UBattleItemHandleBase
---@return boolean
function UDisplayVehicleAvatarComponent:ApplySkeletalMeshByID(Slot, Mesh, handle) end

---@param itemHandle UBattleItemHandleBase
---@param meshComp UMeshComponent
function UDisplayVehicleAvatarComponent:ApplyMaterial(itemHandle, meshComp) end

---@param ResId number
function UDisplayVehicleAvatarComponent:InitVehicleAvatarByResId(ResId) end
