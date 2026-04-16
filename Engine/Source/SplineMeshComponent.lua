---@meta

---@class ESplineMeshAxis
---@field X number
---@field Y number
---@field Z number
ESplineMeshAxis = {}


---Structure that holds info about spline, passed to renderer to deform UStaticMesh. Also used by Lightmass, so be sure to update Lightmass::FSplineMeshParams and the static lighting code if this changes!
---@class FSplineMeshParams
---@field StartPos FVector @Start location of spline, in component space.
---@field StartTangent FVector @Start tangent of spline, in component space.
---@field StartScale FVector2D @X and Y scale applied to mesh at start of spline.
---@field StartRoll number @Roll around spline applied at start
---@field StartOffset FVector2D @Starting offset of the mesh from the spline, in component space.
---@field EndPos FVector @End location of spline, in component space.
---@field EndTangent FVector @End tangent of spline, in component space.
---@field EndScale FVector2D @X and Y scale applied to mesh at end of spline.
---@field EndRoll number @Roll around spline applied at end.
---@field EndOffset FVector2D @Ending offset of the mesh from the spline, in component space.
FSplineMeshParams = {}


---A Spline Mesh Component is a derivation of a Static Mesh Component which can be deformed using a spline. Only a start and end position (and tangent) can be specified.
---@class USplineMeshComponent: UStaticMeshComponent, IInterface_CollisionDataProvider
---@field SplineParams FSplineMeshParams @Spline that is used to deform mesh
---@field SplineUpDir FVector @Axis (in component space) that is used to determine X axis for co-ordinates along spline
---@field bAllowSplineEditingPerInstance number @If true, spline keys may be edited per instance in the level viewport. Otherwise, the spline should be initialized in the construction script.
---@field bSmoothInterpRollScale number @If true, will use smooth interpolation (ease in/out) for Scale, Roll, and Offset along this section of spline. If false, uses linear
---@field ForwardAxis ESplineMeshAxis @Chooses the forward axis for the spline mesh orientation
---@field SplineBoundaryMin number @Minimum coordinate along the spline forward axis which corresponds to start of spline. If set to 0.0, will use bounding box to determine bounds
---@field SplineBoundaryMax number @Maximum coordinate along the spline forward axis which corresponds to end of spline. If set to 0.0, will use bounding box to determine bounds
---@field CachedMeshBodySetupGuid FGuid
---@field bMeshDirty number
local USplineMeshComponent = {}

---Update the collision and render state on the spline mesh following changes to its geometry
function USplineMeshComponent:UpdateMesh() end

---Get the start position of spline in local space
---@return FVector
function USplineMeshComponent:GetStartPosition() end

---Set the start position of spline in local space
---@param StartPos FVector
---@param bUpdateMesh boolean
function USplineMeshComponent:SetStartPosition(StartPos, bUpdateMesh) end

---Get the start tangent vector of spline in local space
---@return FVector
function USplineMeshComponent:GetStartTangent() end

---Set the start tangent vector of spline in local space
---@param StartTangent FVector
---@param bUpdateMesh boolean
function USplineMeshComponent:SetStartTangent(StartTangent, bUpdateMesh) end

---Get the end position of spline in local space
---@return FVector
function USplineMeshComponent:GetEndPosition() end

---Set the end position of spline in local space
---@param EndPos FVector
---@param bUpdateMesh boolean
function USplineMeshComponent:SetEndPosition(EndPos, bUpdateMesh) end

---Get the end tangent vector of spline in local space
---@return FVector
function USplineMeshComponent:GetEndTangent() end

---Set the end tangent vector of spline in local space
---@param EndTangent FVector
---@param bUpdateMesh boolean
function USplineMeshComponent:SetEndTangent(EndTangent, bUpdateMesh) end

---Set the start and end, position and tangent, all in local space
---@param StartPos FVector
---@param StartTangent FVector
---@param EndPos FVector
---@param EndTangent FVector
---@param bUpdateMesh boolean
function USplineMeshComponent:SetStartAndEnd(StartPos, StartTangent, EndPos, EndTangent, bUpdateMesh) end

---Get the start scaling
---@return FVector2D
function USplineMeshComponent:GetStartScale() end

---Set the start scaling
---@param StartScale FVector2D
---@param bUpdateMesh boolean
function USplineMeshComponent:SetStartScale(StartScale, bUpdateMesh) end

---Get the start roll
---@return number
function USplineMeshComponent:GetStartRoll() end

---Set the start roll
---@param StartRoll number
---@param bUpdateMesh boolean
function USplineMeshComponent:SetStartRoll(StartRoll, bUpdateMesh) end

---Get the start offset
---@return FVector2D
function USplineMeshComponent:GetStartOffset() end

---Set the start offset
---@param StartOffset FVector2D
---@param bUpdateMesh boolean
function USplineMeshComponent:SetStartOffset(StartOffset, bUpdateMesh) end

---Get the end scaling
---@return FVector2D
function USplineMeshComponent:GetEndScale() end

---Set the end scaling
---@param EndScale FVector2D
---@param bUpdateMesh boolean
function USplineMeshComponent:SetEndScale(EndScale, bUpdateMesh) end

---Get the end roll
---@return number
function USplineMeshComponent:GetEndRoll() end

---Set the end roll
---@param EndRoll number
---@param bUpdateMesh boolean
function USplineMeshComponent:SetEndRoll(EndRoll, bUpdateMesh) end

---Get the end offset
---@return FVector2D
function USplineMeshComponent:GetEndOffset() end

---Set the end offset
---@param EndOffset FVector2D
---@param bUpdateMesh boolean
function USplineMeshComponent:SetEndOffset(EndOffset, bUpdateMesh) end

---Get the forward axis
---@return ESplineMeshAxis
function USplineMeshComponent:GetForwardAxis() end

---Set the forward axis
---@param InForwardAxis ESplineMeshAxis
---@param bUpdateMesh boolean
function USplineMeshComponent:SetForwardAxis(InForwardAxis, bUpdateMesh) end

---Get the spline up direction
---@return FVector
function USplineMeshComponent:GetSplineUpDir() end

---Set the spline up direction
---@param InSplineUpDir FVector
---@param bUpdateMesh boolean
function USplineMeshComponent:SetSplineUpDir(InSplineUpDir, bUpdateMesh) end

---Get the boundary min
---@return number
function USplineMeshComponent:GetBoundaryMin() end

---Set the boundary min
---@param InBoundaryMin number
---@param bUpdateMesh boolean
function USplineMeshComponent:SetBoundaryMin(InBoundaryMin, bUpdateMesh) end

---Get the boundary max
---@return number
function USplineMeshComponent:GetBoundaryMax() end

---Set the boundary max
---@param InBoundaryMax number
---@param bUpdateMesh boolean
function USplineMeshComponent:SetBoundaryMax(InBoundaryMax, bUpdateMesh) end
