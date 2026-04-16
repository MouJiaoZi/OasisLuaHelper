---@meta

---Cached vertex information at the time the mesh was painted.
---@class FPaintedVertex
---@field Position FVector
---@field Normal FPackedNormal
---@field Color FColor
FPaintedVertex = {}


---@class FStaticMeshPointLightVertexDataBuffer
---@field VertexData ULuaArrayHelper<number>
FStaticMeshPointLightVertexDataBuffer = {}


---@class FStaticMeshComponentLODInfo
---@field PaintedVertices ULuaArrayHelper<FPaintedVertex> @Vertex data cached at the time this LOD was painted, if any
FStaticMeshComponentLODInfo = {}


---@class FOnStaticMeshPhysicsCreatedMultiCast : ULuaSingleDelegate
FOnStaticMeshPhysicsCreatedMultiCast = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStaticMeshPhysicsCreatedMultiCast:Bind(Callback, Obj) end

---执行委托
function FOnStaticMeshPhysicsCreatedMultiCast:Execute() end


---@class FOnStaticMeshPhysicsDestroyedMultiCast : ULuaSingleDelegate
FOnStaticMeshPhysicsDestroyedMultiCast = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStaticMeshPhysicsDestroyedMultiCast:Bind(Callback, Obj) end

---执行委托
function FOnStaticMeshPhysicsDestroyedMultiCast:Execute() end


---@class UStaticMeshComponent: UMeshComponent
---@field ForcedLodModel number
---@field PreviousLODLevel number
---@field MinLOD number
---@field MaxLOD number
---@field TightBoundsBoxExtent FVector
---@field TightBoundsSphereRadius number
---@field CanUseTightBound boolean
---@field VisibilityCollisionColor FColor
---@field bEnableSimpleMaterial boolean
---@field OverriddenLightMapRes number
---@field StreamingDistanceMultiplier number
---@field LODData any
---@field IsDynamicInstancingParametersEnabled boolean
---@field LightmassSettings any
---@field IdeaBakingSettings any
---@field PointLightStaticMeshLODResources any
---@field OutlineStaticMesh 
local UStaticMeshComponent = {}

---@param *OldStaticMesh UStaticMesh
function UStaticMeshComponent:OnRep_StaticMesh(*OldStaticMesh) end

---@param NewMesh UStaticMesh
---@return boolean
function UStaticMeshComponent:SetStaticMesh(NewMesh) end

function UStaticMeshComponent:SetDirty() end

---@param CollisionColor FColor
function UStaticMeshComponent:SetVisibilityCollisionColor(CollisionColor) end

---@return FColor
function UStaticMeshComponent:GetVisibilityCollisionColor() end

---@param *InStaticMesh UStaticMesh
function UStaticMeshComponent:SetOutlineMesh(*InStaticMesh) end

---@param NewForcedLodModel number
function UStaticMeshComponent:SetForcedLodModel(NewForcedLodModel) end

---@param NewValue number
function UStaticMeshComponent:SetDistanceFieldSelfShadowBias(NewValue) end

---@param Min FVector
---@param Max FVector
function UStaticMeshComponent:GetLocalBounds(Min, Max) end

---@param MaterialIndex number
---@param Name string
---@param Value FVector4
---@return number
function UStaticMeshComponent:SetDynamicInstancingParameter(MaterialIndex, Name, Value) end

---@param ClipPlane FPlane
---@param PlaneIndex number
function UStaticMeshComponent:EnableMeshClipPlane(ClipPlane, PlaneIndex) end

---@param PlaneIndex number
function UStaticMeshComponent:DisableMeshClipPlane(PlaneIndex) end

---@param ClipPlane FPlane
---@param ClipSphere FVector4
function UStaticMeshComponent:EnableMeshClipArc(ClipPlane, ClipSphere) end

function UStaticMeshComponent:DisableMeshClipArc() end

---@param ClipPlanes ULuaArrayHelper<FPlane>
---@param bBox boolean
function UStaticMeshComponent:EnableMeshClip4Planes(ClipPlanes, bBox) end

function UStaticMeshComponent:DisableMeshClip4Planes() end
