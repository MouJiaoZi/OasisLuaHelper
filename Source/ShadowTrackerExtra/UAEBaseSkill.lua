---@meta

---@class FSkillCustomEvent : ULuaMulticastDelegate
FSkillCustomEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SkillEventType: EUAESkillEvent, SkillOwner: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSkillCustomEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param SkillEventType EUAESkillEvent
---@param SkillOwner AActor
function FSkillCustomEvent:Broadcast(SkillEventType, SkillOwner) end


---@class FSkillCustomStrEvent : ULuaMulticastDelegate
FSkillCustomStrEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SkillEventStr: string, SkillOwner: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSkillCustomStrEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param SkillEventStr string
---@param SkillOwner AActor
function FSkillCustomStrEvent:Broadcast(SkillEventStr, SkillOwner) end


---小怪技能类
---@class AUAEBaseSkill: AUTSkill
---@field OnSkillCustomEvent FSkillCustomEvent
---@field OnSkillCustomStrEvent FSkillCustomStrEvent
local AUAEBaseSkill = {}

---@param comp UUTSkillManagerComponent
---@param TheEventType UTSkillEventType
---@param PhaseIndex number
---@return boolean
function AUAEBaseSkill:OnEvent(comp, TheEventType, PhaseIndex) end
