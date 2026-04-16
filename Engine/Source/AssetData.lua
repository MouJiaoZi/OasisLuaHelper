---@meta

---A struct to hold important information about an assets found by the Asset Registry This struct is transient and should never be serialized
---@class FAssetData
---@field ObjectPath string @The object path for the asset in the form PackageName.AssetName. Only top level objects in a package can have AssetData
---@field PackageName string @The name of the package in which the asset is found, this is the full long package name such as /Game/Path/Package
---@field PackagePath string @The path to the package in which the asset is found, this is /Game/Path with the Package stripped off
---@field AssetName string @The name of the asset without the package
---@field AssetClass string @The name of the asset's class
---@field AssetTags ULuaArrayHelper<string> @Custom Asset Type Tag
FAssetData = {}


---A struct to hold blacklist information about an assets.
---@class FBlackListAssetData
---@field StandardPath string
---@field FullPath string
---@field AssetTags ULuaArrayHelper<string>
FBlackListAssetData = {}
