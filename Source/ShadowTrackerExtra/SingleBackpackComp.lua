---@meta

---@class USingleBackpackComp: UActorComponent
---@field itemList ULuaArrayHelper<FPickUpItemData>
---@field capacity number
---@field scheme EGroupBackpackScheme
---@field Weight number
---@field EnableSingle boolean
local USingleBackpackComp = {}

---@param msg string
function USingleBackpackComp:SingleBackpackCompMsg(msg) end

function USingleBackpackComp:OnRep_Scheme() end

function USingleBackpackComp:OnRep_ItemList() end

function USingleBackpackComp:OnRep_Capacity() end

---@param itemID FItemDefineID
---@param count number
---@param AdditionalDataList ULuaArrayHelper<FBattleItemAdditionalData>
function USingleBackpackComp:AddGroupItem(itemID, count, AdditionalDataList) end

---@param itemID FItemDefineID
function USingleBackpackComp:RemoveGroupItem(itemID) end

---@param Count number
---@param itemID FItemDefineID
---@param AutoEquipTarget FBattleItemUseTarget
---@param AdditionalDataList ULuaArrayHelper<FBattleItemAdditionalData>
---@param BeReplaceDefineID FItemDefineID
---@param bAutoEquip boolean
function USingleBackpackComp:RemoveGroupItemByDrag(Count, itemID, AutoEquipTarget, AdditionalDataList, BeReplaceDefineID, bAutoEquip) end

---@param itemID FItemDefineID
---@param count number
function USingleBackpackComp:DropGroupItemToWorld(itemID, count) end

---@return boolean
function USingleBackpackComp:GetGroupBackpackSwitch() end

---@param itemID FItemDefineID
---@param AutoEquipTarget FBattleItemUseTarget
---@param AdditionalDataList ULuaArrayHelper<FBattleItemAdditionalData>
---@param BeReplaceDefineID FItemDefineID
---@param bAutoEquip boolean
---@return boolean
function USingleBackpackComp:PreprocessRemoveGroupItemByDrag(itemID, AutoEquipTarget, AdditionalDataList, BeReplaceDefineID, bAutoEquip) end
