---@meta

---@class FRCRCharacterRelevancy
FRCRCharacterRelevancy = {}


---@class FPendingNetworkObject
FPendingNetworkObject = {}


---@class FOnPostNetDriverTickDispatch : ULuaSingleDelegate
FOnPostNetDriverTickDispatch = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostNetDriverTickDispatch:Bind(Callback, Obj) end

---执行委托
function FOnPostNetDriverTickDispatch:Execute() end


---@class UUAENetDriver: UIpNetDriver
---@field PacketsLateDistribution ULuaArrayHelper<number>
---@field CheckSocketRecvTimer number
---@field CheckSocketRecvRatioOfSocketBuffer number
local UUAENetDriver = {}

---@param EnsureString string
function UUAENetDriver:OnDSEnsure(EnsureString) end

---@param Title string
---@param Message string
function UUAENetDriver:OnUGCException(Title, Message) end
