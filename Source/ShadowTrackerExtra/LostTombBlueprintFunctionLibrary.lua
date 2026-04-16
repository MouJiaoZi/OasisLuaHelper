---@meta

---@class ULostTombBlueprintFunctionLibrary: UBlueprintFunctionLibrary
local ULostTombBlueprintFunctionLibrary = {}

---@param MeshComp UPrimitiveComponent
---@param bEnableOutline boolean
---@param OutlineColor FLinearColor
---@param OutlineThickness number
---@param bEnableOcclusion boolean
---@param OcclusionColor FLinearColor
---@param bEnableOutlineOcclusionPass boolean
---@param bUseNormalInVertexColor boolean
function ULostTombBlueprintFunctionLibrary:SetMeshOutlineAndOcclusion(MeshComp, bEnableOutline, OutlineColor, OutlineThickness, bEnableOcclusion, OcclusionColor, bEnableOutlineOcclusionPass, bUseNormalInVertexColor) end

---@param MeshComp UPrimitiveComponent
function ULostTombBlueprintFunctionLibrary:RemoveMeshOutlineAndOcclusion(MeshComp) end

---@param AttrTarget AActor
---@return FLostTomb_DamageAttrSnapshotData
function ULostTombBlueprintFunctionLibrary:CreateDamageDataSnapshot(AttrTarget) end
