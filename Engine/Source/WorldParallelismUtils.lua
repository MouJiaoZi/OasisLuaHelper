---@meta

---@class FWorldParallelismIDWrapper
---@field WorldParallelismID number
FWorldParallelismIDWrapper = {}


---@class FParallelWorldInfo
---@field GameModeURL FURL
---@field AdditionalLevel string
FParallelWorldInfo = {}


---@class FParallelWorldPlayerInfo
---@field WorldParallelismID number
---@field PlayerName string
FParallelWorldPlayerInfo = {}


---@class FWorldParallelismManager
---@field Players ULuaArrayHelper<FParallelWorldPlayerInfo>
---@field ParallelGameModes ULuaMapHelper<number, AGameModeBase>
---@field ParallelGameStates ULuaMapHelper<number, AGameStateBase>
FWorldParallelismManager = {}


---@class FParallelWorldDelegate : ULuaMulticastDelegate
FParallelWorldDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FParallelWorldDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
function FParallelWorldDelegate:Broadcast(Param1) end


---@class UWorldParallelismBlueprintUtils: UObject
local UWorldParallelismBlueprintUtils = {}
