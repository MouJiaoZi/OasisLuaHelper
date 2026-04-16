---@meta

---@class ULTBackpackExtendFeature: UObject
local ULTBackpackExtendFeature = {}

---@param ItemContainer IItemContainerInterface
---@return boolean
function ULTBackpackExtendFeature:InitBackpackExtendFeature(ItemContainer) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function ULTBackpackExtendFeature:PickupItemIntoBackpack(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function ULTBackpackExtendFeature:PickupItemAutoSafetyBox(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function ULTBackpackExtendFeature:PickupItemIntelligenceIntoBackpack(DefineID, PickupInfo, Reason) end

---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function ULTBackpackExtendFeature:UseItemGeneric(DefineID, Target, Reason) end

---@param DefineID FItemDefineID
---@param Reason EBattleItemDisuseReason
---@param InItemStoreArea EItemStoreArea
---@return boolean
function ULTBackpackExtendFeature:DisUseItemGeneric(DefineID, Reason, InItemStoreArea) end

---@param DefineID FItemDefineID
---@param InUsefulType FItemUsefulType
---@return boolean
function ULTBackpackExtendFeature:ModifyUsefulByFeature(DefineID, InUsefulType) end
