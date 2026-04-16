---@meta

---@class AActivityActorForClient: AUAERegionActor, IActivityStateInterface, IGameplayTaskOwnerInterface, IActorHiddenInterface, IInteractorInterface
---@field PlaybackSetting FActorPlaybackSetting
---@field bAutoActiveArm boolean
---@field SequenceLoadingAppearance UScreenAppearanceProvider_Plane
---@field StateMachineInfo ULuaArrayHelper<FActivityState>
---@field CurrentIndex FActivityStateRep
---@field SequenceWrapper FActivitySequenceWrapper
local AActivityActorForClient = {}

---@return string
function AActivityActorForClient:GetCurrentStateName() end

---@param StateName string
---@param EnterTime number
---@param bPause boolean
function AActivityActorForClient:JumpToState(StateName, EnterTime, bPause) end

function AActivityActorForClient:Pause() end

function AActivityActorForClient:Resume() end

---@param Binding FMovieSceneObjectBindingID
---@param Object UObject
function AActivityActorForClient:AddBinding(Binding, Object) end

---@param Binding FMovieSceneObjectBindingID
---@param Object UObject
function AActivityActorForClient:RemoveBinding(Binding, Object) end

---@param Binding FMovieSceneObjectBindingID
function AActivityActorForClient:GetBindingObject(Binding) end

---@param Trasnfrom FTransform
function AActivityActorForClient:SetLevelSequenceTransformOrign(Trasnfrom) end

---@param bEnable boolean
function AActivityActorForClient:SetScreenProvider(bEnable) end

---@param SequncePath FSoftObjectPath
---@param StateName string
---@param PlayRate number
---@param LoopCount number
---@param ShouldPauseAtLastFrame boolean
function AActivityActorForClient:OnSequenceRequestBack(SequncePath, StateName, PlayRate, LoopCount, ShouldPauseAtLastFrame) end

---@return boolean
function AActivityActorForClient:GetCurrentSequnceIsEnd() end
