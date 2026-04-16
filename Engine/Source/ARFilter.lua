---@meta

---A struct to serve as a filter for Asset Registry queries. Each component element is processed as an 'OR' operation while all the components are processed together as an 'AND' operation.
---@class FARFilter
---@field PackageNames ULuaArrayHelper<string> @The filter component for package names
---@field PackagePaths ULuaArrayHelper<string> @The filter component for package paths
---@field ObjectPaths ULuaArrayHelper<string> @The filter component containing specific object paths
---@field FolderPaths ULuaArrayHelper<string> @The filter component containing specific object paths
---@field ClassNames ULuaArrayHelper<string> @The filter component for class names. Instances of the specified classes, but not subclasses (by default), will be included. Derived classes will be included only if bRecursiveClasses is true.
---@field RecursiveClassesExclusionSet ULuaSetHelper<string> @Only if bRecursiveClasses is true, the results will exclude classes (and subclasses) in this list
---@field bRecursivePaths boolean @If true, PackagePath components will be recursive
---@field bRecursiveClasses boolean @If true, subclasses of ClassNames will also be included and RecursiveClassesExclusionSet will be excluded.
---@field bIncludeOnlyOnDiskAssets boolean @If true, only on-disk assets will be returned. Be warned that this is rarely what you want and should only be used for performance reasons
FARFilter = {}
