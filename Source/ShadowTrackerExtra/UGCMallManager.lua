---@meta

---@class UUGCMallManager: UObject, IItemSourceInterface
---@field UGCItemTypeMap ULuaMapHelper<FUGCMallItemType, FItemArray>
local UUGCMallManager = {}

function UUGCMallManager:DeleteInstance() end

---@param TableName string
function UUGCMallManager:LoadTable(TableName) end
