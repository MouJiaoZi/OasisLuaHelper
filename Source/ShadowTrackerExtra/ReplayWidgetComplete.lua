---@meta

---@class EReplayUIGroupType
---@field Total number
---@field MapInfo number
---@field PlayerHP number
---@field FightingInfo number
---@field KillNum number
---@field NoUseInfo number
---@field TeamInLevel number
---@field Logo number
---@field SignalReceiveAreaTips number
---@field EntireMapButton number
---@field Timeliness number
EReplayUIGroupType = {}


---@class EReplayWidgetLogoMode
---@field VideoPatrol number
---@field EaglePatol number
---@field CrowdJudging number
EReplayWidgetLogoMode = {}


---@class FOneTeamPlayerState
---@field TeamID number
---@field TeammateStates ULuaArrayHelper<ASTExtraPlayerState>
FOneTeamPlayerState = {}


---@class FSingleEnemyUIInfo
---@field PlayerUIDStr string
---@field PlayerFrameUI UMaterialBillboardComponent
FSingleEnemyUIInfo = {}


---@class FTeamEnemyUIInfo
---@field TeamID number
---@field SingleUIInfoArray ULuaArrayHelper<FSingleEnemyUIInfo>
FTeamEnemyUIInfo = {}


---@class FAntiCheatUIInfo
FAntiCheatUIInfo = {}


---@class FAntiCheatUIManager
---@field AllUIForCharacters ULuaMapHelper<string, FAntiCheatUIInfo>
FAntiCheatUIManager = {}


---@class UReplayWidgetComplete: UReplayWidgetBase
---@field AntiCheatUIManager FAntiCheatUIManager
---@field ReplayWidgetStyleList ULuaArrayHelper<UUserWidgetStyle>
---@field TickRate_PlayerList number
---@field PlayerHeadListClassPtr UOBModePlayerHeadList
---@field bUseWeseeStyle boolean
---@field RecordTargetUID string
---@field RecordTargetTeamID number
---@field PlayerHeadList UOBModePlayerHeadList
---@field ReplayUIStyleGroup ULuaMapHelper<EReplayUIGroupType, UUserWidgetStyle>
---@field PlayerInfoWidget UUAEUserWidget
---@field ShouldReleasePlayerInfoWidget boolean
---@field TeamEnemyUIInfoMap ULuaMapHelper<number, FTeamEnemyUIInfo>
---@field ResetEnemyUICDTime number
---@field GetAllPlayersCDTime number
---@field FirstGetAllPlayersDelay number
---@field ResetEnemyUICDTimeOverride number
---@field EnemyDistanceUIPath string
---@field PlayerItemClassPtr UPlayerItemInMap
---@field PlayerItemZOrder number
---@field PlayerItemRefreshInterval number
---@field TeamPlayerStateMap ULuaMapHelper<number, FOneTeamPlayerState>
---@field AllPlayerStatesBP ULuaArrayHelper<FOneTeamPlayerState>
---@field NearByPlayerStatesBP ULuaArrayHelper<FOneTeamPlayerState>
---@field ShootingBodyUIClassPtr UShootingBodyUI
---@field ShootingBodyUIPtr UShootingBodyUI
---@field TimeToHideShootingBodyUI number
---@field bIsShowingBodyUI boolean
---@field LastReplicatedRecord FWeaponRecord
---@field ScreenMovePathToDraw ULuaArrayHelper<FVector2D>
local UReplayWidgetComplete = {}

function UReplayWidgetComplete:RefreshAssumedRelevantUI() end

---@param isOpen boolean
function UReplayWidgetComplete:OnChoosePlayerList(isOpen) end

---@param isNearBy boolean
function UReplayWidgetComplete:OnSelectPlayerList(isNearBy) end

---@param Vehicle ASTExtraVehicleBase
function UReplayWidgetComplete:OnViewCharacterAttachedToVehicle(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
function UReplayWidgetComplete:OnViewCharacterDetachedFromVehicle(Vehicle) end

function UReplayWidgetComplete:OnViewCharaterChangedVechileSeat() end

function UReplayWidgetComplete:RefreshNearByList_BP() end

function UReplayWidgetComplete:RefreshAllList_BP() end

---@param inUIGroupIndex EReplayUIGroupType
---@param bIsShow boolean
function UReplayWidgetComplete:SetUIGroupState(inUIGroupIndex, bIsShow) end

function UReplayWidgetComplete:ReceiveUseWeseeStyle() end

function UReplayWidgetComplete:CreateOBUI() end

function UReplayWidgetComplete:RefershOBUI() end

---@param RenderTarget UTextureRenderTarget2D
function UReplayWidgetComplete:SetRenderTargetForUI(RenderTarget) end

---@param PlayerList ULuaArrayHelper<FPlayerInfoInOB>
function UReplayWidgetComplete:RefreshHeadMarkData(PlayerList) end

---@param TargetPoint FVector2D
function UReplayWidgetComplete:MoveMapCenterOnPoint(TargetPoint) end

function UReplayWidgetComplete:OpenEntireMap() end

function UReplayWidgetComplete:CloseEntireMap() end

---@param fFactor number
function UReplayWidgetComplete:ScaleEntireMap(fFactor) end

---@param bIsShow boolean
function UReplayWidgetComplete:SetSignalReceivingAreaTipsVisible(bIsShow) end

---@param bIsShow boolean
function UReplayWidgetComplete:SetSkillPromptVisible(bIsShow) end

---@param bIsShow boolean
---@param TargetIndex number
function UReplayWidgetComplete:SetPlayerInfoWidgetVisible(bIsShow, TargetIndex) end

---@param LogoIndex EReplayWidgetLogoMode
function UReplayWidgetComplete:SwitchLogoUI(LogoIndex) end

---@param bVisible boolean
function UReplayWidgetComplete:SetLogoVisible(bVisible) end

---@param ViewedPlayerPawn APawn
function UReplayWidgetComplete:ResetPlayerInfoWidget(ViewedPlayerPawn) end

---@param bShouldRefreshUIState boolean
function UReplayWidgetComplete:UpdateMinimapPlayerItems(bShouldRefreshUIState) end

---@param PropSlot ESurviveWeaponPropSlot
function UReplayWidgetComplete:OnSimulatedWeaponChanged(PropSlot) end

function UReplayWidgetComplete:OnBulletNumChanged() end

---@param newRecord FWeaponRecord
function UReplayWidgetComplete:OnPlayerWeaponRecordChanged(newRecord) end

function UReplayWidgetComplete:OnCharacterWeaponShooting() end
