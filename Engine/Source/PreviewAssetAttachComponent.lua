---@meta

---Preview items that are attached to the skeleton *
---@class FPreviewAttachedObjectPair
---@field AttachedObject UObject @the object to be attached
---@field AttachedTo string @The name of the attach point of the Object (for example a bone or socket name)
FPreviewAttachedObjectPair = {}


---Component which deals with attaching assets
---@class FPreviewAssetAttachContainer
---@field AttachedObjects ULuaArrayHelper<FPreviewAttachedObjectPair>
FPreviewAssetAttachContainer = {}
