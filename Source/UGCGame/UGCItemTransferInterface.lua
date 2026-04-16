---@meta

---@class FUGCTransferItemData
---@field ItemDefineID FItemDefineID
---@field ItemCount number
FUGCTransferItemData = {}


---物品转移结果
---@class FUGCItemTransferResult
---@field CanTransfer boolean @转移是否成功
---@field TransferErrorReason ULuaArrayHelper<string> @如果转移失败，失败原因来自于转移者
---@field ItemErrorReason ULuaMapHelper<FItemDefineID, string> @如果转移失败，失败原因来自于物品
FUGCItemTransferResult = {}


---@class IUGCItemTransferInterface: IInterface
IUGCItemTransferInterface = {}

---@param OtherTransfer IUGCItemTransferInterface
---@param InItemList ULuaArrayHelper<FUGCTransferItemData>
---@param OutItemList ULuaArrayHelper<FUGCTransferItemData>
---@return FUGCItemTransferResult
function IUGCItemTransferInterface:CheckCanTransfer(OtherTransfer, InItemList, OutItemList) end

---@param OtherTransfer IUGCItemTransferInterface
---@param InItemList ULuaArrayHelper<FUGCTransferItemData>
---@param OutItemList ULuaArrayHelper<FUGCTransferItemData>
function IUGCItemTransferInterface:ExecuteTransfer(OtherTransfer, InItemList, OutItemList) end


---@class UUGCItemTransferFunctionLibrary: UBlueprintFunctionLibrary
local UUGCItemTransferFunctionLibrary = {}

---@param TransferA IUGCItemTransferInterface
---@param ChipsA ULuaArrayHelper<FUGCTransferItemData>
---@param TransferB IUGCItemTransferInterface
---@param ChipsB ULuaArrayHelper<FUGCTransferItemData>
---@return FUGCItemTransferResult
function UUGCItemTransferFunctionLibrary:ExchangeItems(TransferA, ChipsA, TransferB, ChipsB) end
