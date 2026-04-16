---@meta

---@class UPropertyBinding: UObject
---@field SourceObject UObject @The source object to use as the initial container to resolve the Source Property Path on.
---@field SourcePath FDynamicPropertyPath @The property path to trace to resolve this binding on the Source Object
---@field DestinationProperty string @Used to determine if a binding already exists on the object and if this binding can be safely removed.
local UPropertyBinding = {}
