---@meta

---@class FEscapeParamoLavaAkClosestLocation
---@field ClosestEdgeLocation FVector
---@field ClosestSplineLocation FVector
FEscapeParamoLavaAkClosestLocation = {}


---@class FEscapeParamoLavaBoundaryLocationData
---@field bHasBoundary boolean
---@field BoundaryLocation FVector
FEscapeParamoLavaBoundaryLocationData = {}


---@class FEscapeParamoLavaSplineList
---@field SplineList ULuaArrayHelper<USplineComponent>
FEscapeParamoLavaSplineList = {}


---@class AEscapeParamoLavaAkManager: AActor
---@field UpdateRate number
---@field LavaEdgeStepDistance number
---@field LavaEdgeStepDivideCount number
---@field LavaBoundaryStepDistance number
---@field LavaBoundaryStepDivideCount number
---@field LavaAkFollowForwardOffset number
---@field LavaAkFollowTraceDistance number
---@field bLavaAkTraceFloor boolean
---@field LavaAkTraceFloorDistance number
---@field BoxCullSplineThreshold number
---@field UpdateEffectsTimer FTimerHandle
---@field bTickUpdateLavaAk boolean
---@field LavaSplineList ULuaArrayHelper<USplineComponent>
---@field FlowLavaSplineList ULuaArrayHelper<USplineComponent>
---@field CachedLavaAkLocation FVector
---@field LavaSplineBoundaryLocationMap ULuaMapHelper<USplineComponent, FVector>
---@field BoxLavaSplinesMap ULuaMapHelper<UBoxComponent, FEscapeParamoLavaSplineList>
local AEscapeParamoLavaAkManager = {}

function AEscapeParamoLavaAkManager:UpdateFlowLavaBoundary() end

function AEscapeParamoLavaAkManager:UpdateLavaAk() end

function AEscapeParamoLavaAkManager:UpdateEffects() end

---@param StartLocation FVector
---@param EndLocation FVector
---@return FVector
function AEscapeParamoLavaAkManager:GetHighDamageLavaEdgeLocation(StartLocation, EndLocation) end

---@param FlowLavaSpline USplineComponent
---@return FEscapeParamoLavaBoundaryLocationData
function AEscapeParamoLavaAkManager:GetFlowLavaSplineBoundaryLocation(FlowLavaSpline) end

---@param InLocation FVector
---@param TraceDistance number
---@param HitLocation FVector
---@return boolean
function AEscapeParamoLavaAkManager:GetHitLavaLocation(InLocation, TraceDistance, HitLocation) end

---@param PawnLocation FVector
---@param InSplineList ULuaArrayHelper<USplineComponent>
---@return FEscapeParamoLavaAkClosestLocation
function AEscapeParamoLavaAkManager:GetClosestLavaLocationBySplines(PawnLocation, InSplineList) end
