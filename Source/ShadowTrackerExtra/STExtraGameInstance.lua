---@meta

---@class FFrequncyAccessActorList
---@field ActorList ULuaArrayHelper<AActor>
FFrequncyAccessActorList = {}


---@class FFadeDynamicStyleInfo
FFadeDynamicStyleInfo = {}


---@class FDynamicConditionConfig
---@field ConfigName string
---@field ConditionList ULuaArrayHelper<string>
---@field bDelayLoading boolean
---@field bDelayMark boolean
FDynamicConditionConfig = {}


---@class FDepthOfFieldConfig
---@field DepthOfFieldName string
---@field DepthOfFieldMethod EDepthOfFieldMethod
---@field bMobileHQGaussian number
---@field DepthOfFieldFocalDistance number
---@field DepthOfFieldNearTransitionRegion number
---@field DepthOfFieldFarTransitionRegion number
---@field DepthOfFieldScale number
---@field DepthOfFieldNearBlurSize number
---@field DepthOfFieldFarBlurSize number
---@field bOverride_DepthOfFieldMethod number
---@field bOverride_MobileHQGaussian number
---@field bOverride_DepthOfFieldFocalDistance number
---@field bOverride_DepthOfFieldNearTransitionRegion number
---@field bOverride_DepthOfFieldFarTransitionRegion number
---@field bOverride_DepthOfFieldScale number
---@field bOverride_DepthOfFieldNearBlurSize number
---@field bOverride_DepthOfFieldFarBlurSize number
---@field Priority number
---@field EffectTimeCurrent number
---@field EffectTimeTotal number
FDepthOfFieldConfig = {}


---@class FDepthOfFieldFadeConfig
---@field bFadeIn boolean
---@field FadeSpeed number
---@field FadeAlpha number
---@field DepthOfFieldConfig FDepthOfFieldConfig
FDepthOfFieldFadeConfig = {}


---@class FMotionBlurConfig
---@field MotionBlurName string
---@field MotionBlurAmount number
---@field bOverride_MotionBlurAmount number
---@field Priority number
FMotionBlurConfig = {}


---@class USTExtraGameInstance: UUAEGameInstance
---@field OnUserQualitySettingChanged FUserQualitySettingChanged
---@field OnUserMsaaSettingChanged FUserMsaaSettingChanged
---@field OnWaterReflectionSettingChanged FWaterReflectionSettingChanged
---@field OnReplayBeginRecordingDelegate FReplayBeginRecordingDelegate
---@field OnPreRenderSettingsByMap FPreRenderSettingsByMap
---@field OnPostSetRenderQuality FPostSetRenderQuality
---@field OnApplyingShadowChanged FApplyingShadowChanged
---@field OnFApplyingFPSChanged FApplyingFPSChanged
---@field LobbyMapName string
---@field renderQualitySettingsLastSet FRenderQualitySettings
---@field renderQualitySettingsApplying FRenderQualitySettings
---@field renderQualitySettingsInit FRenderQualitySettings
---@field Userdetailsetting FUserDetailSetting
---@field renderQualitySettingsLastSetTA FRenderQualitySettings
---@field renderQualitySettingsInitTA FRenderQualitySettings
---@field ExeCmdSwitch boolean
---@field LobbyRenderSwitch boolean
---@field LobbyRenderSwitchLow boolean
---@field LobbyRenderSwitchMid boolean
---@field LobbyRenderSwitchHigh boolean
---@field bUseUGCSwitchesInMap boolean
---@field SwitchesInMaps ULuaArrayHelper<FSwitchesInMaps>
---@field SwitchesInDefaultMap ULuaArrayHelper<FSwitchesItem>
---@field PostActiveStyles ULuaArrayHelper<FRenderStyleCVars>
---@field DefaultPostActiveStyle ULuaArrayHelper<FRenderItem>
---@field LobbyBackupRenderSettings ULuaArrayHelper<FRenderItem>
---@field LobbyRenderSettingsHigh ULuaArrayHelper<FRenderItem>
---@field LobbyRenderSettingsMid ULuaArrayHelper<FRenderItem>
---@field LobbyRenderSettingsLow ULuaArrayHelper<FRenderItem>
---@field LobbyRenderSettingsPC ULuaArrayHelper<FRenderItem>
---@field LowFPSBackupRenderSettings ULuaArrayHelper<FRenderItem>
---@field LowFPSRenderSettingProfileHigh ULuaArrayHelper<FRenderItem>
---@field LowFPSRenderSettingProfileMid ULuaArrayHelper<FRenderItem>
---@field MobileHDROpenConfig ULuaArrayHelper<FRenderItem>
---@field MobileHDRCloseConfig ULuaArrayHelper<FRenderItem>
---@field TournamentMobileHDROpenConfig ULuaArrayHelper<FRenderItem>
---@field TournamentMobileHDRCloseConfig ULuaArrayHelper<FRenderItem>
---@field MobileUltralHighOpenConfig ULuaArrayHelper<FRenderItem>
---@field MobileUltralHighCloseConfig ULuaArrayHelper<FRenderItem>
---@field MobileVerySmoothOpenConfig ULuaArrayHelper<FRenderItem>
---@field MobileVerySmoothCloseConfig ULuaArrayHelper<FRenderItem>
---@field TournamentMobileUltralHighOpenConfig ULuaArrayHelper<FRenderItem>
---@field TournamentMobileUltralHighCloseConfig ULuaArrayHelper<FRenderItem>
---@field MobileFXAAOpenConfig ULuaArrayHelper<FRenderItem>
---@field MobileFXAACloseConfig ULuaArrayHelper<FRenderItem>
---@field MobileMSAAOpenConfig ULuaArrayHelper<FRenderItem>
---@field Mobile2xMSAAOpenConfig ULuaArrayHelper<FRenderItem>
---@field MobileMSAACloseConfig ULuaArrayHelper<FRenderItem>
---@field MobilePPOpenConfig ULuaArrayHelper<FRenderItem>
---@field MobilePPCloseConfig ULuaArrayHelper<FRenderItem>
---@field TournamentMobilePPOpenConfig ULuaArrayHelper<FRenderItem>
---@field TournamentMobilePPCloseConfig ULuaArrayHelper<FRenderItem>
---@field RePairDeleteDir ULuaArrayHelper<string>
---@field AllowHighFpsInHighArtQuality boolean
---@field RenderStyleParamsInMaps ULuaArrayHelper<FRenderStyleParameterInMaps>
---@field HighLevelSequenceOpenConfig ULuaArrayHelper<FRenderItem>
---@field MiddleLevelSequenceOpenConfig ULuaArrayHelper<FRenderItem>
---@field LowLevelSequenceOpenConfig ULuaArrayHelper<FRenderItem>
---@field HighLevelSequenceCloseConfig ULuaArrayHelper<FRenderItem>
---@field MiddleLevelSequenceCloseConfig ULuaArrayHelper<FRenderItem>
---@field LowLevelSequenceCloseConfig ULuaArrayHelper<FRenderItem>
---@field CachedDifferentCommand ULuaArrayHelper<FRenderItem>
---@field ObjectDecorator FRemoteDecorator
---@field NeedWaitLevelFlushFinished boolean
---@field AutoTestTriggle boolean
---@field DeviceNum4WebGM string
---@field CustomLineStr string
---@field FOVRange FVector2D
---@field FOVScreenSizeCullingFactorRange FVector2D
---@field FOVStandFirstPersionOnPC number
---@field FOVStandThirdPersionOnPC number
---@field bFOVChanged boolean
---@field SwimRotateX number
---@field IsCutdownForHighTemp number
---@field PVCachePath string
---@field AvatarVisibilityCollectionClassPath string
---@field FrequencyAccessActorMap ULuaMapHelper<UClass, FFrequncyAccessActorList>
---@field ObjectPoolConfigs ULuaArrayHelper<FObjectPoolConfig>
---@field IngameMemoryPlaybackClassPath string
---@field bOpenStartupLevel boolean
---@field FadeInfo FFadeDynamicStyleInfo
---@field DefaultGray number
---@field ResultAvatarShadowRenderSettingsHigh ULuaArrayHelper<FRenderItem>
---@field ResultAvatarShadowRenderSettingsMid ULuaArrayHelper<FRenderItem>
---@field ResultAvatarShadowRenderSettingsLow ULuaArrayHelper<FRenderItem>
---@field UILeakWhiteList ULuaArrayHelper<string>
---@field ObjectLeakFilterClassList ULuaArrayHelper<UClass>
---@field AvatarDynamicCacheStrategy_Player_DefaultCalssPath string
---@field OnSingleConditionReady FSingleConditionReadyDel
---@field OnAllConditionReady FAllConditionReadyDel
---@field OnSingleConditionSetReady FSingleConditionReadyDel
---@field DynamicConditionConfigs ULuaArrayHelper<FDynamicConditionConfig>
---@field MapConfigToPrint ULuaArrayHelper<string>
---@field EntireSwitchMap ULuaMapHelper<string, boolean>
---@field PPVConfigMap ULuaMapHelper<string, FDepthOfFieldConfig>
---@field DepthOfFieldConfigList ULuaArrayHelper<FDepthOfFieldConfig>
---@field DepthOfFieldFadeList ULuaArrayHelper<FDepthOfFieldFadeConfig>
---@field CurrentActivePPV APostProcessVolume
---@field CurrentActivePPC UPostProcessComponent
---@field PostProcessVolumeActiveChanged FPostProcessVolumeActiveChanged
---@field PostProcessComponentActiveChanged FPostProcessComponentActiveChanged
---@field MotionBlurConfigList ULuaArrayHelper<FMotionBlurConfig>
---@field PPVMotionBlurConfigMap ULuaMapHelper<string, FMotionBlurConfig>
---@field RandomCityIDs ULuaArrayHelper<number>
local USTExtraGameInstance = {}

---@return boolean
function USTExtraGameInstance:IsSupportSwitchRenderLevelRuntime() end

---@param renderQualitySettings FRenderQualitySettings
---@param renderLevelChanged boolean
function USTExtraGameInstance:PreSetRenderQuality(renderQualitySettings, renderLevelChanged) end

---@param OutSettingString string
function USTExtraGameInstance:GetStatFileName(OutSettingString) end

function USTExtraGameInstance:TestReadBattleItemTable() end

---@param renderQualitySettings FRenderQualitySettings
function USTExtraGameInstance:SetRenderQuality(renderQualitySettings) end

---@param RenderQualityEngine ERenderQualityEngine
function USTExtraGameInstance:SetRenderQualityByEngineRenderQaulity(RenderQualityEngine) end

function USTExtraGameInstance:ReSetRenderStyle() end

---@param isClassic boolean
---@return FRenderQualitySettings
function USTExtraGameInstance:GetRenderQualityLastSet(isClassic) end

---@param isClassic boolean
---@return FRenderQualitySettings
function USTExtraGameInstance:GetRenderQualityApplying(isClassic) end

---@return boolean
function USTExtraGameInstance:IsUltimateHighRenderQuality() end

---@param InPakID ESpecialPakID
---@return EPakResState
function USTExtraGameInstance:GetPakResState(InPakID) end

---@param type number
---@return boolean
function USTExtraGameInstance:SetSoundEffectQuality(type) end

---@return number
function USTExtraGameInstance:GetSoundEffectQuality() end

---@param bDoOpen boolean
function USTExtraGameInstance:SetWaterReflectionSetting(bDoOpen) end

---@return boolean
function USTExtraGameInstance:GetWaterReflectionSetting() end

---@return boolean
function USTExtraGameInstance:GetIsFirstInitWaterReflectionSetting() end

function USTExtraGameInstance:ReSetRenderQuality() end

---@return boolean
function USTExtraGameInstance:IsTournamentSettingOpen() end

---@return boolean
function USTExtraGameInstance:IsInTournamentMap() end

---@param TASetting FRenderQualitySettings
function USTExtraGameInstance:InitRenderQualityLastSetTA(TASetting) end

---@return ERenderQuality
function USTExtraGameInstance:GetDefaultRenderQualityTA() end

---@param InRenderQuality ERenderQuality
---@param bIncludeEqual boolean
---@return boolean
function USTExtraGameInstance:IsRenderQualityHigherThen(InRenderQuality, bIncludeEqual) end

function USTExtraGameInstance:OpenSequenceConfig() end

function USTExtraGameInstance:CloseSequenceConfig() end

---@param allfilesSaved boolean
---@return boolean
function USTExtraGameInstance:DeleteSavedFiles(allfilesSaved) end

---@param CMDkey string
---@param CMDvalue string
function USTExtraGameInstance:ExecuteCMD(CMDkey, CMDvalue) end

---@return number
function USTExtraGameInstance:GetDeviceLimit() end

---@return number
function USTExtraGameInstance:GetDefaultFPS() end

---@return ERenderQuality
function USTExtraGameInstance:GetDeviceMaxSupportLevel() end

---@param renderlevel ERenderQuality
---@param isClassic boolean
---@return number
function USTExtraGameInstance:GetDeviceMaxFPSByDeviceLevel(renderlevel, isClassic) end

---@return boolean
function USTExtraGameInstance:IsOpenHDR() end

---@return boolean
function USTExtraGameInstance:IsSupportEnhancement() end

---@param bShadow boolean
function USTExtraGameInstance:SetUserSetingShadowQuality(bShadow) end

---@return boolean
function USTExtraGameInstance:GetUserSetingShadowQuality() end

---@return boolean
function USTExtraGameInstance:GetApplyingShadowQuality() end

---@param mcs number
function USTExtraGameInstance:SetUserSetingMobilceContentSCale(mcs) end

---@param bOpenMSAA boolean
function USTExtraGameInstance:ActiveMSAA(bOpenMSAA) end

---@param level ERenderStyle
function USTExtraGameInstance:ActiveStyle(level) end

---@param level ERenderStyle
function USTExtraGameInstance:ActiveStyle_PP(level) end

---@param type ERenderDynamicStyle
---@param InterpSpeed number
---@param DeltaTime number
---@return boolean
function USTExtraGameInstance:ActiveStyle_PPForDynamicRender(type, InterpSpeed, DeltaTime) end

---@param type ERenderDynamicStyle
---@param InterpSpeed number
---@param DeltaTime number
---@return boolean
function USTExtraGameInstance:ActiveStyle_ACESForDynamicRender(type, InterpSpeed, DeltaTime) end

---@param bSet boolean
function USTExtraGameInstance:ActiveNightVision(bSet) end

---@param bSet boolean
---@param level ERenderStyle
function USTExtraGameInstance:ActiveNightVisionCombine(bSet, level) end

---@param bSet boolean
---@param type ERenderDynamicStyle
---@param InterpSpeed number
---@param bNeedDestroyComp boolean
function USTExtraGameInstance:ActiveDynamicStyle(bSet, type, InterpSpeed, bNeedDestroyComp) end

function USTExtraGameInstance:AutoActiveLDR() end

function USTExtraGameInstance:AutoActiveUltralHighRenderItems() end

---@param forceClose boolean
function USTExtraGameInstance:AutoActiveVerySmoothRenderItems(forceClose) end

---@param map string
function USTExtraGameInstance:GMStandalone(map) end

---@param LODIndex number
---@param distance number
function USTExtraGameInstance:SetWorldCompositionRelativeDistance(LODIndex, distance) end

---@param bEnable boolean
function USTExtraGameInstance:EnableStreamingLevelLOD(bEnable) end

function USTExtraGameInstance:QuitGame() end

---@return boolean
function USTExtraGameInstance:IsAutoRunTestGame() end

---@return boolean
function USTExtraGameInstance:IsAutoRunTestGameBindCompoment() end

function USTExtraGameInstance:SetDeviceNum4WebGM() end

function USTExtraGameInstance:SetCustomRouteLine() end

---@return string
function USTExtraGameInstance:GetAutoRunLuaTest() end

---@return number
function USTExtraGameInstance:GetAutoRunTestServerIdx() end

---@return string
function USTExtraGameInstance:GetAutoRunAccount() end

---@return string
function USTExtraGameInstance:GetAutoRunPassWD() end

function USTExtraGameInstance:OnAutoTestTriggleOpen() end

function USTExtraGameInstance:OnAutoTestTriggleClosed() end

function USTExtraGameInstance:RenderForLowFPS() end

function USTExtraGameInstance:RefuseRenderForLowFPS() end

---@param FOV number
function USTExtraGameInstance:SetFOVScreenSizeCullingFactor(FOV) end

---@param FOV number
function USTExtraGameInstance:SetFOVScreenSizeCullingFactorNoClamp(FOV) end

function USTExtraGameInstance:ReSetFOVScreenSizeCullingFactor() end

---@return boolean
function USTExtraGameInstance:IsSupportSwitchSoundEffectQuality() end

---@return boolean
function USTExtraGameInstance:IsSupportCivilVoiceDevice() end

---@return boolean
function USTExtraGameInstance:GetDefaultSoundEffectQuality() end

---@return boolean
function USTExtraGameInstance:IsSupportVulkan() end

---@return boolean
function USTExtraGameInstance:IsVukanRealOpen() end

---@return boolean
function USTExtraGameInstance:GetVulkanSwitch() end

---@param flag boolean
function USTExtraGameInstance:SetVulkanSwitch(flag) end

---@return boolean
function USTExtraGameInstance:IsSupportVerySmooth() end

function USTExtraGameInstance:ProfileShot() end

function USTExtraGameInstance:RunLuaTest() end

function USTExtraGameInstance:ClearPVideoStrategicCache() end

function USTExtraGameInstance:TryStartRecordingReplayOnFightStateOrReadyState() end

function USTExtraGameInstance:TryStopRecordingReplayOnFinishState() end

---@param ReplayType EPlaybackType
---@param bSkipConditionCheck boolean
---@param RecordCondition EPBRecordCond
---@param TargetName string
---@return boolean
function USTExtraGameInstance:StartRecordingReplayByType(ReplayType, bSkipConditionCheck, RecordCondition, TargetName) end

---@param ReplayType EPlaybackType
---@return boolean
function USTExtraGameInstance:StopRecordingReplayByType(ReplayType) end

---@param ReplayType EPlaybackType
---@return boolean
function USTExtraGameInstance:IsRecordingReplayOfType(ReplayType) end

---@param ReplayType EPlaybackType
---@return boolean
function USTExtraGameInstance:IsPlayingReplayOfType(ReplayType) end

---@return boolean
function USTExtraGameInstance:IsFastForwardingReplay() end

---@return boolean
function USTExtraGameInstance:isUsingAssumedNameInReplay() end

---@return boolean
function USTExtraGameInstance:IsPlayingAnyPlayback() end

function USTExtraGameInstance:SetHZBMobileState() end

function USTExtraGameInstance:OnStopAutoTest() end

function USTExtraGameInstance:OnStartAutoTest() end

---@param InfoType string
---@param InMsg string
---@param CallStack string
function USTExtraGameInstance:ReportInfoToBugly(InfoType, InMsg, CallStack) end

---@param InfoType string
---@param InMsg string
---@param CallStack string
---@param InFile string
function USTExtraGameInstance:ReportInfoToBuglyWithFile(InfoType, InMsg, CallStack, InFile) end

---@param InfoType string
---@param InMsg string
---@param CallStack string
---@param OpenIDStr string
---@param bLuaNotCheck boolean
function USTExtraGameInstance:ReportInfoToXpcall(InfoType, InMsg, CallStack, OpenIDStr, bLuaNotCheck) end

---@param bUpStackInfo boolean
---@return string
function USTExtraGameInstance:CollectExtraMsgBeforeReport(bUpStackInfo) end

---@param IDMask number
---@return string
function USTExtraGameInstance:CollectExtraIDBeforeReport(IDMask) end

---@return string
function USTExtraGameInstance:CollectGameModeStatusBeforeReport() end

---@return boolean
function USTExtraGameInstance:UseStartupLevel() end

---@return EPlaybackType
function USTExtraGameInstance:GetCurPlayingReplayType() end

---@param InShadowQuality number
function USTExtraGameInstance:CheckShadowForResultAvatarShow(InShadowQuality) end

function USTExtraGameInstance:CheckShadowReductionForResultAvatarShow() end

---@param StageKey string
---@param StageValue string
function USTExtraGameInstance:PostGameStage(StageKey, StageValue) end

---@param WorldContext UObject
---@return boolean
function USTExtraGameInstance:SetClientTravelOnAIML(WorldContext) end

function USTExtraGameInstance:ResetDynaConfigAndDynaCVar() end

function USTExtraGameInstance:ResetDynaConfig() end

---@param CVarType ECVarType
---@param Connection UNetConnection
function USTExtraGameInstance:SendConsoleVariableBunch(CVarType, Connection) end

---@param InConsoleVariablesBunch ULuaArrayHelper<number>
function USTExtraGameInstance:ReceiveConsoleVariableBunch_BigWorld(InConsoleVariablesBunch) end

---@param InConsoleVariablesBunch ULuaArrayHelper<number>
function USTExtraGameInstance:ReceiveConsoleVariableBunch_Permanent(InConsoleVariablesBunch) end

---@param CVarType ECVarType
---@param bMapIsBigWorld boolean
function USTExtraGameInstance:EnableConsoleVariableBunch(CVarType, bMapIsBigWorld) end

---@param CVarType ECVarType
function USTExtraGameInstance:ClearConsoleVariableBunch(CVarType) end

---@param CVarType ECVarType
function USTExtraGameInstance:ResetConsoleVariable(CVarType) end

function USTExtraGameInstance:ReleasePlayerAvatarDynamicCacheDefaultStrategy() end

---@return boolean
function USTExtraGameInstance:IsAllConditionReady() end

---@param InCondition string
function USTExtraGameInstance:SetConditionReady(InCondition) end

---@param InConfigName string
function USTExtraGameInstance:ClearConditions(InConfigName) end

function USTExtraGameInstance:ClearCurrentConditions() end

---@return boolean
function USTExtraGameInstance:IsAllConditionReadyInner() end

---@param InCondition string
function USTExtraGameInstance:SetConditionReadyInner(InCondition) end

---@param InConfigName string
function USTExtraGameInstance:ClearConditionsInner(InConfigName) end

function USTExtraGameInstance:ClearCurrentConditionsInner() end

---@param InConfigName string
function USTExtraGameInstance:UpdateDynamicConditionConfig(InConfigName) end

---@param InConfigName string
function USTExtraGameInstance:UpdateDynamicConditionConfigInner(InConfigName) end

---@param key string
---@param flag boolean
function USTExtraGameInstance:SetEntireSwitchValue(key, flag) end

---@param key string
---@return boolean
function USTExtraGameInstance:GetEntireSwitchValue(key) end

function USTExtraGameInstance:PrintMapConfig() end

---@param bRemove boolean
function USTExtraGameInstance:AddOrRemoveOnPostSetRenderQualityForUltimate(bRemove) end

function USTExtraGameInstance:OnPostSetRenderQualityForUltimate() end

---@param InPakID ESpecialPakID
---@return EPakSplitState
function USTExtraGameInstance:IsPlatformSplitPakRes(InPakID) end

---@param InEnable boolean
---@param InConfig FDepthOfFieldConfig
---@param InEffectTime number
function USTExtraGameInstance:SetDepthOfFieldEnable(InEnable, InConfig, InEffectTime) end

---@param InEnable boolean
---@param InPPV APostProcessVolume
function USTExtraGameInstance:UpdatePPVDepthOfFieldParam(InEnable, InPPV) end

---@param InEnable boolean
---@param InPPC UPostProcessComponent
function USTExtraGameInstance:UpdatePPVDepthOfFieldParamPPC(InEnable, InPPC) end

---@param InFadeIn boolean
---@param InFadeSpeed number
---@param InConfig FDepthOfFieldConfig
---@param InEffectTime number
function USTExtraGameInstance:SetDepthOfFieldFade(InFadeIn, InFadeSpeed, InConfig, InEffectTime) end

---@param InDeltaTime number
---@return boolean
function USTExtraGameInstance:TickDepthOfFieldFade(InDeltaTime) end

---@param InDeltaTime number
---@return boolean
function USTExtraGameInstance:TickDepthOfFieldEffect(InDeltaTime) end

function USTExtraGameInstance:ClearDepthOfFieldData() end

---@param InEnable boolean
---@param InConfig FMotionBlurConfig
function USTExtraGameInstance:SetMotionBlurEnable(InEnable, InConfig) end

---@param InEnable boolean
---@param InPPV APostProcessVolume
function USTExtraGameInstance:UpdatePPVMotionBlurParam(InEnable, InPPV) end

---@param InEnable boolean
---@param InPPC UPostProcessComponent
function USTExtraGameInstance:UpdatePPVMotionBlurParamPPC(InEnable, InPPC) end

function USTExtraGameInstance:ClearMotionBlurData() end

---@param RenderQuality number
function USTExtraGameInstance:GMSetRenderQuality(RenderQuality) end

---@param RenderQualitySetting ERenderQuality
function USTExtraGameInstance:GMAutoTestUseDefaultLaunchQuality(RenderQualitySetting) end

function USTExtraGameInstance:GetRandomCityIDs() end

---@param CurRandomCityIDs ULuaArrayHelper<number>
function USTExtraGameInstance:SetRandomCityIDs(CurRandomCityIDs) end
