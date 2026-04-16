---@meta

---@class UAdditionalBackpackHandleComponent: UActorComponent
---@field Items ULuaArrayHelper<FPickUpItemData> @背包内所有物品
---@field Capacity number @背包容量
---@field Weight number @背包当前重量
---@field Distance number @当前操作的背包距玩家的距离
---@field bEnable boolean
local UAdditionalBackpackHandleComponent = {}

---@param NewCapacity number
function UAdditionalBackpackHandleComponent:SetCapacity(NewCapacity) end

---@param NewWeight number
function UAdditionalBackpackHandleComponent:SetWeight(NewWeight) end

---@param NewItems ULuaArrayHelper<FPickUpItemData>
function UAdditionalBackpackHandleComponent:SetItems(NewItems) end

---@param NewAdditionalBackpack UAdditionalBackpackComponent
function UAdditionalBackpackHandleComponent:SetAdditionalBackpack(NewAdditionalBackpack) end

---@param NewEnable boolean
function UAdditionalBackpackHandleComponent:SetEnable(NewEnable) end

function UAdditionalBackpackHandleComponent:OnRep_Items() end

function UAdditionalBackpackHandleComponent:OnRep_Capacity() end

function UAdditionalBackpackHandleComponent:OnRep_Weight() end

function UAdditionalBackpackHandleComponent:OnRep_AdditionalBackpack() end

function UAdditionalBackpackHandleComponent:OnRep_Enable() end

---@param ItemID FItemDefineID
---@param Count number
---@param PickupReason EAdditionalBackpackItemPickupReason
function UAdditionalBackpackHandleComponent:FromMainBackpack(ItemID, Count, PickupReason) end

---@param ItemID FItemDefineID
---@param Count number
---@param bAutoEquip boolean
---@param AutoEquipTarget FBattleItemUseTarget
---@param bSaveToSafetyBox boolean
---@param bShouldReplace boolean
---@param BeReplaceDefineID FItemDefineID
---@param DropReason EAdditionalBackpackItemDropReason
function UAdditionalBackpackHandleComponent:ToMainBackpack(ItemID, Count, bAutoEquip, AutoEquipTarget, bSaveToSafetyBox, bShouldReplace, BeReplaceDefineID, DropReason) end

---@param ItemID FItemDefineID
---@param Count number
---@param DropReason EAdditionalBackpackItemDropReason
function UAdditionalBackpackHandleComponent:ToWorld(ItemID, Count, DropReason) end

---@return boolean
function UAdditionalBackpackHandleComponent:HaveAdditionalBackpack() end

---@param ItemID FItemDefineID
---@return boolean
function UAdditionalBackpackHandleComponent:IsItemInBackpack(ItemID) end
