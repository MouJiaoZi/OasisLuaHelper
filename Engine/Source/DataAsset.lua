---@meta

---Base class for a simple asset containing data. The editor will list this in the content browser if you inherit from this class
---@class UDataAsset: UObject
---@field NativeClass UDataAsset
local UDataAsset = {}


---A DataAsset that implements GetPrimaryAssetId and has asset bundle support, which makes it something that can be manually loaded/unloaded from the AssetManager
---@class UPrimaryDataAsset: UDataAsset
local UPrimaryDataAsset = {}
