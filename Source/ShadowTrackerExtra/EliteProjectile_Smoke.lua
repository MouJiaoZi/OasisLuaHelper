---@meta

---@class AEliteProjectile_Smoke: AEliteProjectile
---@field FinderFunction IExplosionFinderInterface
---@field BuffApplier FBuffApplierFunction
---@field BuffApplier_2 ULuaArrayHelper<FBuffApplierFunction>
---@field MIDParamsName_FadeNear string
---@field MIDParamsInputRange_FadeNear FVector2D
---@field MIDParamsOutputRange_FadeNear FVector2D
---@field MIDParamsName_FadeFar string
---@field MIDParamsInputRange_FadeFar FVector2D
---@field MIDParamsOutputRange_FadeFar FVector2D
---@field bSmokeTearDown boolean
---@field SmokeStartTime number
---@field SmokeDuration number
---@field RangeScale number
---@field EffectScale number
---@field NormalDirection FVector
local AEliteProjectile_Smoke = {}

---@return boolean
function AEliteProjectile_Smoke:IsSmokeStart() end

---@return number
function AEliteProjectile_Smoke:GetRadius() end

function AEliteProjectile_Smoke:OnRep_bSmokeTearDown() end

function AEliteProjectile_Smoke:OnRep_SmokeStartTime() end

---@param bEnable boolean
function AEliteProjectile_Smoke:SetSmokeCollision(bEnable) end

function AEliteProjectile_Smoke:UpdateSmokeAlpha() end

---@param Lifetime number
function AEliteProjectile_Smoke:SetSmokeLifetime(Lifetime) end

---@return number
function AEliteProjectile_Smoke:GetWorldTimeSeconds() end
