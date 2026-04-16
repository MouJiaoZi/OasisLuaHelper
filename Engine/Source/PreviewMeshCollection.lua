---@meta

---An entry in a preview mesh collection
---@class FPreviewMeshCollectionEntry
---@field SkeletalMesh USkeletalMesh @The skeletal mesh to display
FPreviewMeshCollectionEntry = {}


---A simple collection of skeletal meshes used for in-editor preview
---@class UPreviewMeshCollection: UDataAsset, IPreviewCollectionInterface
---@field SkeletalMeshes ULuaArrayHelper<FPreviewMeshCollectionEntry> @The skeletal meshes that this collection contains
local UPreviewMeshCollection = {}
