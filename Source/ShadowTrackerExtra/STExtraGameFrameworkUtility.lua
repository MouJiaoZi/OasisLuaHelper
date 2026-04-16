---@meta

---@class FOnGameStateValidDelegate : ULuaSingleDelegate
FOnGameStateValidDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, GameState: ASTExtraGameStateBase) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameStateValidDelegate:Bind(Callback, Obj) end

---执行委托
---@param GameState ASTExtraGameStateBase
function FOnGameStateValidDelegate:Execute(GameState) end


---@class FOnGameStateReady : ULuaMulticastDelegate
FOnGameStateReady = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, GameState: AGameStateBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGameStateReady:Add(Callback, Obj) end

---触发 Lua 广播
---@param GameState AGameStateBase
function FOnGameStateReady:Broadcast(GameState) end


---@class USTExtraGameFrameworkUtility: UBlueprintFunctionLibrary
local USTExtraGameFrameworkUtility = {}

---@param InObject UObject
function USTExtraGameFrameworkUtility:BP_SavePackage(InObject) end


---@class UAsyncGetGameState: UBlueprintAsyncActionBase
---@field OnGameStateReady FOnGameStateReady
local UAsyncGetGameState = {}
