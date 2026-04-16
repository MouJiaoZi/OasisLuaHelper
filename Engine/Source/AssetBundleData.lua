---@meta

---A struct representing a single AssetBundle
---@class FAssetBundleEntry
---@field BundleScope FPrimaryAssetId @Asset this bundle is saved within. This is empty for global bundles, or in the saved bundle info
---@field BundleName string @Specific name of this bundle, should be unique for a given scope
---@field BundleAssets ULuaArrayHelper<FSoftObjectPath> @List of string assets contained in this bundle
FAssetBundleEntry = {}


---A struct with a list of asset bundle entries. If one of these is inside a UObject it will get automatically exported as the asset registry tag AssetBundleData
---@class FAssetBundleData
---@field Bundles ULuaArrayHelper<FAssetBundleEntry> @List of bundles defined
FAssetBundleData = {}
