---@meta

---@class FShapeTransformData
---@field Key number
---@field CameraSpringLength number
---@field CameraProbeSize number
---@field MeshOffsetLocation FVector
---@field bNeedCapsuleCollision boolean
---@field BoxExtent FVector
---@field CapsuleRadius number
---@field CapsuleHeight number
FShapeTransformData = {}


---@class UShapeTransformationComponent: UActorComponent
---@field DefaultCameraSpringLength number
---@field DefaultCameraProbeSize number
---@field ShapeDatas ULuaArrayHelper<FShapeTransformData>
---@field bIsHumanShape boolean
---@field ShapeIndex number
local UShapeTransformationComponent = {}

function UShapeTransformationComponent:TransformToRandomShape() end

---@param Key number
function UShapeTransformationComponent:TransformByShapeKey(Key) end

---@param Index number
function UShapeTransformationComponent:TransformByShapeIndex(Index) end

function UShapeTransformationComponent:TransformBackToHuman() end

---@param Index number
function UShapeTransformationComponent:SetCameraParam(Index) end

function UShapeTransformationComponent:OnRep_ShapeIndex() end
