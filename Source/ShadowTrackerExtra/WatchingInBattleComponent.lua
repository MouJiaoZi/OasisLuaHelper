---@meta

---@class FWatchingInBattleCharacterInfo
---@field bShowWatchingUI boolean
---@field bLockTrans boolean
---@field bWatchingTeammate boolean
---@field WatchingTeammateIndex number
---@field WatchingTeammatePlayerID number
---@field WatchingTeammatePlayerKey number
---@field WatchingTeammateRank number
---@field WatchingTeammatePlayerName string
---@field WatchingTeammatePlatformGender number
---@field StartWatchingRotation FRotator
---@field bFreeView boolean
FWatchingInBattleCharacterInfo = {}


---@class FOnWatchInfoRefresh : ULuaSingleDelegate
FOnWatchInfoRefresh = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWatchInfoRefresh:Bind(Callback, Obj) end

---执行委托
function FOnWatchInfoRefresh:Execute() end


---@class UWatchingInBattleComponent: UActorComponent
---@field WatchingWidget UUAEUserWidget
---@field OwnerPanelName string
---@field OwnerPanelOuterName string
---@field WidgetDelayQuaryTime number
---@field WatchingWidgetTimerHandle FTimerHandle
---@field WatchingCharacterInfo FWatchingInBattleCharacterInfo
---@field LastWatchingCharacterInfo FWatchingInBattleCharacterInfo
---@field SyncSkillCDDatas ULuaArrayHelper<FSkillCDRepData>
---@field SkillCDDatas ULuaArrayHelper<UUTSkillCDBase>
---@field RefreshInfoTime number
---@field FreeViewWidget UUAEUserWidget
---@field FreeViewOwnerPanelName string
---@field FreeViewOwnerPanelOuterName string
---@field FreeViewWidgetTimerHandle FTimerHandle
---@field LastRefreshPlayerState ASTExtraPlayerState
---@field OnRep_WatchingCharacterInfo_Event FOnWatchInfoRefresh
---@field OnRep_SyncSkillCDDatas_Event FOnWatchInfoRefresh
---@field OnEnterWatchingEvent_Client FOnWatchInfoRefresh
---@field OnExitWatchingEvent_Client FOnWatchInfoRefresh
---@field OnSwitchWatchingTarget_Client FOnWatchInfoRefresh
---@field OnEnterWatchingEvent_Server FOnWatchInfoRefresh
---@field OnExitWatchingEvent_Server FOnWatchInfoRefresh
---@field OnSwitchWatchingTarget_Server FOnWatchInfoRefresh
local UWatchingInBattleComponent = {}

---@param InPlayerState ASTExtraPlayerState
---@param InShowWatchingUI boolean
function UWatchingInBattleComponent:RefreshWatchingPlayerInfo(InPlayerState, InShowWatchingUI) end

function UWatchingInBattleComponent:WatchingWidgetLoadCallBack() end

function UWatchingInBattleComponent:FreeViewWidgetLoadCallBack() end

function UWatchingInBattleComponent:OnRep_WatchingCharacterInfo() end

function UWatchingInBattleComponent:OnRep_SyncSkillCDDatas() end

---@param newPawn APawn
function UWatchingInBattleComponent:OnCharacterPossess_Server(newPawn) end

---@param newPawn APawn
function UWatchingInBattleComponent:OnCharacterPossess_Client(newPawn) end

---@param NewTarget AActor
---@param PrevTarget AActor
function UWatchingInBattleComponent:OnControllerViewTargetChange(NewTarget, PrevTarget) end

function UWatchingInBattleComponent:OnSkillCDChange() end

---@param HiderCom UHiderTransComponent
function UWatchingInBattleComponent:OnHiderLockChange(HiderCom) end

---@return boolean
function UWatchingInBattleComponent:WatchingIsValid() end

function UWatchingInBattleComponent:HandleEnterWatching_Client() end

function UWatchingInBattleComponent:HandleExitWatching_Client() end

function UWatchingInBattleComponent:HandleEnterWatching_Server() end

function UWatchingInBattleComponent:HandleExitWatching_Server() end

---@param PlayerKey number
function UWatchingInBattleComponent:OnPlayerQuitSpectating(PlayerKey) end

function UWatchingInBattleComponent:HandleEnterFreeView_Client() end

function UWatchingInBattleComponent:HandleExitFreeView_Client() end

function UWatchingInBattleComponent:HandleEnterFreeView_Server() end

function UWatchingInBattleComponent:HandleExitFreeView_Server() end

---@param bShow boolean
function UWatchingInBattleComponent:ToggleWatchingUI_Server(bShow) end

---@param teammateIndex number
function UWatchingInBattleComponent:SwitchWatchingTeammate_Server(teammateIndex) end

function UWatchingInBattleComponent:ResetToDefaultCharacter_Server() end

---@param flag boolean
function UWatchingInBattleComponent:OnRepIsSpectating(flag) end

---@param SkillClass UClass
---@return number
function UWatchingInBattleComponent:GetCurrentSkillPercentBySkillClass(SkillClass) end

---@param SkillClass UClass
---@return number
function UWatchingInBattleComponent:GetCurrentSkillTimeBySkillClass(SkillClass) end

---@param InOwnerPlayerController ASTExtraPlayerController
---@return boolean
function UWatchingInBattleComponent:IsCanEnterWatching(InOwnerPlayerController) end

---@param PlayerController ASTExtraPlayerController
---@param OutPlayers ULuaArrayHelper<ASTExtraPlayerState>
---@param ExcludeMyself boolean
function UWatchingInBattleComponent:GetWatchPlayerList(PlayerController, OutPlayers, ExcludeMyself) end

---@param bFreeShow boolean
function UWatchingInBattleComponent:ToggleFreeView_Server(bFreeShow) end

---@param Pawn APawn
function UWatchingInBattleComponent:HandleHiderComponentState(Pawn) end
