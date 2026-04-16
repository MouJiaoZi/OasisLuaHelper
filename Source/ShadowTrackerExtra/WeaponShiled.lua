---@meta

---盾牌武器
---@class AWeaponShiled: ASTExtraWeapon
---@field VerifyMeshToPawnForwardDis number
---@field VerifyMeshToPawnLocOffset FVector
---@field VerifyMeshToPawnLocOffsetCrouch FVector
---@field VerifyMeshToPawnRotOffset FRotator
---@field VerifyMeshRelativeTransformStand FTransform
---@field VerifyMeshRelativeTransformCrouch FTransform
---@field VerifyMeshRelativeTransformStandWithPistol FTransform
---@field VerifyMeshRelativeTransformCrouchWithPistol FTransform
---@field VerifyMeshRelativeTransformStandWithPistolADS FTransform
---@field VerifyMeshRelativeTransformCrouchWithPistolADS FTransform
---@field VerifyMeshRelativeTransformStandWithPistolADSSim FTransform
---@field VerifyMeshRelativeTransformCrouchWithPistolADSSim FTransform
---@field OnPreWeaponShiledEquip FOnWeaponShiledEquip
local AWeaponShiled = {}

---@param MeshLoc FVector
---@param Rot FRotator
---@param bAbsolute boolean
function AWeaponShiled:RefreshVerifyMeshLocAndRotOnServer(MeshLoc, Rot, bAbsolute) end

---@param bAbsolute boolean
function AWeaponShiled:AdjustVerifyMeshToPawnForwardLocOnServer(bAbsolute) end

function AWeaponShiled:AdjustVerifyMeshToPawnForwardLocBP() end

function AWeaponShiled:UpdateMesh() end

---@param TotalDamage number
---@param bBroken boolean
function AWeaponShiled:ReportDamageRecord(TotalDamage, bBroken) end
