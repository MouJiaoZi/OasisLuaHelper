---@meta

---Delegate called when acquiring resources/chunks for assets, parameter will be true if all resources were acquired, false if any failed
---@class FAssetManagerAcquireResourceDelegate : ULuaSingleDelegate
FAssetManagerAcquireResourceDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAssetManagerAcquireResourceDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 boolean
function FAssetManagerAcquireResourceDelegate:Execute(Param1) end


---A singleton UObject that is responsible for loading and unloading PrimaryAssets, and maintaining game-specific asset references Games should override this class and change the class reference
---@class UAssetManager: UObject
---@field ObjectReferenceList ULuaArrayHelper<UObject> @List of UObjects that are being kept from being GCd, derived from the asset type map. Arrays are currently more efficient than Sets
---@field bIsGlobalAsyncScanEnvironment boolean @True if we are running a build that is already scanning assets globally so we can perhaps avoid scanning paths synchronously
---@field bShouldGuessTypeAndName boolean @True if PrimaryAssetType/Name will be implied for loading assets that don't have it saved on disk. Won't work for all projects
---@field bShouldUseSynchronousLoad boolean @True if we should always use synchronous loads, this speeds up cooking
---@field bIsLoadingFromPakFiles boolean @True if we are loading from pak files
---@field bShouldAcquireMissingChunksOnLoad boolean @True if the chunk install interface should be queries before loading assets
---@field bOnlyCookProductionAssets boolean @If true, DevelopmentCook assets will error when they are cooked
---@field bIsBulkScanning boolean @True if we are currently in bulk scanning mode
---@field bIsPrimaryAssetDirectoryCurrent boolean @True if asset data is current, if false it will need to rescan before PIE
---@field bIsManagementDatabaseCurrent boolean @True if the asset management database is up to date
---@field bUpdateManagementDatabaseAfterScan boolean @True if the asset management database should be updated after scan completes
---@field bIncludeOnlyOnDiskAssets boolean @True if only on-disk assets should be searched by the asset registry
---@field NumberOfSpawnedNotifications number @Number of notifications seen in this update
local UAssetManager = {}
