---@meta

---@class EPlaneDir
---@field Top number @Top
---@field Down number @Down
---@field Left number @Left
---@field Right number @Right
EPlaneDir = {}


---MeshComponent is an abstract base for any component that is an instance of a renderable collection of triangles.
---@class UMeshComponent: UPrimitiveComponent
---@field OverrideMaterials ULuaArrayHelper<UMaterialInterface> @Per-Component material overrides.  These must NOT be set directly or a race condition can occur between GC and the rendering thread.
---@field IndexedOverlayMaterials ULuaArrayHelper<UMaterialInterface> @Overlay materials applied to each material slot.
---@field IndexedOverrideOutlineMaterials ULuaArrayHelper<UMaterialInterface> @Override overlay outline materials applied to each material slot.
---@field bUseIndexedOverlayMaterials boolean @Whether to use IndexedOverlayMaterials (or OverlayMaterial).
---@field bUseOverlayMaterials boolean @Whether to render overlay materials. (Indexed or not)
---@field OverlayMaterialMaxDrawDistance number @The max draw distance for overlay material. A distance of 0 indicates that overlay will be culled using primitive max distance.
---@field bIsEnableRetrieveDefaultMat boolean
local UMeshComponent = {}

function UMeshComponent:GetMaterials() end

---@param MaterialSlotName string
---@return number
function UMeshComponent:GetMaterialIndex(MaterialSlotName) end

function UMeshComponent:GetMaterialSlotNames() end

---@param MaterialSlotName string
---@return boolean
function UMeshComponent:IsMaterialSlotNameValid(MaterialSlotName) end

---Change the overlay material used by this instance
---@param NewOverlayMaterial UMaterialInterface
function UMeshComponent:SetOverlayMaterial(NewOverlayMaterial) end

---Get UseIndexedOverlayMaterials
---@return boolean
function UMeshComponent:GetUseIndexedOverlayMaterials() end

---Set UseIndexedOverlayMaterials
---@param bNewUseIndexedOverlayMaterials boolean
function UMeshComponent:SetUseIndexedOverlayMaterials(bNewUseIndexedOverlayMaterials) end

---Get UseOverlayMaterials
---@return boolean
function UMeshComponent:GetUseOverlayMaterials() end

---Set UseOverlayMaterials
---@param bNewUseOverlayMaterials boolean
function UMeshComponent:SetUseOverlayMaterials(bNewUseOverlayMaterials) end

---Get IndexedOverlayMaterials
function UMeshComponent:GetIndexedOverlayMaterials() end

---Set IndexedOverlayMaterials
---@param ElementIndex number
---@param Material UMaterialInterface
function UMeshComponent:SetIndexedOverlayMaterial(ElementIndex, Material) end

---Change the overlay material max draw distance used by this instance
---@param InMaxDrawDistance number
function UMeshComponent:SetOverlayMaterialMaxDrawDistance(InMaxDrawDistance) end

---Get IndexedOverrideOutlineMaterials
function UMeshComponent:GetIndexedOverrideOutlineMaterials() end

---Set IndexedOverrideOutlineMaterials
---@param ElementIndex number
---@param Material UMaterialInterface
function UMeshComponent:SetIndexedOverrideOutlineMaterials(ElementIndex, Material) end

---Tell the streaming system to start loading all textures with all mip-levels.
---@param Seconds number
---@param bPrioritizeCharacterTextures boolean
---@param CinematicTextureGroups number
function UMeshComponent:PrestreamTextures(Seconds, bPrioritizeCharacterTextures, CinematicTextureGroups) end

---Set all occurrences of Scalar Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue
---@param ParameterName string
---@param ParameterValue number
function UMeshComponent:SetScalarParameterValueOnMaterials(ParameterName, ParameterValue) end

---Set all occurrences of Vector Material Parameters with ParameterName in the set of materials of the SkeletalMesh to ParameterValue
---@param ParameterName string
---@param ParameterValue FVector
function UMeshComponent:SetVectorParameterValueOnMaterials(ParameterName, ParameterValue) end
