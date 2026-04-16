---@meta

---@class FVisibilityParams
---@field IgnoreActorClasses ULuaArrayHelper<AActor>
---@field bTraceChannel number
---@field BlockChannel ECollisionChannel
---@field BlockObjectTypes ULuaArrayHelper<EObjectTypeQuery>
FVisibilityParams = {}


---@class UActorFilter_InSight: UActorFilter
---@field InSightAngle number
---@field VisibilityParamsInFilter FVisibilityParams
---@field bUseCameraEither boolean
local UActorFilter_InSight = {}

---@param FilterParams FActorFilterParams
---@param InHitActor AActor
---@param InTarget AActor
---@return boolean
function UActorFilter_InSight:IsTargetBlock(FilterParams, InHitActor, InTarget) end
