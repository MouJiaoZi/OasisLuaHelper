---@meta

---@class UItemObjectDelayLoadTool: UObject
---@field MaxLoadingCount number
---@field UsingItems ULuaMapHelper<number, FSoftObjectPath>
---@field LoadedItems ULuaMapHelper<number, UObject>
---@field NoLoadItems ULuaMapHelper<number, FSoftObjectPath>
---@field bLoading boolean
local UItemObjectDelayLoadTool = {}

---@param MaxLoadingCount number
function UItemObjectDelayLoadTool:SetMaxLoadingCount(MaxLoadingCount) end

---@param Items ULuaMapHelper<number, FSoftObjectPath>
function UItemObjectDelayLoadTool:DelayLoadItems(Items) end

---@param ItemKey number
---@param ObjectPath FSoftObjectPath
function UItemObjectDelayLoadTool:DelayLoadItem(ItemKey, ObjectPath) end

---@param ItemKey number
---@return boolean
function UItemObjectDelayLoadTool:ContainsItemKey(ItemKey) end

function UItemObjectDelayLoadTool:Clear() end

function UItemObjectDelayLoadTool:TryLoadNext() end

---@param LoadKeys ULuaArrayHelper<number>
function UItemObjectDelayLoadTool:OnAsyncLoadObject(LoadKeys) end
