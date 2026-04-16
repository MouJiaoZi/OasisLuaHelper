---@meta

---@class FActivityEventState
---@field StateName string
---@field NextStateName string
---@field StatePeriod number
---@field EventStateNames ULuaArrayHelper<string>
FActivityEventState = {}


---@class FActivityEventStateArray
---@field StateList ULuaArrayHelper<FActivityEventState>
FActivityEventStateArray = {}


---@class FActivityEventStartState
---@field StateMachineName string
---@field StartStateName string
FActivityEventStartState = {}


---@class FActivityEventStateConfig
---@field StateConfig ULuaMapHelper<string, FActivityEventStateArray>
---@field StartStateList ULuaArrayHelper<FActivityEventStartState>
FActivityEventStateConfig = {}


---@class FActivityEventStateData
---@field StateMachineName string
---@field CurrentStateName string
---@field EnterTime number
---@field StatePeriod number
FActivityEventStateData = {}


---@class FOnActivityEventStateChange : ULuaMulticastDelegate
FOnActivityEventStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ActivityEventState: UActivityEventState_NAD) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActivityEventStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param ActivityEventState UActivityEventState_NAD
function FOnActivityEventStateChange:Broadcast(ActivityEventState) end


---@class UActivityEventState_NAD: UNetAlienationData
---@field StateRep ULuaArrayHelper<FActivityEventStateData>
---@field ActivityEventStateConfig FActivityEventStateConfig
---@field OnActivityEventStateChange FOnActivityEventStateChange
---@field StateTHMap ULuaMapHelper<string, FTimerHandle>
local UActivityEventState_NAD = {}

---@param StateMachineName string
---@param TargetState string
function UActivityEventState_NAD:ChangeState(StateMachineName, TargetState) end

---@param StateMachineName string
---@return FActivityEventStateData
function UActivityEventState_NAD:GetCurrentState(StateMachineName) end

---@return number
function UActivityEventState_NAD:GetCurTimeStamp() end

---@param NewState FActivityEventStateData
---@param PreState string
function UActivityEventState_NAD:OnStateChange(NewState, PreState) end

function UActivityEventState_NAD:OnRep_StateRep() end

function UActivityEventState_NAD:OnRep_StateRepBP() end

---@param StateMachineName string
---@param TargetState string
function UActivityEventState_NAD:OnTimerChangeState(StateMachineName, TargetState) end

function UActivityEventState_NAD:OnGotoFightingState() end
