---@meta

---@class FGameModeActivityPlayerRealExitDelegate : ULuaMulticastDelegate
FGameModeActivityPlayerRealExitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Exiting: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeActivityPlayerRealExitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Exiting APlayerController
function FGameModeActivityPlayerRealExitDelegate:Broadcast(Exiting) end


---@class FGameModeStateChangeDelegate : ULuaMulticastDelegate
FGameModeStateChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentState: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGameModeStateChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentState string
function FGameModeStateChangeDelegate:Broadcast(CurrentState) end


---@class ABattleRoyaleActivityGameMode: ABattleRoyaleGameModeTeam
---@field OnPlayerRealExitDelegate FGameModeActivityPlayerRealExitDelegate
---@field OnGameModeStateChangeDelegate FGameModeStateChangeDelegate
---@field SpecialCollectItemList ULuaArrayHelper<number>
local ABattleRoyaleActivityGameMode = {}

---@param ConcertActivityData FConcertActivityData
function ABattleRoyaleActivityGameMode:GetActivityResultData(ConcertActivityData) end

function ABattleRoyaleActivityGameMode:FinishGame() end
