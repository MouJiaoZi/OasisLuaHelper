---@meta

---@class UBackpackCommonBattleItem: UBackpackBaseItem, IBackpackItemInterface
---@field BackpackComponentWeakPtr UBackpackComponent
local UBackpackCommonBattleItem = {}

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param ExpireTime number
---@param IsNew boolean
---@param OnlyCheck boolean
---@return boolean
function UBackpackCommonBattleItem:AddBattleItem(TypeSpecificID, InstanceID, Count, ExpireTime, IsNew, OnlyCheck) end

---@param TypeSpecificID number
---@param Count number
---@param ExpireTime number
---@param IsNew boolean
---@return number
function UBackpackCommonBattleItem:MergeBattleItem(TypeSpecificID, Count, ExpireTime, IsNew) end

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param ExpireTime number
---@param IsNew boolean
---@param Properties ULuaArrayHelper<FAdditionProperty>
---@return boolean
function UBackpackCommonBattleItem:UpdateBattleItem(TypeSpecificID, InstanceID, Count, ExpireTime, IsNew, Properties) end

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param CreatePickupWrapper boolean
---@param bOnlyCheck boolean
---@param bForce boolean
---@return boolean
function UBackpackCommonBattleItem:DeleteBattleItem(TypeSpecificID, InstanceID, Count, CreatePickupWrapper, bOnlyCheck, bForce) end

---@param DefineID FItemDefineID
---@param ExpireTime number
---@param IsNew boolean
---@param Properties ULuaArrayHelper<FAdditionProperty>
function UBackpackCommonBattleItem:SetBattleItemExtraInfo(DefineID, ExpireTime, IsNew, Properties) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackCommonBattleItem:UseBattleItem(DefineID) end

---@param DefineID FItemDefineID
---@return boolean
function UBackpackCommonBattleItem:DisUseBattleItem(DefineID) end

---@param PickUpWrapperClass APickUpWrapperActor
---@param ItemHandle UBattleItemHandleBase
---@param Count number
function UBackpackCommonBattleItem:CreatePickUpWrapper(PickUpWrapperClass, ItemHandle, Count) end
