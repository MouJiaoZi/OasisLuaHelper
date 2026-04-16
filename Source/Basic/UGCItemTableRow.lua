---@meta

---@class FUGCBattleItemTableRow
---@field ItemID number
---@field ItemName string
---@field ItemDetails string
---@field PickupDetails string
---@field BackpackSimple string
---@field MaxNumberOfStacks number
---@field IconTexture FSoftObjectPath
---@field WhiteIconTexture FSoftObjectPath
---@field BigIconTexture FSoftObjectPath
---@field CanEquip boolean
---@field AutoEquipAndDrop boolean
---@field CanDrop boolean
---@field CustomizedType string
---@field ItemHandlePath FSoftClassPath
---@field TagsV2 ULuaArrayHelper<string>
---@field ItemType number
---@field ItemSubType number
---@field UnitWeight number
---@field WeightforOrder number
---@field ClassesTags ULuaMapHelper<string, number>
---@field PickUpSound string
---@field PickUpBank string
---@field DropSound string
---@field DropBank string
---@field EquipSound string
---@field EquipBank string
---@field UnEquipSound string
---@field UnEquipBank string
---@field Durability number
---@field ItemLevel number
---@field PickupWrapperMesh FSoftObjectPath
FUGCBattleItemTableRow = {}


---@class IUGCBattleItemTableRowReceptorInterface: IInterface
IUGCBattleItemTableRowReceptorInterface = {}

---@param TableRowData FUGCBattleItemTableRow
function IUGCBattleItemTableRowReceptorInterface:SetUGCBattleItemTableRowData(TableRowData) end
