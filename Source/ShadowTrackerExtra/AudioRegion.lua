---@meta

---@class EAudioRegionEventType
---@field Enter number
---@field Exit number
EAudioRegionEventType = {}


---@class FAudioRegionEventDelegate : ULuaMulticastDelegate
FAudioRegionEventDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAudioRegionEventDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
function FAudioRegionEventDelegate:Broadcast(Param1) end


---@class FAudioRegionEnemyEventDelegate : ULuaMulticastDelegate
FAudioRegionEnemyEventDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAudioRegionEnemyEventDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 number
function FAudioRegionEnemyEventDelegate:Broadcast(Param1, Param2) end


---@class UAudioRegionInitializer: UObject
local UAudioRegionInitializer = {}


---@class UAudioRegion: UObject
local UAudioRegion = {}
