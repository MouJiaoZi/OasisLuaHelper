---@meta

---@class FFreeCombinationVoiceRuleTick : ULuaMulticastDelegate
FFreeCombinationVoiceRuleTick = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFreeCombinationVoiceRuleTick:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaTime number
function FFreeCombinationVoiceRuleTick:Broadcast(DeltaTime) end


---@class UFreeCombinationVoiceRuleGroup: UObject
---@field OnTick FFreeCombinationVoiceRuleTick
---@field NeedActiveRules ULuaMapHelper<number, number>
---@field ActiveRules ULuaMapHelper<number, UFreeCombinationVoiceRule>
---@field AsyncLoadSerialNumber number
---@field AsyncLoadIDs ULuaSetHelper<number>
local UFreeCombinationVoiceRuleGroup = {}

---@param DeltaTime number
function UFreeCombinationVoiceRuleGroup:Tick(DeltaTime) end

---@param RulesPath ULuaMapHelper<number, FSoftObjectPath>
function UFreeCombinationVoiceRuleGroup:RequestActiveRules(RulesPath) end

---@param Rules ULuaArrayHelper<number>
function UFreeCombinationVoiceRuleGroup:RequestDeactiveRules(Rules) end

---@param RuleID number
---@param RulePath FSoftObjectPath
---@param AsyncLoadID number
function UFreeCombinationVoiceRuleGroup:CreateRule(RuleID, RulePath, AsyncLoadID) end
