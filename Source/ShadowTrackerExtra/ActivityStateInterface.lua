---@meta

---@class ESequenceBindingType
---@field None number
---@field GenerateActorSequence number
---@field BindingActorSequence number
---@field BindingLevelSequence number
---@field BindingSoftLevelSequence number
---@field GenerateSkillSequence number
ESequenceBindingType = {}


---@class EClientCheckType
---@field None number
---@field SoftLevelSequence number
---@field ActivityUIInfo number
EClientCheckType = {}


---@class EActivityClientRecoverType
---@field Recover_None number
---@field Recover_NewActor number
---@field Recover_NetLoss number
---@field Recover_ApplicationReactivated number
---@field Recover_ObChange number
---@field Recover_ReInitForReplay number
---@field Recover_RelvantForReplay number
EActivityClientRecoverType = {}


---@class FActivityLink
---@field LinkName string
---@field LinkConditionFunctionName string
---@field bNotCondition boolean
---@field LinkStateIndex number
---@field LinkStateName string
FActivityLink = {}


---@class FActivityState
---@field StateName string
---@field StateEnterFunctionName string
---@field StateLeaveFunctionName string
---@field StateIndex number
---@field LinkArray ULuaArrayHelper<FActivityLink>
---@field bStateMachineEntry boolean
---@field SequenceType ESequenceBindingType
---@field TlogStatisticsID number
---@field StateSequenceName string
---@field LevelSequencePath FSoftObjectPath
---@field LoopCount number
---@field PlayRate number
---@field ShouldPauseAtLastFrame boolean
---@field AutoSelfBinding ULuaArrayHelper<FMovieSceneObjectBindingID>
FActivityState = {}


---@class FActivityActorSequenceBinding
---@field SourceSequence FSoftObjectPath @The sequence from which to choose a binding identifier
---@field Binding FMovieSceneObjectBindingID @The user-selected literal binding identifier from the sequence to use
FActivityActorSequenceBinding = {}


---@class FActivityLevelSequenceBinding
---@field SourceSequence FSoftObjectPath @The sequence from which to choose a binding identifier
---@field Binding FMovieSceneObjectBindingID @The user-selected literal binding identifier from the sequence to use
FActivityLevelSequenceBinding = {}


---@class FActivityStateRep
---@field StateIndex number
---@field EnterTime number
---@field ServeEnterSequenceTime number
---@field bPause boolean
---@field PredictID number
FActivityStateRep = {}


---@class FActorPlaybackSetting
---@field bEnableHDR boolean
---@field bRestoreState boolean
FActorPlaybackSetting = {}


---@class FActivityChangeState : ULuaMulticastDelegate
FActivityChangeState = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LeaveState: string, EnterState: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FActivityChangeState:Add(Callback, Obj) end

---触发 Lua 广播
---@param LeaveState string
---@param EnterState string
function FActivityChangeState:Broadcast(LeaveState, EnterState) end


---@class INetContainerterface
INetContainerterface = {}


---@class IClientConditionInerterface
IClientConditionInerterface = {}
