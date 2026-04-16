---@meta

---@class FCompPickupItemListLimitInfo
---@field ItemIDList ULuaArrayHelper<number>
---@field MaxPickupLimit number
---@field ExceedLimitTipID number
FCompPickupItemListLimitInfo = {}


---@class UForbitDebuffComponent: UActorComponent
---@field ForbitVocieVisual boolean
---@field ForbitPickUpLimitItem boolean
---@field IsUseWhiteList boolean
---@field FPickupItemListLimitList ULuaArrayHelper<FCompPickupItemListLimitInfo>
---@field ForbitCanEditItemIDList ULuaArrayHelper<number>
---@field CanEditLimitTipID number
---@field WhiteListLimitTipID number
---@field ForbitCanEditWhiteIDList ULuaArrayHelper<number>
---@field ForbitCanEditWhiteTag string
---@field CanEditLimitTipIDConfigMap ULuaMapHelper<number, number>
local UForbitDebuffComponent = {}

---@param ForbitState boolean
function UForbitDebuffComponent:SetForbitVocieVisual(ForbitState) end

---@param ForbitState boolean
function UForbitDebuffComponent:SetForbitPickUpLimitItem(ForbitState) end

function UForbitDebuffComponent:OnRep_ForbitCanEditItemIDList() end

---@param itemID number
function UForbitDebuffComponent:AddForbitCanEditListItem(itemID) end

---@param itemID number
function UForbitDebuffComponent:RemoveForbitCanEditListItem(itemID) end

---@param InTargetItem FItemDefineID
---@param InTargetBackpack UBackpackComponent
---@param InTargetPickupCount number
---@param OutLimitedItemCount number
---@param CurFPickupItemListLimitList ULuaArrayHelper<FCompPickupItemListLimitInfo>
---@return boolean
function UForbitDebuffComponent:GetForbitComponentPickupItemListLimitedCount(InTargetItem, InTargetBackpack, InTargetPickupCount, OutLimitedItemCount, CurFPickupItemListLimitList) end

---@param InTargetItem FItemDefineID
---@param InTargetBackpack UBackpackComponent
---@param InTargetPickupCount number
---@param OutLimitedItemCount number
---@param CurFPickupItemListLimitList ULuaArrayHelper<FCompPickupItemListLimitInfo>
---@return boolean
function UForbitDebuffComponent:CheckForbitComponentPickupItemLimitedCount(InTargetItem, InTargetBackpack, InTargetPickupCount, OutLimitedItemCount, CurFPickupItemListLimitList) end

---@param InTargetItem FItemDefineID
---@param InTargetBackpack UBackpackComponent
---@return boolean
function UForbitDebuffComponent:CheckForbitComponentCanEditItemLimitCount(InTargetItem, InTargetBackpack) end

---@param TipsID number
function UForbitDebuffComponent:SetCanEditLimitTipID(TipsID) end
