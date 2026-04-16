---@meta

---@class UBackpackBattleItemV2: UBackpackCommonBattleItem
local UBackpackBattleItemV2 = {}

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param ExpireTime number
---@param IsNew boolean
---@param OnlyCheck boolean
---@return boolean
function UBackpackBattleItemV2:AddBattleItem(TypeSpecificID, InstanceID, Count, ExpireTime, IsNew, OnlyCheck) end

---@param TryMergeDefineID FItemDefineID
---@param Count number
---@param SortOut boolean
---@return number
function UBackpackBattleItemV2:MergeBattleItemV2(TryMergeDefineID, Count, SortOut) end

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param CreatePickupWrapper boolean
---@param bOnlyCheck boolean
---@param bForce boolean
---@return boolean
function UBackpackBattleItemV2:DeleteBattleItem(TypeSpecificID, InstanceID, Count, CreatePickupWrapper, bOnlyCheck, bForce) end

---@param SlotName string
---@param DefineID FItemDefineID
---@return boolean
function UBackpackBattleItemV2:EquipItem(SlotName, DefineID) end

---@param SlotName string
---@param DefineID FItemDefineID
---@return boolean
function UBackpackBattleItemV2:UnEquipItem(SlotName, DefineID) end

---@param SlotNameA string
---@param SlotNameB string
---@return boolean
function UBackpackBattleItemV2:SwapEquipSlot(SlotNameA, SlotNameB) end

---@param Equipment FItemDefineID
---@param TargetItem FItemDefineID
---@param SlotName string
---@return boolean
function UBackpackBattleItemV2:AttachEquipmentToTargetItem(Equipment, TargetItem, SlotName) end

---@param TargetItem FItemDefineID
---@param SlotName string
---@return boolean
function UBackpackBattleItemV2:DetachEquipmentToTargetItem(TargetItem, SlotName) end

---@param Equipment FItemDefineID
function UBackpackBattleItemV2:ApplyAttachData(Equipment) end

---@param Equipment FItemDefineID
function UBackpackBattleItemV2:InvalidEquipment(Equipment) end

---@param Equipment FItemDefineID
function UBackpackBattleItemV2:ValidEquipment(Equipment) end

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@param ExpireTime number
---@param IsNew boolean
---@param Properties ULuaArrayHelper<FAdditionProperty>
---@return boolean
function UBackpackBattleItemV2:UpdateBattleItem(TypeSpecificID, InstanceID, Count, ExpireTime, IsNew, Properties) end

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@return boolean
function UBackpackBattleItemV2:DeleteItem(TypeSpecificID, InstanceID, Count) end

---@param TypeSpecificID number
---@param InstanceID number
---@param Count number
---@return boolean
function UBackpackBattleItemV2:ConsumeItem(TypeSpecificID, InstanceID, Count) end

---@param ItemHandle UBattleItemHandleBase
---@return boolean
function UBackpackBattleItemV2:CanEquipRecursion(ItemHandle) end

---@param ItemHandle UBattleItemHandleBase
---@param bEquip boolean
function UBackpackBattleItemV2:CallOnEquipRecursion(ItemHandle, bEquip) end
