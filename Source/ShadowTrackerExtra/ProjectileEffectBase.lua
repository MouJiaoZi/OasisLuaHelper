---@meta

---@class UProjectileEffectBase: UObject
---@field bCanApplyParams boolean
---@field bIsEnable boolean
local UProjectileEffectBase = {}

---@param Params FProjectileParams
function UProjectileEffectBase:ApplyParams(Params) end

---@param GroupKey string
---@param GroupData FProjectileGroupData
function UProjectileEffectBase:ProjectileListInGroupChanged(GroupKey, GroupData) end

function UProjectileEffectBase:OnOwnerProjectileRespawned() end

function UProjectileEffectBase:OnOwnerProjectileRecycled() end

---@return boolean
function UProjectileEffectBase:HasAuthority() end

---@return number
function UProjectileEffectBase:GetTimeStamp() end

---@param bInReplicates boolean
function UProjectileEffectBase:SetReplicates(bInReplicates) end
