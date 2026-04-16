---@meta

---@class UWeaponPendantAvatarEntity: UWeaponAvatarEntity
---@field PendantSocketType EWeaponPendantSocketType
---@field WeaponHideLODLevel number
local UWeaponPendantAvatarEntity = {}

---@param SelfMesh USkeletalMesh
---@return EMeshType
function UWeaponPendantAvatarEntity:GetMeshType(SelfMesh) end

function UWeaponPendantAvatarEntity:SetSocketName() end

function UWeaponPendantAvatarEntity:EnterRenderPipeline() end

---@return boolean
function UWeaponPendantAvatarEntity:IsForceEnableAnim() end

---@return FWeaponPendantSocket
function UWeaponPendantAvatarEntity:GetPendantSocket() end

---@param SocketType EWeaponPendantSocketType
function UWeaponPendantAvatarEntity:SetPendantSocketType(SocketType) end

---@param PutDefault boolean
function UWeaponPendantAvatarEntity:ClearEquipmentLogic(PutDefault) end

---@param lod number
function UWeaponPendantAvatarEntity:LODIsChange(lod) end

---@param DisableCheck boolean
function UWeaponPendantAvatarEntity:ResetEntityBeforePushToPool(DisableCheck) end

---@param scale number
function UWeaponPendantAvatarEntity:SetPendantScale(scale) end
