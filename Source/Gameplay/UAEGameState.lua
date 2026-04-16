---@meta

---@class FWeatherInfo
---@field WeatherLevelName string
---@field WeatherID number
---@field PCWeatherLevelName string
---@field PCWeatherID number
---@field WeatherTime number
FWeatherInfo = {}


---@class FSinglePlayerFixInfo
---@field PlayerName string
---@field PlayerKey number
---@field PlayerUID string
---@field AnchorPlatformResID number
---@field AnchorPlatformColorID number
---@field PicURL string
---@field MedalClubLevel number
---@field MedalClubID string
FSinglePlayerFixInfo = {}


---@class FAllPlayerFixInfo
---@field RepData ULuaArrayHelper<FSinglePlayerFixInfo>
FAllPlayerFixInfo = {}


---@class FUAEGameStateReplicatedWorldTimeSecondsSynced : ULuaMulticastDelegate
FUAEGameStateReplicatedWorldTimeSecondsSynced = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, UAEGameState: AUAEGameState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUAEGameStateReplicatedWorldTimeSecondsSynced:Add(Callback, Obj) end

---触发 Lua 广播
---@param UAEGameState AUAEGameState
function FUAEGameStateReplicatedWorldTimeSecondsSynced:Broadcast(UAEGameState) end


---@class FEnterMatchRoomDelegate : ULuaSingleDelegate
FEnterMatchRoomDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEnterMatchRoomDelegate:Bind(Callback, Obj) end

---执行委托
function FEnterMatchRoomDelegate:Execute() end


---@class AUAEGameState: AGameState
---@field UAEGameStateReplicatedWorldTimeSecondsSynced FUAEGameStateReplicatedWorldTimeSecondsSynced
---@field EnterMatchRoom FEnterMatchRoomDelegate
---@field DSGameType number
---@field MonsterCount number
---@field ItemCount number
---@field VehicleCount number
---@field InactiveZombieCount number
---@field DeactiveZombieCount number
---@field bEnableAllPlayerFixInfo boolean
---@field AllPlayerFixInfo FAllPlayerFixInfo
---@field GameID number
---@field GameIDString string
---@field bDSLowFrame boolean @DS低帧时，同步给客户端激活移动降频 add by czcheng 2022.9.7
---@field IsGenerateItem boolean
---@field IsGeneRateZombie boolean
---@field IsGeneRateStaticConfigZombie boolean
---@field IsCanRegion boolean
---@field ModeUIManagerArray ULuaArrayHelper<string>
---@field IsSetItemMaxCount boolean
---@field ReplayStartRecordTime number
---@field bShouldUseCompletePB boolean
---@field bUseMoveInputStateUseSixteenDir boolean
---@field GameRatingId number
---@field ChooseRatingType number
---@field IsMatchRoom boolean
---@field LobbySyncTime number
---@field DSReceiveSyncLocalTime number
---@field RoomMode number
---@field bIsUGCGameMode boolean
---@field bUseUserDefinedMap boolean
---@field IsCompetitionOnline boolean
---@field IsGMatchRoom boolean
---@field bKillThanksEnabled boolean
---@field bEnableSoundSpatialization boolean
---@field FilmMode number
---@field bShowKillingTips boolean
---@field bShowVoiceInMinimap boolean
---@field PeakCompetitionMatchType number @巅峰赛对局匹配类型,0表示正常对局 3001表示大师局 4001表示宗师局
---@field bCollectedEventDataReportingEnabled boolean
---@field DisabledCollectedEventDataEventIds ULuaArrayHelper<number>
---@field WidgetToTextureRenderTarget2DManagerClass UWidgetToTextureRenderTarget2DManager
---@field bRoomEnablePause boolean
---@field MaxCapacity number
---@field LoadedWidgetToTextureRenderTarget2DManagerClass UWidgetToTextureRenderTarget2DManager
---@field VoiceVisualizationFlag number
---@field DynaConfigRepData FDynaConfigRep
---@field CheckEscapeType_TNM number
---@field CheckEscapeType number
---@field CanSafeQuit boolean
---@field SafeQuitedPlayerKey ULuaArrayHelper<number>
---@field SafeQuitedTeamID ULuaArrayHelper<number>
---@field MinHumanCfg number
---@field bCanShowPromotionTips boolean
---@field bGameModeEnableWeaponNewID boolean
---@field GameModeGeneralConfig FSoftObjectPath
local AUAEGameState = {}

---@param OldInfo FAllPlayerFixInfo
function AUAEGameState:OnRep_AllPlayerFixInfo(OldInfo) end

function AUAEGameState:OnRep_GameID() end

function AUAEGameState:OnRep_bDSLowFrame() end

---@param bLowFrame boolean
function AUAEGameState:OnDSLowFrame(bLowFrame) end

---@param DeathMatchBattleResultData FDeathMatchBattleResultData
function AUAEGameState:GetDeathMatchBattleResultData(DeathMatchBattleResultData) end

---@param PlayerKey number
---@param BattleResultData FDeathMatchBattleResultData
function AUAEGameState:GetDeathMatchPlayerEscapeBattleResultData(PlayerKey, BattleResultData) end

function AUAEGameState:OnRep_UseMoveInputStateUseSixteenDir() end

---@return FDateTime
function AUAEGameState:GetCurrentLobbyTime() end

---@param LobbyTime number
---@param DSReceiveTime number
function AUAEGameState:SetLobbyTime(LobbyTime, DSReceiveTime) end

function AUAEGameState:OnRep_IsUGCGameMode() end

function AUAEGameState:OnRep_UseUserDefinedMap() end

function AUAEGameState:OnRep_bEnableSoundSpatialization() end

function AUAEGameState:OnRep_ShowVoiceInMinimap() end

function AUAEGameState:OnRep_PeakCompetitionMatchType() end

---@param EventId number
---@return boolean
function AUAEGameState:IsCollectedEventEnabled(EventId) end

function AUAEGameState:OnRep_ModeUIManagerArray() end

function AUAEGameState:OnRep_IsMatchRoom() end

function AUAEGameState:OnRep_VoiceVisualizationFlag() end

---@return number
function AUAEGameState:GetVoiceVisualizationFlag() end

---@param InVoiceVisualizationFlag number
function AUAEGameState:SetVoiceVisualizationFlag(InVoiceVisualizationFlag) end

---@param OldValue number
function AUAEGameState:OnRep_ReplicatedWorldTimeSeconds(OldValue) end

---@param GameStateParams ULuaMapHelper<string, string>
function AUAEGameState:InitGameStateParams(GameStateParams) end

---@param GameStateParams ULuaMapHelper<string, string>
---@param Specifier string
function AUAEGameState:ChangeGameStateParams(GameStateParams, Specifier) end

---@param Info FDynaConfigInfo
function AUAEGameState:AddReplicatedDynaConfig(Info) end

function AUAEGameState:OnRep_DynaConfigRepData() end

---@param InPlayerState AUAEPlayerState
---@param SpecialNum number
---@return number
function AUAEGameState:GetResumePlayerNum(InPlayerState, SpecialNum) end

---@return number
function AUAEGameState:GetCurAlivePlayerNum() end

---@return boolean
function AUAEGameState:ShouldInitPrachuteItem() end

---@param InTeamID number
function AUAEGameState:SafeQuitedTeamID_BP(InTeamID) end

---@param InType number
function AUAEGameState:SetCheckEscapeType_TNM(InType) end

---@param InType number
function AUAEGameState:SetCheckEscapeType(InType) end

---@param InPlayerKey number
function AUAEGameState:AddSafeQuitedPlayerKey(InPlayerKey) end

---@param bCanQuit boolean
function AUAEGameState:SetCanSafeQuit(bCanQuit) end

---@param TeamID number
function AUAEGameState:SetTeamCanSafeQuit(TeamID) end

---@param CampID number
---@return string
function AUAEGameState:GetGeneralCampNameByCampID(CampID) end

---@param CampA_ID number
---@param CampB_ID number
---@return ECampRelation
function AUAEGameState:GetGeneralCampRelation(CampA_ID, CampB_ID) end

function AUAEGameState:InitGameModeGeneralConfig() end
