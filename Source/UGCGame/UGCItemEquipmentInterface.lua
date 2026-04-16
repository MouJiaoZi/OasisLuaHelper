---@meta

---@class ESlotDisableShowType
---@field Lock number
---@field Hidden number
ESlotDisableShowType = {}


---@class FUGCEquipmentItemSlot
---@field SlotName FGameplayTag
---@field DisplayName string
---@field AllowTypes ULuaArrayHelper<string>
---@field AllowTags FGameplayTagContainer
---@field bAvailable boolean
---@field SlotState ESlotDisableShowType
---@field LockTips string
FUGCEquipmentItemSlot = {}


---@class IUGCItemEquipTargetInterface: IInterface
IUGCItemEquipTargetInterface = {}

function IUGCItemEquipTargetInterface:GetEquipSlots() end

---@param QuerySlot string
---@return string
function IUGCItemEquipTargetInterface:GetDisplayNameBySlotName(QuerySlot) end

---@param SlotName string
---@return FItemDefineID
function IUGCItemEquipTargetInterface:GetEquippedItemBySlotName(SlotName) end

function IUGCItemEquipTargetInterface:GetSlotsConfig() end

---Event
---其它物品是否能附加到此槽位
---@param SlotName string
---@param ItemDefineID FItemDefineID
---@return boolean
function IUGCItemEquipTargetInterface:CanAttachToSlot(SlotName, ItemDefineID) end

---Event
---当其它物品附加到此槽位
---@param SlotName string
---@param ItemDefineID FItemDefineID
function IUGCItemEquipTargetInterface:OnAttachToSlot(SlotName, ItemDefineID) end

---Event
---当物品从此槽位移除
---@param SlotName string
---@param ItemDefineID FItemDefineID
function IUGCItemEquipTargetInterface:OnDetachBySlot(SlotName, ItemDefineID) end

---@param ChildItemID number
function IUGCItemEquipTargetInterface:GetAllowSlots(ChildItemID) end

---@param SlotName string
---@return boolean
function IUGCItemEquipTargetInterface:GetExtraSlotEnable(SlotName) end
