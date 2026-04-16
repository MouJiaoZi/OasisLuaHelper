---@meta

---@class FPEPendingStateParams
---@field StateName string
---@field EnterTime number
---@field Pause boolean
FPEPendingStateParams = {}


---实现了状态机的PersistEffect，是PersistEffectSkill的基类
---@class UPersistEffectWithState: UPersistEffectBase, IActivityStateInterface, IClientConditionInerterface
---@field bOverrideTransform boolean
---@field SkillPlayRate number
---@field StateMachineInfo ULuaArrayHelper<FActivityState>
---@field SequenceLoadingAppearance UScreenAppearanceProvider_Plane
---@field bUseSureTimeRestore boolean
---@field RestoreThreshold number
---@field bMarkClientSequenceTimeDirty boolean
---@field bInClientLimit boolean
---@field bAutoBindingSelfLevelSequnce boolean
---@field PendingState FPEPendingStateParams
---@field OnPersistEffectChangeState FActivityChangeState
---@field CurrentTransform FTransform
---@field CurrentIndex FActivityStateRep
---@field SequenceWrapper FActivitySequenceWrapper
---@field PlaybackSetting FActorPlaybackSetting
local UPersistEffectWithState = {}

---获取当前状态的名字
---生效范围: 服务器&客户端
---@return string
function UPersistEffectWithState:GetCurrentStateName() end

---获取状态的运行时间
---生效范围: 服务器&客户端
---@return number
function UPersistEffectWithState:GetCurrentStateTime() end

---获取跳转到指定状态
---生效范围: 服务器
---@param StateName string @跳转的目标状态名
---@param EnterTime number @跳转到目标状态的时间
---@param bPause boolean @是否暂停sequence播放
function UPersistEffectWithState:JumpToState(StateName, EnterTime, bPause) end

---@return FTransform
function UPersistEffectWithState:BP_GetTransform_Interface() end

---@param Binding FMovieSceneObjectBindingID
---@param Object UObject
function UPersistEffectWithState:AddBinding(Binding, Object) end

---@param Binding FMovieSceneObjectBindingID
---@param Object UObject
function UPersistEffectWithState:RemoveBinding(Binding, Object) end

---@param Tag string
function UPersistEffectWithState:AddSequenceTag(Tag) end

---@param Tag string
function UPersistEffectWithState:RemoveSequenceTag(Tag) end

---@param Binding FMovieSceneObjectBindingID
function UPersistEffectWithState:GetBindingObject(Binding) end

---@param Object UObject
function UPersistEffectWithState:AddEventReceiver(Object) end

---@param Object UObject
function UPersistEffectWithState:RemoveEventReceiver(Object) end

---@param bEnable boolean
function UPersistEffectWithState:SetScreenProvider(bEnable) end

---@return number
function UPersistEffectWithState:OverrideSkillPlayRate() end

---@param Rate number
function UPersistEffectWithState:SetPlayRate(Rate) end

---@return number
function UPersistEffectWithState:GetPlayRate() end

---@param Type EClientCheckType
---@param Params string
---@return boolean
function UPersistEffectWithState:CheckClientValid_BP(Type, Params) end

---@return string
function UPersistEffectWithState:GetCheckClientParam_BP() end

---@param PreIndex FActivityStateRep
function UPersistEffectWithState:OnRep_CurrentStateIndexInfo(PreIndex) end

function UPersistEffectWithState:OnRep_CurrentTransform() end

---@param NewTime number
function UPersistEffectWithState:OnRep_ServerTimeChange(NewTime) end

---@param SequncePath FSoftObjectPath
---@param StateName string
---@param PlayRate number
---@param LoopCount number
---@param ShouldPauseAtLastFrame boolean
function UPersistEffectWithState:OnSequenceRequestBack(SequncePath, StateName, PlayRate, LoopCount, ShouldPauseAtLastFrame) end

---@param CurrentStateTime number
---@param RecoverType EActivityClientRecoverType
function UPersistEffectWithState:OnRecoverClientState(CurrentStateTime, RecoverType) end

---@return boolean
function UPersistEffectWithState:GetCurrentSequnceIsEnd() end
