---@meta

---@class FFreeCombinationVoiceStartPlayDelegate : ULuaMulticastDelegate
FFreeCombinationVoiceStartPlayDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, VoiceID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFreeCombinationVoiceStartPlayDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param VoiceID number
function FFreeCombinationVoiceStartPlayDelegate:Broadcast(VoiceID) end


---@class FFreeCombinationVoiceEndPlayDelegate : ULuaMulticastDelegate
FFreeCombinationVoiceEndPlayDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, VoiceID: number, Interrupt: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFreeCombinationVoiceEndPlayDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param VoiceID number
---@param Interrupt boolean
function FFreeCombinationVoiceEndPlayDelegate:Broadcast(VoiceID, Interrupt) end


---@class UFreeCombinationVoicePlayerComponent: UFreeCombinationVoiceComponent
---@field VoicePlayClass UFreeCombinationVoicePlayBase
---@field OnVoiceStartPlay FFreeCombinationVoiceStartPlayDelegate
---@field OnVoiceEndPlay FFreeCombinationVoiceEndPlayDelegate
local UFreeCombinationVoicePlayerComponent = {}

---@param VoiceID number
---@param Priority number
function UFreeCombinationVoicePlayerComponent:PlayVoice(VoiceID, Priority) end
