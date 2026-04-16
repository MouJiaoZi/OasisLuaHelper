---@meta

---A seed file that is created to mark referenced assets as part of this primary asset
---@class UPrimaryAssetLabel: UPrimaryDataAsset
---@field Rules FPrimaryAssetRules @Management rules for this specific asset, if set it will override the type rules
---@field LogicChunkName string @Pak file name
---@field FinalChunkName string
---@field ChunkOutputPath string
---@field bLabelAssetsInMyDirectory number @True to Label everything in this directory and sub directories
---@field AssignedDirectories ULuaArrayHelper<FDirectoryPath> @True to Label everything in this directory and sub directories
---@field ExcludeDirectories ULuaArrayHelper<FDirectoryPath>
---@field ExcludeAssets ULuaSetHelper<string>
---@field bIsRuntimeLabel number @Set to true if the label asset itself should be cooked and available at runtime. This does not affect the assets that are labeled, they are set with cook rule
---@field ExplicitAssets ULuaArrayHelper<UObject> @List of manually specified assets to label
---@field ExplicitBlueprints ULuaArrayHelper<UObject> @List of manually specified blueprint assets to label
---@field AssetCollection FCollectionReference @Collection to load asset references out of
---@field Key string
---@field IV string
---@field DataTableAsExplicitAssets UDataTable @List of manually specified assets to label
local UPrimaryAssetLabel = {}


---@class UChunkLabel: UPrimaryDataAsset
---@field Rules FPrimaryAssetRules @Management rules for this specific asset, if set it will override the type rules
---@field LogicChunkName string @True to Label everything in this directory and sub directories
---@field FinalChunkName string
---@field ChunkOutputPath string
---@field bIsRuntimeLabel number @Set to true if the label asset itself should be cooked and available at runtime. This does not affect the assets that are labeled, they are set with cook rule
---@field Key string
---@field IV string
local UChunkLabel = {}
