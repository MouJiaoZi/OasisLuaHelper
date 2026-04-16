---@meta

---A struct used for caching part of a property path.  Don't use this class directly.
---@class FPropertyPathSegment
---@field Name string @The sub-component of the property path, a single value between .'s of the path
---@field ArrayIndex number @The optional array index.
FPropertyPathSegment = {}


---@class FDynamicPropertyPath
---@field Segments ULuaArrayHelper<FPropertyPathSegment>
FDynamicPropertyPath = {}
