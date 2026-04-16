---@meta

---@class FSplineBaseData
---@field SplineMeshComponents ULuaArrayHelper<USplineMeshComponent>
FSplineBaseData = {}


---@class USplineGeneratorComponent: UActorComponent
---@field SplineMeshAxis ESplineMeshAxis
---@field SplineUpDir FVector
---@field SplineMobilityType EComponentMobility
---@field SplineBaseDataArray ULuaArrayHelper<FSplineBaseData>
---@field MaxLineInstance number
---@field bEnableJitterCurve boolean
---@field bUseTimeRotationCurve boolean
---@field JitterTime number
---@field DistanceScale number
---@field TimeScale number
local USplineGeneratorComponent = {}

---@param InstigatorActor AActor
---@param SocketName string
---@param StartLocationOffset FVector
---@param LengthPerPiece number
---@param FinishedTime number
---@return number
function USplineGeneratorComponent:AddSpline(InstigatorActor, SocketName, StartLocationOffset, LengthPerPiece, FinishedTime) end

---@param Index number
function USplineGeneratorComponent:RemoveSpline(Index) end

function USplineGeneratorComponent:RemoveAllSpline() end
