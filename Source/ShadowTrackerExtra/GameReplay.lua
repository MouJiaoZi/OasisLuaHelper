---@meta

---@class EReplayEndReason
---@field Unknown number
---@field Completed number
---@field ManualStop number
---@field PlaybackError number
EReplayEndReason = {}


---@class FOnReplayPreLoadmapStartDelegate : ULuaSingleDelegate
FOnReplayPreLoadmapStartDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayPreLoadmapStartDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReplayPreLoadmapStartDelegate:Execute() end


---@class FOnReplayReadyInitUIDelegate : ULuaSingleDelegate
FOnReplayReadyInitUIDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayReadyInitUIDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReplayReadyInitUIDelegate:Execute() end


---@class FOnReplayGotoTimeResetUIDelegate : ULuaSingleDelegate
FOnReplayGotoTimeResetUIDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayGotoTimeResetUIDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReplayGotoTimeResetUIDelegate:Execute() end


---@class FOnReplayResetViewTargetDelegate : ULuaSingleDelegate
FOnReplayResetViewTargetDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayResetViewTargetDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReplayResetViewTargetDelegate:Execute() end


---@class FOnReplayStreamerReadyDelegate : ULuaMulticastDelegate
FOnReplayStreamerReadyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayStreamerReadyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 boolean
function FOnReplayStreamerReadyDelegate:Broadcast(Param1) end


---@class FOnReplayFinishLoadingDelegate : ULuaSingleDelegate
FOnReplayFinishLoadingDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayFinishLoadingDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReplayFinishLoadingDelegate:Execute() end


---@class FOnReplayFinishPlayingDelegate : ULuaSingleDelegate
FOnReplayFinishPlayingDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayFinishPlayingDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReplayFinishPlayingDelegate:Execute() end


---@class FOnReplayFinishPlayingDynamicDelegate : ULuaSingleDelegate
FOnReplayFinishPlayingDynamicDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayFinishPlayingDynamicDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReplayFinishPlayingDynamicDelegate:Execute() end


---@class FOnCamAnimFinishedDelegate : ULuaMulticastDelegate
FOnCamAnimFinishedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCamAnimFinishedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 string
function FOnCamAnimFinishedDelegate:Broadcast(Param1) end


---@class FOnReplayCharacterSpawned : ULuaMulticastDelegate
FOnReplayCharacterSpawned = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: ASTExtraPlayerCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayCharacterSpawned:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 ASTExtraPlayerCharacter
function FOnReplayCharacterSpawned:Broadcast(Param1) end


---@class FOnReplayCharacterDestoryed : ULuaMulticastDelegate
FOnReplayCharacterDestoryed = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: ASTExtraPlayerCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayCharacterDestoryed:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 ASTExtraPlayerCharacter
function FOnReplayCharacterDestoryed:Broadcast(Param1) end


---@class FOnReplayPauseDelegate : ULuaMulticastDelegate
FOnReplayPauseDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bPause: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReplayPauseDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bPause boolean
function FOnReplayPauseDelegate:Broadcast(bPause) end


---@class UGameReplay: UObject, FTickableGameObject
---@field bJumpCheckCameraView boolean
---@field OnReplayFinishPlayingDynamicDelegate FOnReplayFinishPlayingDynamicDelegate
---@field GMUIClass UUserWidget
---@field VolumeValueMax number
---@field IsLive boolean
---@field SimulateLiveTotalTime number
---@field IsLivePlayEnd boolean
---@field EndReason EReplayEndReason
---@field bSpringArmUsePawnRotation boolean
---@field bUseInterpMovement boolean
---@field bShouldFocusViewOnTombBox boolean
---@field SpringArmRotLagSpeed number
---@field VolumeInterpolationTimeMs number
---@field ControlRotationLagSpeed number
---@field RecordHz number
---@field BufferHintSeconds number
---@field MaxDesiredRecordTimeMS number
---@field CheckpointSaveMaxMSPerFrame number
---@field CheckpointUploadDelayInSeconds number
---@field bUseCheckPoint boolean
---@field ViewDistanceFactorFlying number
---@field ScreenSizeCullingFactorFlying number
---@field ViewDistanceFactorLand number
---@field ScreenSizeCullingFactorLand number
---@field bIsPausePlaying boolean
---@field ViewCharacter ASTExtraBaseCharacter
---@field ViewVehicle ASTExtraVehicleBase
---@field ReplayWidgetPtr UReplayWidgetBase
---@field ReplayProgressWidgetPtr UReplayProgressbarWidget
---@field isProgressChanged boolean
---@field OnReplayReadyInitUIDelegate FOnReplayReadyInitUIDelegate
---@field OnReplayGotoTimeResetUIDelegate FOnReplayGotoTimeResetUIDelegate
---@field OnReplayResetViewTargetDelegate FOnReplayResetViewTargetDelegate
---@field OnReplayChangeViewTargetDelegate FOnReplayResetViewTargetDelegate
---@field ReplayPauseDelegate FOnReplayPauseDelegate
---@field ReplayWidgetClass UReplayWidgetBase
---@field ReplayProgressWidgetClass UReplayProgressbarWidget
local UGameReplay = {}

---Start recording bSkipConditionCheck : forced to record RecordCondition : see EPBRecordCond;
---@param bSkipConditionCheck boolean
---@param RecordCondition EPBRecordCond
---@return boolean
function UGameReplay:StartRecordingReplay(bSkipConditionCheck, RecordCondition) end

---Stop recording
---@param Feature number
---@return boolean
function UGameReplay:StopRecordingReplay(Feature) end

---Play recording
---@return boolean
function UGameReplay:PlayReplay() end

---@return boolean
function UGameReplay:StopPlay() end

---@param bPaused boolean
---@return boolean
function UGameReplay:PauseReplay(bPaused) end

---@param InDilation number
---@return boolean
function UGameReplay:SetReplayTimeDilation(InDilation) end

---Is recording data exist
---@return boolean
function UGameReplay:HaveRecordingData() end

---@return string
function UGameReplay:GetSpectatorName() end

---@return boolean
function UGameReplay:IsInRecordState() end

---@return boolean
function UGameReplay:IsInPlayState() end

---@return boolean
function UGameReplay:IsFastForwarding() end

---return time of severworld seconds when start record replay
---@return number
function UGameReplay:GetReplayStartRecordTime() end

---Get current record total time.
---@return number
function UGameReplay:GetCurrentReplayTotalTimeInSeconds() end

---Go to parameter specified time.
---@param Seconds number
function UGameReplay:SetCurrentReplayTimeToSeconds(Seconds) end

---@return number
function UGameReplay:GetCurrentReplayCurTimeInSeconds() end

---Set spectator which camera view attach to in play state.
---@param SpectatorName string
---@param bGm boolean
---@param isChangeViewTarget boolean
---@param isAutoSetName boolean
function UGameReplay:SetSpectatorName(SpectatorName, bGm, isChangeViewTarget, isAutoSetName) end

---@param Time number
---@return boolean
function UGameReplay:PlayCurOverDemoWithTime(Time) end

function UGameReplay:SwitchFreeViewMode() end

function UGameReplay:ClearReplayUI() end

---@param World UWorld
function UGameReplay:OnPostLoadMapWithWorld(World) end

---@param InPlayerState ASTExtraPlayerState
function UGameReplay:OnViewTargetPlayerStateChanged(InPlayerState) end
