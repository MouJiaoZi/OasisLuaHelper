---@meta

---Class that holds a library of Objects
---@class UObjectLibrary: UObject
---@field bHasBlueprintClasses boolean @True if this library holds blueprint classes, false if it holds other objects
---@field Objects ULuaArrayHelper<UObject> @List of Objects in library
---@field WeakObjects ULuaArrayHelper<UObject> @Weak pointers to objects
---@field bUseWeakReferences boolean @If this library should use weak pointers
---@field bIsFullyLoaded boolean @True if we've already fully loaded this library, can't do it twice
local UObjectLibrary = {}
