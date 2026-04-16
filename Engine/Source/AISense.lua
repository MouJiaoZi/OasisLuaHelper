---@meta

---@class FOnPerceptionListenerUpdateDelegate : ULuaSingleDelegate
FOnPerceptionListenerUpdateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FPerceptionListener) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPerceptionListenerUpdateDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FPerceptionListener
function FOnPerceptionListenerUpdateDelegate:Execute(Param1) end


---@class UAISense: UObject
---@field DefaultExpirationAge number @age past which stimulus of this sense are "forgotten"
---@field NotifyType EAISenseNotifyType
---@field bWantsNewPawnNotification number @whether this sense is interested in getting notified about new Pawns being spawned this can be used for example for automated sense sources registration
---@field bAutoRegisterAllPawnsAsSources number @If true all newly spawned pawns will get auto registered as source for this sense.
local UAISense = {}
