---@meta

---@class FItemEquipSlot_TypeConstraint
---@field ConstraintTypes ULuaArrayHelper<string>
FItemEquipSlot_TypeConstraint = {}


---@class FItemEquipSlots_AdditionalData
---@field DisableSlot ULuaArrayHelper<string>
---@field SlotTypeConstraint ULuaMapHelper<string, FItemEquipSlot_TypeConstraint>
FItemEquipSlots_AdditionalData = {}


---@class FBackpackSlotDisableChangeDelegate : ULuaMulticastDelegate
FBackpackSlotDisableChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SlotName: string, bEnable: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBackpackSlotDisableChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SlotName string
---@param bEnable boolean
function FBackpackSlotDisableChangeDelegate:Broadcast(SlotName, bEnable) end


---@class UCommonBackpackComponent: UBaseBackpackComponent
---@field ItemOperationInfoDelegate FItemOperationInfoDelegate
---@field BackpackSlotDisableChangeDelegate FBackpackSlotDisableChangeDelegate
---@field bHasBeenInitialized boolean
---@field BackpackComponent UBackpackComponent
---@field SlotAdditionalData FItemEquipSlots_AdditionalData
---@field OldSlotAdditionalData FItemEquipSlots_AdditionalData
local UCommonBackpackComponent = {}

---@param DefineID FItemDefineID
---@param Reason EBattleItemUseReason
---@return boolean
function UCommonBackpackComponent:CommonCanUseItem(DefineID, Reason) end

---@param SlotName string
---@param DefineID FItemDefineID
---@return boolean
function UCommonBackpackComponent:CommonEquipItem(SlotName, DefineID) end

---@param SlotName string
---@param bForce boolean
---@return boolean
function UCommonBackpackComponent:CommonUnEquipItem(SlotName, bForce) end

---@param TypeSpecificID number
---@param SlotName string
---@return boolean
function UCommonBackpackComponent:ItemCanEquipToSlot(TypeSpecificID, SlotName) end

---@param SlotName string
---@param bEnable boolean
function UCommonBackpackComponent:SetEquipSlotEnable(SlotName, bEnable) end

function UCommonBackpackComponent:GetDisableEquipSlots() end

---@param DefineID FItemDefineID
---@return string
function UCommonBackpackComponent:GetItemEquipingSlot(DefineID) end

---@param TypeSpecificID number
---@param Count number
function UCommonBackpackComponent:Server_DeleteItem(TypeSpecificID, Count) end

---@param DefineID FItemDefineID
---@param Count number
function UCommonBackpackComponent:Server_DeleteItemByDefineID(DefineID, Count) end

---@param DefineID FItemDefineID
---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
function UCommonBackpackComponent:Server_UseItem(DefineID, Target, Reason) end

---@param SlotName string
---@param DefineID FItemDefineID
function UCommonBackpackComponent:Server_EquipItem(SlotName, DefineID) end

---@param SlotName string
function UCommonBackpackComponent:Server_UnEquipItem(SlotName) end

function UCommonBackpackComponent:OnInitBackpack() end

function UCommonBackpackComponent:OnRep_BackpackComponent() end

function UCommonBackpackComponent:OnRep_SlotAdditionalData() end

function UCommonBackpackComponent:ServerTellBackpackIsReplicated() end

function UCommonBackpackComponent:TickReplicateItems() end

function UCommonBackpackComponent:OnBackpackClearItemDelegate() end

---@param SaveItems ULuaArrayHelper<UItemHandleBase>
function UCommonBackpackComponent:OnBackpackClearAllDelegate(SaveItems) end

---@param bReInitialized boolean
function UCommonBackpackComponent:ReplicateBattleItems(bReInitialized) end

---@param RepItems ULuaArrayHelper<FNetArrayUnitNew>
---@param bReInitialized boolean
function UCommonBackpackComponent:ClientOnReplicateBattleItems(RepItems, bReInitialized) end

---@param RepItemsOpt FNetRPCItemArraySerializer
---@param bReInitialized boolean
function UCommonBackpackComponent:ClientOnReplicateBattleItemsOpt(RepItemsOpt, bReInitialized) end

---@param TypeSpecificID number
function UCommonBackpackComponent:GetBackPackItemInterface(TypeSpecificID) end

---@return EBackpackType
function UCommonBackpackComponent:GetBackpackType() end

---@param TypeSpecificID number
---@return boolean
function UCommonBackpackComponent:IsShowInBackpack(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UCommonBackpackComponent:IsItemCanMerge(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UCommonBackpackComponent:IsItemUnique(TypeSpecificID) end

---@param DefineID FItemDefineID
function UCommonBackpackComponent:OnUseItem(DefineID) end

---@param DefineID FItemDefineID
function UCommonBackpackComponent:OnDisUseItem(DefineID) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
function UCommonBackpackComponent:OnBackpackDepotChangeNtf(Items) end

---@param ID number
---@param ItemID number
---@param Value1 string
---@param Value2 string
function UCommonBackpackComponent:TLogReportItemOperation(ID, ItemID, Value1, Value2) end

---@param ItemDefineID FItemDefineID
---@param CountNow number
---@param MergeCount number
---@return number
function UCommonBackpackComponent:CanMergeItem(ItemDefineID, CountNow, MergeCount) end

---@param ItemDefineID FItemDefineID
---@param OldCount number
---@param MergeCount number
function UCommonBackpackComponent:OnMergeItem(ItemDefineID, OldCount, MergeCount) end
