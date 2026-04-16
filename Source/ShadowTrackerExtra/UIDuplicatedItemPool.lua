---@meta

---@class UUIDuplicatedItemPool: UObject
---@field TagArray ULuaArrayHelper<string>
---@field ItemClassMap ULuaMapHelper<string, UClass>
---@field UsedItemList ULuaArrayHelper<UUserWidget>
---@field IdleItemList ULuaArrayHelper<UUserWidget>
local UUIDuplicatedItemPool = {}

---@param ClassPath string
---@param DefaultItemCounts number
function UUIDuplicatedItemPool:InitItemPool(ClassPath, DefaultItemCounts) end

---@param MultipleClassInitMaps ULuaMapHelper<string, number>
function UUIDuplicatedItemPool:InitItemsPool(MultipleClassInitMaps) end

---@param IdleItem UUserWidget
function UUIDuplicatedItemPool:FreeOneItem(IdleItem) end

---@param IdleItem UUserWidget
function UUIDuplicatedItemPool:FreeOneItemWithOutRemove(IdleItem) end

---@param CurItemClass UClass
function UUIDuplicatedItemPool:CreateDefaultAssignItem(CurItemClass) end

function UUIDuplicatedItemPool:CreateDefaultItem() end

---@param TagName string
function UUIDuplicatedItemPool:AddTagToItemPool(TagName) end

---@param TagNameList ULuaArrayHelper<string>
function UUIDuplicatedItemPool:AddMultiTagToItemPool(TagNameList) end

---@param TagName string
function UUIDuplicatedItemPool:RemoveTagFromItemPool(TagName) end

function UUIDuplicatedItemPool:RemoveAllTagFromItemPool() end

---@param TagName string
---@return boolean
function UUIDuplicatedItemPool:ItemPoolHasTag(TagName) end

---@param TagNameList ULuaArrayHelper<string>
---@return boolean
function UUIDuplicatedItemPool:ItemPoolHasOneTagAtLeast(TagNameList) end

---@param TagNameList ULuaArrayHelper<string>
---@return boolean
function UUIDuplicatedItemPool:ItemPoolHasAllTag(TagNameList) end

---@param TagList ULuaArrayHelper<string>
function UUIDuplicatedItemPool:GetAllTagFromItemPool(TagList) end

function UUIDuplicatedItemPool:RecycleUnusedItem() end

---@param ItemList ULuaArrayHelper<UUserWidget>
function UUIDuplicatedItemPool:GetAllUsedItem(ItemList) end

---@param ItemList ULuaArrayHelper<UUserWidget>
function UUIDuplicatedItemPool:GetAllIdleItem(ItemList) end
