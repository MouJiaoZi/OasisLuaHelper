---@meta

---@class AEliteProjectile_Thermite: AEliteProjectile
---@field ProactiveDetectDelay number
---@field ProactiveDetectObjects ULuaArrayHelper<EObjectTypeQuery>
---@field ProactiveDetectCollisionShapeBP FCollisionShapeBP
---@field DetectOneTargetSpeed number
local AEliteProjectile_Thermite = {}

---@param InHitData FBulletHitInfoUploadData
---@return boolean
function AEliteProjectile_Thermite:SimulateHit(InHitData) end

---@param From FVector
---@param To FVector
function AEliteProjectile_Thermite:HandleProjectileMoved(From, To) end

---@param Hit FHitResult
function AEliteProjectile_Thermite:DetectOneTarget(Hit) end
