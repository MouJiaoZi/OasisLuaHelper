---@meta

---@class FProjectileGroupData
---@field GroupKey string
---@field ProjectileGroup ULuaArrayHelper<APESkillProjectileBase>
---@field CreateTime number
---@field CreateForward FVector
---@field GroupRecordPosition FVector
FProjectileGroupData = {}


---@class UProjectileGroupModule: UPersistEffectBase
---@field ProjectileGroupDataMap ULuaMapHelper<string, FProjectileGroupData>
---@field RepProjectileGroupData ULuaArrayHelper<FProjectileGroupData>
---@field ProjectileGroupChanged FProjectileGroupChanged
local UProjectileGroupModule = {}

---@param GroupKey string
---@param Projectile APESkillProjectileBase
---@return FProjectileGroupData
function UProjectileGroupModule:RegisterProjectileGroup(GroupKey, Projectile) end

---@param DestroyedActor AActor
function UProjectileGroupModule:RemoveProjectileFromProjectileGroup(DestroyedActor) end

function UProjectileGroupModule:OnRep_RepProjectileGroupData() end

function UProjectileGroupModule:SyncProjectileGroupDataMap() end
