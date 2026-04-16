---@meta

---ShootBlock测试管理器
---@class FShootBlockCacheItem
---@field TraceStart FVector
---@field TraceEnd FVector
---@field ImpactPoint FVector
FShootBlockCacheItem = {}


---@class UShootBlockManager: UObject
---@field SavedFileDir string
---@field ShootBlockCacheItemList ULuaArrayHelper<FShootBlockCacheItem>
---@field CurProcessDataIndex number
local UShootBlockManager = {}

---@param FilePath string
function UShootBlockManager:LoadFile(FilePath) end

function UShootBlockManager:ProcessNextCacheData() end
