---@meta

---@class UBackpackExtendFeature: UObject
---@field OverrideItemPriority ULuaMapHelper<number, number>
local UBackpackExtendFeature = {}

---@param ItemContainer IItemContainerInterface
---@return boolean
function UBackpackExtendFeature:InitBackpackExtendFeature(ItemContainer) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackExtendFeature:PickupItemIntoBackpack(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackExtendFeature:PickupItemIntelligenceIntoBackpack(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackExtendFeature:PickupItemAutoSafetyBox(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackExtendFeature:UseItemGeneric(DefineID, Target, Reason) end

---@param DefineID FItemDefineID
---@param Reason EBattleItemDisuseReason
---@param InItemStoreArea EItemStoreArea
---@return boolean
function UBackpackExtendFeature:DisUseItemGeneric(DefineID, Reason, InItemStoreArea) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackExtendFeature:IsForbidEquipItemByRobo(DefineID) end
