---@meta

---@class UPickupGroupSource: UObject
---@field bDropByPlayer boolean
local UPickupGroupSource = {}


---@class UGroupBackpackComp: UActorComponent
---@field itemList ULuaArrayHelper<FPickUpItemData>
---@field capacity number
---@field occupiedCapacity number
---@field scheme EGroupBackpackScheme
---@field SingleList ULuaArrayHelper<USingleBackpackComp>
local UGroupBackpackComp = {}

---@param itemID FItemDefineID
---@return boolean
function UGroupBackpackComp:IsVehicleItemValid(itemID) end

---@param itemID FItemDefineID
---@param count number
---@param AdditionalDataList ULuaArrayHelper<FBattleItemAdditionalData>
---@param bStackable boolean
---@param StackCount number
---@return number
function UGroupBackpackComp:AddGroupItem(itemID, count, AdditionalDataList, bStackable, StackCount) end

---@param Count number
---@param BackpackComp UBackpackComponent
---@param itemID FItemDefineID
---@param AutoEquipTarget FBattleItemUseTarget
---@param AdditionalDataList ULuaArrayHelper<FBattleItemAdditionalData>
---@param BeReplaceDefineID FItemDefineID
---@param bAutoEquip boolean
function UGroupBackpackComp:PickupFromGroupByDrag(Count, BackpackComp, itemID, AutoEquipTarget, AdditionalDataList, BeReplaceDefineID, bAutoEquip) end

---@param PC ASTExtraPlayerController
---@param ItemDefineID FItemDefineID
---@param count number
function UGroupBackpackComp:DropToWorld(PC, ItemDefineID, count) end

---@param itemID FItemDefineID
---@return number
function UGroupBackpackComp:FindIndexByDefineID(itemID) end

---@param itemID FItemDefineID
---@return number
function UGroupBackpackComp:FindItemCountByDefineID(itemID) end

function UGroupBackpackComp:UpdateSingleList() end

---@param owner APawn
---@param capacity number
---@param ItemList ULuaArrayHelper<FPickUpItemData>
---@param BoxName string
function UGroupBackpackComp:SpawnItemForBackpack(owner, capacity, ItemList, BoxName) end
