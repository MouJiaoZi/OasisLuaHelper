---@meta

---@class FGrenadePredictResult
---@field SplinePoints ULuaArrayHelper<FVector>
---@field IsHitActor boolean
---@field HitActorLocation FVector
---@field HitActorRotation FRotator
FGrenadePredictResult = {}


---@class AGrenadePredictLine: AActor
---@field HighThrowOffset FVector
---@field LowThrowOffset FVector
---@field ThrowMode EThrowGrenadeMode
---@field PredictLineVelocityScale number
---@field MaxSimTime number
---@field GrenadePredictResult FGrenadePredictResult
---@field GrenadeRadius number
---@field PredictLineStartLocation FVector
---@field PredictLineStartVelocity FVector
---@field LauncheVelocity FVector
local AGrenadePredictLine = {}

---@param bNewVisible boolean
function AGrenadePredictLine:SetGrenadePredictLineVisible(bNewVisible) end
