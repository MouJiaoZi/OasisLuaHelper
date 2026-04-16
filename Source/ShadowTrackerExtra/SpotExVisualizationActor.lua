---@meta

---SpotEx点位可视化Actor 使用InstancedStaticMeshComponent进行点位渲染，支持Highlight透视
---@class ASpotExVisualizationActor: AActor
---@field InstanceScale FVector @实例缩放（用于调整点位大小）
---@field bHighlightEnabled boolean @当前是否开启Highlight
---@field HighlightColor FLinearColor @当前Highlight颜色
local ASpotExVisualizationActor = {}

---批量添加点位实例
---@param Points ULuaArrayHelper<FSpotExPointInfo>
function ASpotExVisualizationActor:AddInstances(Points) end

---清空所有实例
function ASpotExVisualizationActor:ClearAllInstances() end

---获取当前实例数量
---@return number
function ASpotExVisualizationActor:GetInstanceCount() end

---设置Highlight透视效果
---@param bEnabled boolean
---@param Color FLinearColor
function ASpotExVisualizationActor:SetHighlightEnabled(bEnabled, Color) end

---设置Highlight是否穿墙渲染（忽略深度遮挡）
---@param bIgnoreDepth boolean
function ASpotExVisualizationActor:SetHighlightIgnoreDepth(bIgnoreDepth) end

---设置用于实例化的StaticMesh
---@param NewMesh UStaticMesh
function ASpotExVisualizationActor:SetInstanceMesh(NewMesh) end

---设置实例的材质
---@param NewMaterial UMaterialInterface
function ASpotExVisualizationActor:SetInstanceMaterial(NewMaterial) end

---设置实例的缩放
---@param NewScale FVector
function ASpotExVisualizationActor:SetInstanceScale(NewScale) end
