---@meta

---@class FSymmetricalOneSplineMeshGenerationData
---@field Roll number
---@field Scale FVector2D
---@field bDrawLeft number
---@field bDrawRight number
FSymmetricalOneSplineMeshGenerationData = {}


---@class FSymmetricalOneSplineMeshGenerationDatas
---@field SymmetricalOneSplineMeshGenerationDataArray ULuaArrayHelper<FSymmetricalOneSplineMeshGenerationData>
FSymmetricalOneSplineMeshGenerationDatas = {}


---@class USymmetricalOneSplineMeshGenerationComponent: USplineMeshGenerationBaseComponent
---@field SymmetricalOneSplineMeshGenerationDataDefault FSymmetricalOneSplineMeshGenerationData
---@field ComponentNameToSymmetricalOneSplineMeshGenerationDatas ULuaMapHelper<string, FSymmetricalOneSplineMeshGenerationDatas>
---@field LeftRightWidth number
---@field Axis ESplineMeshAxis
---@field MeshCollisionEnabled ECollisionEnabled
---@field bLoopintSpline number
local USymmetricalOneSplineMeshGenerationComponent = {}

---@param SplineComponent USplineComponent
function USymmetricalOneSplineMeshGenerationComponent:BuildSplineElement(SplineComponent) end

---@param SplineComponent USplineComponent
---@param Index number
---@param StaticMesh UStaticMesh
---@param SymmetricalOneSplineMeshGenerationDatas FSymmetricalOneSplineMeshGenerationDatas
---@param PerpendicularOfTangentOffset2D number
---@param NumbersOfSplinePoints number
function USymmetricalOneSplineMeshGenerationComponent:BuildDataElement(SplineComponent, Index, StaticMesh, SymmetricalOneSplineMeshGenerationDatas, PerpendicularOfTangentOffset2D, NumbersOfSplinePoints) end

---@param SplineComponent USplineComponent
---@return number
function USymmetricalOneSplineMeshGenerationComponent:GetNumberOfSplinePoints(SplineComponent) end

---@param Tangent FVector
---@param Length number
---@return FVector
function USymmetricalOneSplineMeshGenerationComponent:GetPerpendicular2DOfTangent2D(Tangent, Length) end
