---@meta

---@class FSkyboxBlendCompletedDelegate : ULuaSingleDelegate
FSkyboxBlendCompletedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSkyboxBlendCompletedDelegate:Bind(Callback, Obj) end

---执行委托
function FSkyboxBlendCompletedDelegate:Execute() end


---@class FSkyboxBlendOverHalfDelegate : ULuaSingleDelegate
FSkyboxBlendOverHalfDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSkyboxBlendOverHalfDelegate:Bind(Callback, Obj) end

---执行委托
function FSkyboxBlendOverHalfDelegate:Execute() end


---天气控制组件，wexuanhuang
---@class UWeatherSequenceController: UActorComponent
---@field ReplicatedPlaybacks ULuaArrayHelper<FWeatherSequencePlayback> @List of loaded playback instances, will be replicated to clients
---@field WeatherParametersPlaybacks ULuaArrayHelper<FWeatherParametersPlayback> @List of loaded playback(parameters) instances, only valid on client
---@field TranscriptPlaybacks ULuaArrayHelper<FWeatherSequencePlayback> @A transcript of ReplicatedPlaybacks, used for determining changes when ReplicatedPlaybacks is modified
---@field OldPresentationKey FWeatherPresentationKey @Current key of applied presentation, used to compare with the latest and only trigger a update when being dirty
---@field NumLoadParametersCalls number @How many times LoadParameters has been called
---@field ActivatedEffects ULuaArrayHelper<FWS_TimelineEffectFunc> @List of activated effects
---@field bReceivedBattleResult boolean @Whether to stop all current and incoming effects
---@field BGMHandle FWS_BGMHandle @RAII handle of activated bgm
---@field OnWeatherSequenceChanged FOnWeatherSequenceChanged
---@field SourceWeatherParameters FWeatherParameters @Start point of blending
---@field BlendInOutParameters FBlendWeatherParameters @Blending strategy, set when blend in procedure started, used in both blend in and blend out procedure
---@field BlendInOutParametersMap ULuaMapHelper<UWeatherSequence, FBlendWeatherParameters>
---@field BlendDeltaTime number @Blending progress
---@field TickOBInterval number
---@field TimeSecondsSinceLastTickOB number
---@field bIsSpectatingOther boolean
---@field StashedPlaybacks ULuaArrayHelper<FWeatherSequencePlayback>
---@field IsGameEnd boolean
---@field bForceRefresh boolean
---@field OnSkyboxBlendCompletedDelegate FSkyboxBlendCompletedDelegate
---@field OnSkyboxBlendOverHalfDelegate FSkyboxBlendOverHalfDelegate
---@field IsBlending boolean
---@field IsAlreadyHalfBlend boolean
---@field IsPauseBlend boolean
---@field CanPlayAppearance boolean
---@field CanPlayBGM boolean
---@field TimeSecondsSinceLastSkyBoxCheck number
---@field bHasReportedSkyBoxMissing boolean
---@field bHasClientReportedSkyBoxMissing boolean
local UWeatherSequenceController = {}

---@param DeltaTime number
function UWeatherSequenceController:ReportSkyBoxMissingException(DeltaTime) end

---Server Create a new playback instance from given weather sequence, and load it
---@param WeatherSequence UWeatherSequence
---@param BlendParameters FBlendWeatherParameters
function UWeatherSequenceController:Load(WeatherSequence, BlendParameters) end

---Client Create a new playback instance from given weather sequence, and load it Not compatible with the server version Load/Unload
---@param WeatherSequence UWeatherSequence
---@param BlendParameters FBlendWeatherParameters
function UWeatherSequenceController:ClientLoad(WeatherSequence, BlendParameters) end

---Client Create a new playback instance from given key and weather parameters, and load it Generally with highest priority, which means it will override all other playbacks
---@param Key string
---@param WeatherParameters FWeatherParameters
---@param Priority number
function UWeatherSequenceController:LoadParameters(Key, WeatherParameters, Priority) end

---Client
---@param Key string
---@param WeatherParameters FWeatherParameters
---@param Priority number
---@param bIsNeedUpdate boolean
function UWeatherSequenceController:RefreshSkyboxParameters(Key, WeatherParameters, Priority, bIsNeedUpdate) end

---Server Find the playback instance by given weather sequence, and unload it
---@param WeatherSequence UWeatherSequence
function UWeatherSequenceController:Unload(WeatherSequence) end

---Client Find the playback instance by given weather sequence, and unload it Not compatible with the server version Load/Unload
---@param WeatherSequence UWeatherSequence
function UWeatherSequenceController:ClientUnload(WeatherSequence) end

---Client Find the playback instance by given key, and unload it
---@param Key string
function UWeatherSequenceController:UnloadParameters(Key) end

---Server/Client, client overwrite server Move time cursor of playback instance to a new time position
---@param WeatherSequence UWeatherSequence
---@param NewTimePosition number
function UWeatherSequenceController:Seek(WeatherSequence, NewTimePosition) end

---Server/Client, client overwrite server Move time cursor of playback instance to a new time position
---@param WeatherSequence UWeatherSequence
---@param NewTimePosition number
---@param bReplicate boolean
function UWeatherSequenceController:SeekEx(WeatherSequence, NewTimePosition, bReplicate) end

---Server/Client, client overwrite server Pause time cursor of playback instance
---@param WeatherSequence UWeatherSequence
function UWeatherSequenceController:Pause(WeatherSequence) end

---Server/Client, client overwrite server Resume time cursor of playback instance
---@param WeatherSequence UWeatherSequence
function UWeatherSequenceController:Resume(WeatherSequence) end

---@param InSkyBox ASTExtraSkyBox
function UWeatherSequenceController:AddSkyBox(InSkyBox) end

---@param InSkyBox ASTExtraSkyBox
function UWeatherSequenceController:RemoveSkyBox(InSkyBox) end

---@param WeatherSequence UWeatherSequence
---@return boolean
function UWeatherSequenceController:IsPlaying(WeatherSequence) end

---@param WeatherSequence UWeatherSequence
---@return boolean
function UWeatherSequenceController:IsClientControlled(WeatherSequence) end

---@param WeatherSequence UWeatherSequence
---@return number
function UWeatherSequenceController:GetPlayTime(WeatherSequence) end

---@param WeatherSequence UWeatherSequence
---@return number
function UWeatherSequenceController:GetPlayRate(WeatherSequence) end

---@param NewPlayRate number
---@param WeatherSequence UWeatherSequence
function UWeatherSequenceController:SetPlayRate(NewPlayRate, WeatherSequence) end

---@param WeatherSequence UWeatherSequence
---@return number
function UWeatherSequenceController:GetHourOfDay(WeatherSequence) end

---@param WeatherSequence UWeatherSequence
---@return number
function UWeatherSequenceController:GetPlayPercentage(WeatherSequence) end

---@param WeatherSequence UWeatherSequence
---@return boolean
function UWeatherSequenceController:Contains(WeatherSequence) end

---@param WeatherSequence UWeatherSequence
---@param Factor number
---@return boolean
function UWeatherSequenceController:ChangeWeatherSequenceMultiFactor(WeatherSequence, Factor) end

function UWeatherSequenceController:CheckSkyBoxActor() end

---@param ExceptionMessage string
function UWeatherSequenceController:RPC_Server_ReportSkyBoxMissing(ExceptionMessage) end

function UWeatherSequenceController:CreateSkyBoxActor() end

---Called when the client changes its sequence
---@param NewSequence UWeatherSequence
function UWeatherSequenceController:ServerUpdateCurrentSequence(NewSequence) end

function UWeatherSequenceController:UpdateReplicatedPlaybacksForReplay() end

---Called when client received ReplicatedPlaybacks
function UWeatherSequenceController:OnRep_ReplicatedPlaybacks() end

---Callback
function UWeatherSequenceController:HandleReplicatedPlaybacksChanged() end

---Stop all effects after battle result
---@param BattleResult FBattleResultData
function UWeatherSequenceController:HandleBattleResult(BattleResult) end

---@param GameState string
function UWeatherSequenceController:OnGameModeStateChanged(GameState) end

---Returns parameters after blending
---@param InOutWeatherParameters FWeatherParameters
function UWeatherSequenceController:ApplyBlending(InOutWeatherParameters) end

---Returns lerp value for blending
---@return number
function UWeatherSequenceController:GetLerpValue() end

---Advance blending progress
---@param DeltaTime number
function UWeatherSequenceController:TickBlend(DeltaTime) end

---Call Synchronize with a period
---@param DeltaTime number
function UWeatherSequenceController:TickOB(DeltaTime) end

---Copy state of ob target into mine if there is any difference
---@param PC ASTExtraPlayerController
function UWeatherSequenceController:Synchronize(PC) end

---Called when player enter spectator mode
---@param PlayerKey number
function UWeatherSequenceController:OnPlayerGotoSpectating(PlayerKey) end

---Called when player exit spectator mode
---@param PlayerKey number
function UWeatherSequenceController:OnPlayerQuitSpectating(PlayerKey) end

---Push current state into stash
function UWeatherSequenceController:StashPush() end

---Pop previous state from stash
function UWeatherSequenceController:StashPop() end

function UWeatherSequenceController:PauseSkyboxBlend() end

function UWeatherSequenceController:ResumeSkyboxBlend() end

function UWeatherSequenceController:PlaySkyboxAppearance() end

function UWeatherSequenceController:StopSkyboxAppearance() end

---@param IsOnlySetTag boolean
function UWeatherSequenceController:PlaySkyboxBGM(IsOnlySetTag) end

---@param IsOnlySetTag boolean
function UWeatherSequenceController:StopSkyboxBGM(IsOnlySetTag) end

---@param InTime number
function UWeatherSequenceController:SetCurrentBlendTime(InTime) end

---@return number
function UWeatherSequenceController:GetCurrentBlendTime() end

function UWeatherSequenceController:ClearActivatedEffects() end

function UWeatherSequenceController:ClearPlayBacks() end
