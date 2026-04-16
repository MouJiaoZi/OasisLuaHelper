---@meta

---@class FUGCWarehouseItemData
---@field ItemDefineID FItemDefineID
---@field ItemCount number
FUGCWarehouseItemData = {}


---@class FCheckCanTransferDelegate : ULuaSingleDelegate
FCheckCanTransferDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: IUGCItemTransferInterface, Param2: ULuaArrayHelper<FUGCTransferItemData>, Param3: ULuaArrayHelper<FUGCTransferItemData>) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCheckCanTransferDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 IUGCItemTransferInterface
---@param Param2 ULuaArrayHelper<FUGCTransferItemData>
---@param Param3 ULuaArrayHelper<FUGCTransferItemData>
function FCheckCanTransferDelegate:Execute(Param1, Param2, Param3) end


---@class FUGCItemWarehouseCellCapacityChange : ULuaMulticastDelegate
FUGCItemWarehouseCellCapacityChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewCellCapacity: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCItemWarehouseCellCapacityChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewCellCapacity number
function FUGCItemWarehouseCellCapacityChange:Broadcast(NewCellCapacity) end


---仓库对象
---@class UUGCItemWarehouseBase: UObject, IUGCItemContainerInterface
---@field ItemChangeDelegate FUGCItemChangeDelegate @当仓库物品实例数据发生改变时广播 广播范围：服务端 & 客户端
---@field ItemAddDelegate FUGCItemAddDelegate @当仓库新增物品实例时广播 广播范围：服务端 & 客户端
---@field ItemUpdateDelegate FUGCItemUpdateDelegate @当物品实例数据更新时广播 广播范围：服务端 & 客户端
---@field ItemRemoveDelegate FUGCItemRemoveDelegate @当移除物品实例时广播 广播范围：服务端 & 客户端
---@field CellCapacityChangeDelegate FUGCItemWarehouseCellCapacityChange
---@field CellCapacity number
---@field CellCount number
---@field ItemDatas ULuaArrayHelper<FUGCWarehouseItemData>
---@field OldItemDataMap ULuaMapHelper<FItemDefineID, FUGCWarehouseItemData>
local UUGCItemWarehouseBase = {}

---@param CellCapacity number
function UUGCItemWarehouseBase:Init(CellCapacity) end

---@param NewCellCapacity number
---@return boolean
function UUGCItemWarehouseBase:SetCellCapacity(NewCellCapacity) end

---@param ItemDefineID FItemDefineID
---@return number
function UUGCItemWarehouseBase:GetItemCountByDefineIDV2(ItemDefineID) end

---@param ItemID number
---@return number
function UUGCItemWarehouseBase:GetItemCountV2(ItemID) end

function UUGCItemWarehouseBase:GetAllItemDefineIDsV2() end

---@param OtherTransfer IUGCItemTransferInterface
---@param InItemList ULuaArrayHelper<FUGCTransferItemData>
---@param OutItemList ULuaArrayHelper<FUGCTransferItemData>
---@return FUGCItemTransferResult
function UUGCItemWarehouseBase:CheckCanTransfer_Implementation(OtherTransfer, InItemList, OutItemList) end

---@param OtherTransfer IUGCItemTransferInterface
---@param InItemList ULuaArrayHelper<FUGCTransferItemData>
---@param OutItemList ULuaArrayHelper<FUGCTransferItemData>
function UUGCItemWarehouseBase:ExecuteTransfer_Implementation(OtherTransfer, InItemList, OutItemList) end

function UUGCItemWarehouseBase:TrySortOutItem() end

---@param ItemData FUGCWarehouseItemData
---@param AttachRoot boolean
function UUGCItemWarehouseBase:AddItem(ItemData, AttachRoot) end

---@param ItemDefineID FItemDefineID
---@param SplitCount number
---@param AttachRoot boolean
function UUGCItemWarehouseBase:RemoveItem(ItemDefineID, SplitCount, AttachRoot) end

function UUGCItemWarehouseBase:OnRepCellCapacity() end

function UUGCItemWarehouseBase:OnRepItemDatas() end
