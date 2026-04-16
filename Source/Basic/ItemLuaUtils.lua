---@meta

---@class FItemBPClass_TabRes
---@field ID number
---@field CName string
---@field Path string
---@field Wrapper string
FItemBPClass_TabRes = {}


---@class FCustomItemTableData
---@field ItemInfo FItem_TabRes
---@field ItemBPClassInfo FItemBPClass_TabRes
FCustomItemTableData = {}


---@class FUGCItemIDList
FUGCItemIDList = {}


---@class UItemLuaUtils: UObject
---@field UGCTableSwitcherPath string
---@field UGCItemTagSerialID number
---@field ItemHandleClassMap ULuaMapHelper<number, UClass>
---@field DefaultDropActorClass AActor
---@field bCheckInitialize boolean
---@field bCheckUGCBattleItemTable boolean
---@field bCheckUGCTemplateBattleItemTable boolean
---@field bCheckMallocError boolean
---@field bCheckSwitchTable boolean
---@field UGCMItemPathMap ULuaMapHelper<number, FSoftObjectPath>
---@field UGCMItemPickupWrapperMeshPathMap ULuaMapHelper<number, FSoftObjectPath>
local UItemLuaUtils = {}

function UItemLuaUtils:GetDefaultDropActorClass() end

---@param RowData FUGCBattleItemTableRow
function UItemLuaUtils:InsertUGCBattleItemRow(RowData) end

---@param ItemID number
function UItemLuaUtils:RemoveUGCBattleItemRow(ItemID) end

---@param ItemHandle UBattleItemHandleBase
---@param ItemID number
function UItemLuaUtils:UGCMFillingConfigDataToCustomItemHandle(ItemHandle, ItemID) end

---@param ItemID number
---@return FSoftObjectPath
function UItemLuaUtils:UGCMGetItemPickupWrapperMeshPath(ItemID) end

function UItemLuaUtils:DoCheckTableSwitcher() end
