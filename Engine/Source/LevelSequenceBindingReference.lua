---@meta

---An external reference to an level sequence object, resolvable through an arbitrary context. Bindings consist of an optional package name, and the path to the object within that package. Where package name is empty, the reference is a relative path from a specific outer (the context). Currently, the package name should only ever be empty for component references, which must remain relative bindings to work correctly with spawnables and reinstanced actors.
---@class FLevelSequenceBindingReference
---@field PackageName_DEPRECATED string @Replaced by ExternalObjectPath
---@field ExternalObjectPath FSoftObjectPath @Path to a specific actor/component inside an external package
---@field ObjectPath string @Object path relative to a passed in context object, this is used if ExternalObjectPath is invalid
FLevelSequenceBindingReference = {}


---An array of binding references
---@class FLevelSequenceBindingReferenceArray
---@field References ULuaArrayHelper<FLevelSequenceBindingReference>
FLevelSequenceBindingReferenceArray = {}


---Structure that stores a one to many mapping from object binding ID, to object references that pertain to that ID.
---@class FLevelSequenceBindingReferences
---@field BindingIdToReferences ULuaMapHelper<FGuid, FLevelSequenceBindingReferenceArray> @The map from object binding ID to an array of references that pertain to that ID
FLevelSequenceBindingReferences = {}
