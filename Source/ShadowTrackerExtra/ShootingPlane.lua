---@meta

---@class AShootingPlane: AActivityBaseActor
---@field HitRange number
---@field HitDamage number
---@field bTickUpadateSocketOffset boolean
---@field bTickUpadateTargetOffset boolean
---@field bCheckEnemyHit boolean
local AShootingPlane = {}

---@param HitActor AActor
function AShootingPlane:OnEnemyHit(HitActor) end

function AShootingPlane:PlayCameraShake() end

---@param bSwitch boolean
function AShootingPlane:SwitchObjectPool(bSwitch) end
