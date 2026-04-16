---@meta

---@class UActorFilter_Visibility: UActorFilter
---@field IgnoreActorClasses ULuaArrayHelper<AActor>
---@field bTraceEyes number
---@field bTraceChannel number
---@field BlockChannel ECollisionChannel
---@field BlockObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field MultiTestGrid FIntPoint
local UActorFilter_Visibility = {}

---@param FilterParams FActorFilterParams
---@param InHitActor AActor
---@param InTarget AActor
---@return boolean
function UActorFilter_Visibility:IsTargetBlock(FilterParams, InHitActor, InTarget) end
