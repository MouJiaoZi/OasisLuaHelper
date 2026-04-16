---@meta

---Simple structure for redirecting an old asset name/path to a new one
---@class FAssetManagerRedirect
---@field Old string
---@field New string
FAssetManagerRedirect = {}


---Simple structure to allow overriding asset rules for a specific primary asset. This can be used to set chunks
---@class FPrimaryAssetRulesOverride
---@field PrimaryAssetId FPrimaryAssetId @Which primary asset to override the rules for
---@field Rules FPrimaryAssetRules @What to overrides the rules with
FPrimaryAssetRulesOverride = {}


---Settings for the Asset Management framework, which can be used to discover, load, and audit game-specific asset types
---@class UAssetManagerSettings: UDeveloperSettings
---@field PrimaryAssetTypesToScan ULuaArrayHelper<FPrimaryAssetTypeInfo> @List of asset types to scan at startup
---@field DirectoriesToExclude ULuaArrayHelper<FDirectoryPath> @List of directories to exclude from scanning for Primary Assets, useful to exclude test assets
---@field PrimaryAssetRules ULuaArrayHelper<FPrimaryAssetRulesOverride> @List of specific asset rule overrides
---@field bOnlyCookProductionAssets boolean @If true, DevelopmentCook assets will error when they are cooked
---@field bShouldGuessTypeAndNameInEditor boolean @If true, PrimaryAsset Type/Name will be implied for assets in the editor (cooked builds always must be explicit). This allows guessing for content that hasn't been resaved yet
---@field bShouldAcquireMissingChunksOnLoad boolean @If true, this will query the platform chunk install interface to request missing chunks for any requested primary asset loads
---@field IndexOfUsingAutoChunkName number
---@field PrimaryAssetIdRedirects ULuaArrayHelper<FAssetManagerRedirect> @Redirect from Type:Name to Type:NameNew
---@field PrimaryAssetTypeRedirects ULuaArrayHelper<FAssetManagerRedirect> @Redirect from Type to TypeNew
---@field AssetPathRedirects ULuaArrayHelper<FAssetManagerRedirect> @Redirect from /game/assetpath to /game/assetpathnew
---@field MetaDataTagsForAssetRegistry ULuaSetHelper<string> @The metadata tags to be transferred to the Asset Registry.
---@field bParsePAWhenDroped boolean @Asset Audit解析拖拽的PA.
---@field DefaultChunkName string @默认Core包名.
---@field BlacklistFilePath FFilePath @编辑器检查用黑名单文件路径.
---@field BlacklistForPackageFilePath FFilePath @打包用黑名单文件路径.
---@field bAlwaysReloadCSVConfig boolean @是否每次检查都重新读取黑名单配置.
---@field bUseBlacklistMap boolean @构造所有黑名单文件夹的文件Map来查找.
---@field bEnableCheckBlacklist boolean @Whether check the asset depend on blacklist asset in content browser.
---@field SearchingDepth number @The depth of searching blacklist asset tree in content browser.
---@field ManagementRuleConfigPath string
local UAssetManagerSettings = {}
