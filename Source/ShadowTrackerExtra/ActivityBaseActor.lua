---@meta

---@class FOnStateEnter : ULuaSingleDelegate
FOnStateEnter = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStateEnter:Bind(Callback, Obj) end

---执行委托
function FOnStateEnter:Execute() end


---@class FOnActorCustomStateChange : ULuaMulticastDelegate
FOnActorCustomStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Player: ASTExtraCharacter, Name: string, State: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActorCustomStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param Player ASTExtraCharacter
---@param Name string
---@param State number
function FOnActorCustomStateChange:Broadcast(Player, Name, State) end


---@class FOnPlayerAttachToChange : ULuaMulticastDelegate
FOnPlayerAttachToChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Player: ASTExtraCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerAttachToChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param Player ASTExtraCharacter
function FOnPlayerAttachToChange:Broadcast(Player) end


---@class FOnOBChange : ULuaMulticastDelegate
FOnOBChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOBChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC APlayerController
function FOnOBChange:Broadcast(PC) end


---可实现可交互物基础功能的Actor
---@class AActivityBaseActor: AUAERegionActor, IOwnBlackboardInterface, IPlayerLogicInterface, IRelativeMoveMgrInterface, IDamageableInterface, IActivityStateInterface, IGameplayTaskOwnerInterface, INetContainerterface, IClientConditionInerterface, IObjectPoolInterface, IInteractorInterface, IUnifiedInteractionInterface
---@field bAutoActiveArm boolean
---@field OnActivityActorChangeState FActivityChangeState @状态变化事件委托 @param LeaveState 离开的状态 名 @param EnterState 进入的状态名
---@field PlaybackSetting FActorPlaybackSetting
---@field OnActorCustomStateChange FOnActorCustomStateChange
---@field ActivityAvatarAnimAdaptParamMap ULuaMapHelper<EAvatarSlotType, FAvatarAnimAdaptParam>
---@field bOverrideTransform boolean
---@field StateMachineInfo ULuaArrayHelper<FActivityState>
---@field RestoreThreshold number
---@field bForceAlwaysTick boolean
---@field bUseInstanceTimeRestore boolean
---@field bUseSureTimeRestore boolean
---@field bUseDSTransformOrgin boolean
---@field bAutoBindingSelfLevelSequnce boolean
---@field SequenceLoadingAppearance UScreenAppearanceProvider_Plane
---@field bUsePropertyFilter boolean
---@field bUseCompReplicatorOpt boolean
---@field CurrentTransform FTransform
---@field CurrentIndex FActivityStateRep
---@field SequenceWrapper FActivitySequenceWrapper
---@field InstanceServerTime number
---@field bEnableAttachmentReplication boolean
---@field bMarkClientSequenceTimeDirty boolean
---@field bAsNetContainer boolean
---@field CorrectPXTransUsingRemovePhysTargetFunction boolean
---@field bIsCreateRelativeMoveMgr boolean
---@field bKeepBase boolean
---@field bNeedExitVehicleBeforeAttach boolean
---@field bClientCheckPendingKillWhenPlayerDettached boolean
---@field ActorBlackboardParams ULuaArrayHelper<FUAEBlackboardParameter>
---@field OnPlayerAttachedDelegate FOnPlayerAttachToChange @角色Attach事件委托 @param Player Attach的角色
---@field OnPlayerDettachedDelegate FOnPlayerAttachToChange @角色Detach事件委托 @param Player Detach的角色
---@field OnOBInDelegate FOnOBChange
---@field OnOBOutDelegate FOnOBChange
---@field TlogEnterTime number
---@field InteractObjectID number
---@field bNetUpdatePostNetReceive boolean
---@field ReplaceCustomNetRelevant ICustomNetRelevantInterface @Array of ActorComponents that have been added by the user on a per-instance basis.
---@field AddtiveCustomNetRelevant ULuaArrayHelper<ICustomNetRelevantInterface>
---@field bNeedParentConsiderRelevant boolean
---@field bEnableChangeTickInterval boolean
---@field bEnableChangeComponentTick boolean
---@field DefaultObjectPoolSize number
---@field DefaultObjectPoolCleanupTime number
local AActivityBaseActor = {}

function AActivityBaseActor:OnRep_AttachmentReplication_BP() end

---生效范围：SC
---获取当前状态名
---@return string @当前状态名
function AActivityBaseActor:GetCurrentStateName() end

---生效范围：SC
---获取进入当前状态后所经过的时间
---@return number @当前状态经过的时间
function AActivityBaseActor:GetCurrentStateTime() end

---生效范围：S
---跳转到指定状态
---@param StateName string @要跳转的状态名
---@param EnterTime number @进入状态的时间
---@param bPause boolean @是否暂停
function AActivityBaseActor:JumpToState(StateName, EnterTime, bPause) end

---生效范围：S
---暂停当前状态的sequence的播放
function AActivityBaseActor:Pause() end

---生效范围：S
---恢复当前状态的sequence的播放
function AActivityBaseActor:Resume() end

---@param Binding FMovieSceneObjectBindingID
---@param Object UObject
function AActivityBaseActor:AddBinding(Binding, Object) end

---@param Binding FMovieSceneObjectBindingID
---@param Object UObject
function AActivityBaseActor:RemoveBinding(Binding, Object) end

---@param Tag string
function AActivityBaseActor:AddSequenceTag(Tag) end

---@param Tag string
function AActivityBaseActor:RemoveSequenceTag(Tag) end

---@param Binding FMovieSceneObjectBindingID
function AActivityBaseActor:ResetBinding(Binding) end

---@param Binding FMovieSceneObjectBindingID
function AActivityBaseActor:GetBindingObject(Binding) end

---@param Trasnfrom FTransform
function AActivityBaseActor:SetLevelSequenceTransformOrign(Trasnfrom) end

---@param Object UObject
function AActivityBaseActor:AddEventReceiver(Object) end

---@param Object UObject
function AActivityBaseActor:RemoveEventReceiver(Object) end

---@param Tag string
function AActivityBaseActor:LevelSequencePlayerAddTag(Tag) end

---@param Tag string
function AActivityBaseActor:LevelSequencePlayerRemoveTag(Tag) end

---@param Tag string
function AActivityBaseActor:LevelSequencePlayerHasTag(Tag) end

---@return number
function AActivityBaseActor:GetCurrentSequencePostion() end

function AActivityBaseActor:GetAllSequenceResource() end

function AActivityBaseActor:SetCreateRelativeMoveMgr() end

---生效范围：SC
---检查当前状态是否为状态机的入口状态
---@return boolean @是否为入口状态
function AActivityBaseActor:CheckCurrentStateIsEntry() end

---@param ActivityDisplayActor AActor
function AActivityBaseActor:BeginActivityAvatarAdapt(ActivityDisplayActor) end

---@param ActivityDisplayActor AActor
function AActivityBaseActor:EndActivityAvatarAdapt(ActivityDisplayActor) end

---@return FTransform
function AActivityBaseActor:BP_GetTransform_Interface() end

function AActivityBaseActor:BP_GetSequenceTag_Interface() end

function AActivityBaseActor:OnRep_CurrentTransform() end

---@param PreIndex FActivityStateRep
function AActivityBaseActor:OnRep_CurrentStateIndexInfo(PreIndex) end

function AActivityBaseActor:OnRep_InstanceServerTimeChange() end

---@param NewTime number
function AActivityBaseActor:OnRep_ServerTimeChange(NewTime) end

---@param bFix boolean
function AActivityBaseActor:On_TimeSecondesFixedUp(bFix) end

---@param CurrentStateTime number
---@param RecoverType EActivityClientRecoverType
function AActivityBaseActor:OnRecoverClientState(CurrentStateTime, RecoverType) end

---Event
---进入某个状态触发
---@param StateName string @状态名
function AActivityBaseActor:OnEnterState_BP(StateName) end

---@param StateName string
function AActivityBaseActor:OnLeaveState_BP(StateName) end

---@param TargetTime number
---@param bConsiderRate boolean
function AActivityBaseActor:RestoreSequenceReal(TargetTime, bConsiderRate) end

---@param SequncePath FSoftObjectPath
---@param StateName string
---@param PlayRate number
---@param LoopCount number
---@param ShouldPauseAtLastFrame boolean
function AActivityBaseActor:OnSequenceRequestBack(SequncePath, StateName, PlayRate, LoopCount, ShouldPauseAtLastFrame) end

---@param bEnable boolean
function AActivityBaseActor:SetScreenProvider(bEnable) end

---@return number
function AActivityBaseActor:GetTimeStamp() end

---@return boolean
function AActivityBaseActor:MakeSureTime() end

---@param ID number
---@param Value1 string
---@param Value2 string
---@param Position FVector
function AActivityBaseActor:TlogStatistics(ID, Value1, Value2, Position) end

---生效范围：SC
---检查当前sequence是否播放完毕
---@return boolean @是否播放完毕
function AActivityBaseActor:GetCurrentSequnceIsEnd() end

---@return boolean
function AActivityBaseActor:IsOnReadyState() end

---@param Canvas UCanvas
---@param YL number
---@param XPos number
---@param YPos number
function AActivityBaseActor:OnDisplayDebug(Canvas, YL, XPos, YPos) end

function AActivityBaseActor:GetOwnBlackboardParameter_Implementation() end

---@return string
function AActivityBaseActor:GetDebugString() end

---Event
---当角色Attach到这个Actor时触发
---@param Player ASTExtraCharacter @Attach的角色
function AActivityBaseActor:OnPlayerAttachedToThisActor_BP(Player) end

---Event
---当角色Attach到这个Actor前触发
---@param Player ASTExtraCharacter @Attach的角色
function AActivityBaseActor:OnPlayerBeforeAttachedToThisActor_BP(Player) end

---Event
---当角色从Actor上Detach时触发
---@param Player ASTExtraCharacter @Detach的角色
function AActivityBaseActor:OnPlayerDettachedToThisActor_BP(Player) end

function AActivityBaseActor:GetDetachScenes_BP() end

---@return string
function AActivityBaseActor:GetAttachSceneSocketName_BP() end

function AActivityBaseActor:OnClientSwitchInDs() end

---@param InteractPlayer ASTExtraCharacter
---@param InteractType number
---@param Count number
function AActivityBaseActor:ReportInteractEvent(InteractPlayer, InteractType, Count) end

---@param Interface ICustomNetRelevantInterface
function AActivityBaseActor:AddCustomNetRelevantInterface(Interface) end

---@param Interface ICustomNetRelevantInterface
function AActivityBaseActor:RemoveCustomNetRelevantInterface(Interface) end

function AActivityBaseActor:ClearCustomNetRelevantInterface() end

---@param Type EClientCheckType
---@param Params string
---@return boolean
function AActivityBaseActor:CheckClientValidBP(Type, Params) end

---@return boolean
function AActivityBaseActor:GetCanBePicked_BP() end

---@return number
function AActivityBaseActor:GetBeVehicleDamageSpeed_BP() end

---@return number
function AActivityBaseActor:GetBeVehicleDamagedCoefficient_BP() end

---@param Rep FActivityStateRep
function AActivityBaseActor:OverrideCurrentState(Rep) end

function AActivityBaseActor:RestoreCurrentState() end

---@param StateName string
---@param EnterTime number
---@param bPause boolean
function AActivityBaseActor:OverrideCurrentStateByName(StateName, EnterTime, bPause) end

---@param bEnter boolean
function AActivityBaseActor:EventPlayerActiveRegionsChanged(bEnter) end

function AActivityBaseActor:OnRep_Owner_BP() end
