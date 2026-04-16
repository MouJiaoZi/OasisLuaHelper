---@meta

---@class FLocationQueryConfig
---@field QueryBackUnit number
---@field QueryBackAttenuation number
---@field QueryBackNum number
---@field QueryAngleUnit number
---@field QueryAngleNum number
---@field LineTraceUpDownOffset FVector2D
---@field CapsuleTraceRadius number
---@field CapsuleTraceOffsetZ number
---@field PawnHalfHeight number
---@field CapsuleTraceRadius_OverlapDelta number
---@field PawnHalfHeight_OverlapDelta number
---@field bIncludeOrigin boolean
---@field bCheckVisibilityBlock boolean
---@field bCheckBlock_Origin boolean
---@field TraceObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field bAlwaysNeedHasGround boolean
FLocationQueryConfig = {}


---@class FLocationQueryParams
---@field IgnoreActors ULuaArrayHelper<AActor>
---@field bOriginCheckGroundByCapsule boolean
FLocationQueryParams = {}


---@class FValidTeleportLocationFinderWrapper
FValidTeleportLocationFinderWrapper = {}


---@class UValidTeleportLocationFinder: UObject
---@field QueryConfig FLocationQueryConfig
local UValidTeleportLocationFinder = {}

---@param OwnerPawn APawn
---@param InTransform FTransform
---@param StartQueryIndex number
---@param OutLocation FVector
---@return boolean
function UValidTeleportLocationFinder:QueryValidLocation(OwnerPawn, InTransform, StartQueryIndex, OutLocation) end

---@param OwnerPawn APawn
---@param InTransform FTransform
---@param StartQueryIndex number
---@param OutLocation FVector
---@param LocationParams FLocationQueryParams
---@return boolean
function UValidTeleportLocationFinder:QueryValidLocationWithParams(OwnerPawn, InTransform, StartQueryIndex, OutLocation, LocationParams) end
