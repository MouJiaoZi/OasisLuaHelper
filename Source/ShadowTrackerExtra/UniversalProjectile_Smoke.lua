---@meta

---@class AUniversalProjectile_Smoke: AUniversalProjectileBase
---@field FinderFunction IExplosionFinderInterface
---@field MIDParamsName_FadeNear string
---@field MIDParamsInputRange_FadeNear FVector2D
---@field MIDParamsOutputRange_FadeNear FVector2D
---@field MIDParamsName_FadeFar string
---@field MIDParamsInputRange_FadeFar FVector2D
---@field MIDParamsOutputRange_FadeFar FVector2D
---@field bSmokeTearDown boolean
---@field SmokeStartTime number
---@field RangeScale number
---@field EffectScale number
---@field SmokeRadius number
---@field SmokeDuration number
---@field NormalDirection FVector
local AUniversalProjectile_Smoke = {}

---@param ImpactResult FHitResult
function AUniversalProjectile_Smoke:Explosion(ImpactResult) end

function AUniversalProjectile_Smoke:OnRep_bSmokeTearDown() end

function AUniversalProjectile_Smoke:OnRep_SmokeStartTime() end

---@param bEnable boolean
function AUniversalProjectile_Smoke:SetSmokeCollision(bEnable) end

function AUniversalProjectile_Smoke:UpdateSmokeAlpha() end

---@param Lifetime number
function AUniversalProjectile_Smoke:SetSmokeLifetime(Lifetime) end

---@return number
function AUniversalProjectile_Smoke:GetWorldTimeSeconds() end

---@param InAlpha number
function AUniversalProjectile_Smoke:UpdateProjectileAlpha(InAlpha) end
