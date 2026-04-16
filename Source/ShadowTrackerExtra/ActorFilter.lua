---@meta

---@class EActorFilterType
---@field PreFilter number
---@field Deprecated number
---@field CheckHitInfo number
---@field CheckAllInfo number
EActorFilterType = {}


---@class FActorFilterParams
---@field Origin FVector
---@field Direction FVector
FActorFilterParams = {}


---@class UActorFilter: UObject
---@field bInvertFilter boolean
local UActorFilter = {}


---@class UActorFilter_BlueprintBase: UActorFilter
local UActorFilter_BlueprintBase = {}

---@param ActorFilterParam FActorFilterParams
---@param Actor AActor
---@param Component UPrimitiveComponent
---@return boolean
function UActorFilter_BlueprintBase:BlueprintPreFilter(ActorFilterParam, Actor, Component) end

---@param ActorFilterParam FActorFilterParams
---@param InResult FHitResult
---@param OutResult FHitResult
---@return boolean
function UActorFilter_BlueprintBase:BlueprintFilter(ActorFilterParam, InResult, OutResult) end
