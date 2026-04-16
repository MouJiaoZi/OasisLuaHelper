---@meta

---极简路线绘制Actor 通过传入点和法线来动态绘制路线mesh
---@class AUGCSimpleTrailActor: AActor
---@field TrailWidth number
---@field ArrowLength number
---@field MaxVertexCount number
local AUGCSimpleTrailActor = {}

---清空所有路线
function AUGCSimpleTrailActor:ClearTrail() end

---批量设置路径点（自动平滑处理）
---@param Points ULuaArrayHelper<FVector>
---@param InNormals ULuaArrayHelper<FVector>
---@param bClearPrevious boolean
function AUGCSimpleTrailActor:SetTrailPoints(Points, InNormals, bClearPrevious) end

---@param InTrailMaterial UMaterialInterface
function AUGCSimpleTrailActor:SetTrailMaterial(InTrailMaterial) end
