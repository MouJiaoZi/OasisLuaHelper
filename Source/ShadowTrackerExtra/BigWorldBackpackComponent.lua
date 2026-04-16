---@meta

---@class EBigWorldItemType
---@field NotBigWorldItem number
---@field BigWorldDSItem number
---@field BigWorldCloudItem number
---@field BigWorldLobbyItem number
---@field BigWorldHomeItem number
---@field BigWorldUGCItem number
EBigWorldItemType = {}


---@class FBigWorldBackpackMemento
---@field PropertyBytes ULuaArrayHelper<number>
FBigWorldBackpackMemento = {}


---@class FBigWorldBackpackDSTravelRestoreDelegate : ULuaSingleDelegate
FBigWorldBackpackDSTravelRestoreDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBigWorldBackpackDSTravelRestoreDelegate:Bind(Callback, Obj) end

---执行委托
function FBigWorldBackpackDSTravelRestoreDelegate:Execute() end


---@class UBigWorldBackpackComponent: UBaseBackpackComponent
---@field BigWorldBackpackDSTravelRestoreDelegate FBigWorldBackpackDSTravelRestoreDelegate
---@field ItemOperationInfoDelegate FItemOperationInfoDelegate
---@field bHasBeenInitialized boolean
---@field bReInitializedReplicateItems boolean
---@field BigWorldBackpackMemento FBigWorldBackpackMemento
---@field BackpackComponent UBackpackComponent
local UBigWorldBackpackComponent = {}

function UBigWorldBackpackComponent:OnSwitchingOutDS() end

function UBigWorldBackpackComponent:OnSwitchingInDS() end

function UBigWorldBackpackComponent:OnSwitchDSLogin() end

function UBigWorldBackpackComponent:OnRep_BackpackComponent() end

function UBigWorldBackpackComponent:ServerTellBackpackIsReplicated() end

function UBigWorldBackpackComponent:TickReplicateItems() end

---@param BackpackComp UBackpackComponent
function UBigWorldBackpackComponent:ClientInitBackpackComponent(BackpackComp) end

---@param bReInitialized boolean
function UBigWorldBackpackComponent:ReplicateBattleItems(bReInitialized) end

---@param RepItems ULuaArrayHelper<FNetArrayUnitNew>
---@param bReInitialized boolean
function UBigWorldBackpackComponent:ClientOnReplicateBattleItems(RepItems, bReInitialized) end

---@param RepItemsOpt FNetRPCItemArraySerializer
---@param bReInitialized boolean
function UBigWorldBackpackComponent:ClientOnReplicateBattleItemsOpt(RepItemsOpt, bReInitialized) end

---@param TypeSpecificID number
function UBigWorldBackpackComponent:GetBackPackItemInterface(TypeSpecificID) end

---@param bInitial boolean
function UBigWorldBackpackComponent:SetInitialDepotItems(bInitial) end

---@param bOnOrOff boolean
function UBigWorldBackpackComponent:SetUGCItemSaveToServerSwitch(bOnOrOff) end

function UBigWorldBackpackComponent:HandleEquippedItemOnSwitchDS() end

---@return EBackpackType
function UBigWorldBackpackComponent:GetBackpackType() end

---@param TypeSpecificID number
---@return EBigWorldItemType
function UBigWorldBackpackComponent:GetBigWorldItemType(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBigWorldBackpackComponent:IsShowInBackpack(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBigWorldBackpackComponent:IsBigWorldUGCVirtualItem(TypeSpecificID) end

---@param TypeSpecificID number
---@return boolean
function UBigWorldBackpackComponent:IsItemCanMerge(TypeSpecificID) end

---@param Item IItemInterface
function UBigWorldBackpackComponent:ClientRemoveItemNewFlag(Item) end

---@param DefineID FItemDefineID
function UBigWorldBackpackComponent:ServerRemoveItemNewFlag(DefineID) end

---@param Item IItemInterface
---@param Count number
function UBigWorldBackpackComponent:ClientDropItem(Item, Count) end

---@param DefineID FItemDefineID
---@param Count number
function UBigWorldBackpackComponent:ServerDropItem(DefineID, Count) end

---@param TypeSpecificID number
---@return boolean
function UBigWorldBackpackComponent:IsItemUnique(TypeSpecificID) end

---@param DefineID FItemDefineID
function UBigWorldBackpackComponent:OnUseItem(DefineID) end

---@param DefineID FItemDefineID
function UBigWorldBackpackComponent:OnDisUseItem(DefineID) end

---@param Items ULuaArrayHelper<FBackpackItemParams>
function UBigWorldBackpackComponent:OnBackpackDepotChangeNtf(Items) end

---@param ID number
---@param ItemID number
---@param Value1 string
---@param Value2 string
function UBigWorldBackpackComponent:TLogReportItemOperation(ID, ItemID, Value1, Value2) end


---@class UBigWorldBackpackUGCItem: UBackpackVirtualItem
local UBigWorldBackpackUGCItem = {}

---@param ItemInterface IItemInterface
---@return FItemPlaceTab
function UBigWorldBackpackUGCItem:GetWrapperItemPlaceTab(ItemInterface) end

---@param TypeSpecificID number
---@return number
function UBigWorldBackpackUGCItem:GetExpireTime(TypeSpecificID) end

---@param DefineIDList ULuaArrayHelper<FItemDefineID>
function UBigWorldBackpackUGCItem:SaveItemsToServer(DefineIDList) end
