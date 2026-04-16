---@meta

---@class FTeamLogoInfoInOB
---@field AlivePlayerCount number
---@field LastPlayerUID string
---@field LogoPicUrl string
---@field LogoPosWorld3D FVector
FTeamLogoInfoInOB = {}


---@class FMapShootLineInfo
---@field LineDistance3D number
---@field LineAngle number
---@field BeginLocation FVector
---@field EndLocation FVector
FMapShootLineInfo = {}


---@class FTeamDistanceWarningInOB
---@field Distance number
---@field Teams ULuaArrayHelper<number>
FTeamDistanceWarningInOB = {}


---2020年2月11日 15:09:30 , add by：zengzuo 用来承接OBUI获取数据的工作 (1) 从 ob/replay同步的actor中 (2) 从 controller中 (3) 从 .replay文件中
---@class FOnOBCharacterSpawned : ULuaMulticastDelegate
FOnOBCharacterSpawned = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOBCharacterSpawned:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
function FOnOBCharacterSpawned:Broadcast(Character) end


---@class FOBUIRefreshMCPlayerListDelegate : ULuaSingleDelegate
FOBUIRefreshMCPlayerListDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOBUIRefreshMCPlayerListDelegate:Bind(Callback, Obj) end

---执行委托
function FOBUIRefreshMCPlayerListDelegate:Execute() end


---@class FOBUIRefreshTeamDistanceWarningDelegate : ULuaSingleDelegate
FOBUIRefreshTeamDistanceWarningDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOBUIRefreshTeamDistanceWarningDelegate:Bind(Callback, Obj) end

---执行委托
function FOBUIRefreshTeamDistanceWarningDelegate:Execute() end


---@class UOBTypeUISource: UObject
---@field CurrentMaxTeamID number
---@field TeamLogoInfoMap ULuaMapHelper<number, FTeamLogoInfoInOB>
---@field bBuildForWindows boolean
---@field ShootLineFilterRadius number
---@field ShootLineUpdateTimeRate number
---@field MapShootLines ULuaArrayHelper<FMapShootLineInfo>
---@field MapBeHitPlayerNames ULuaArrayHelper<string>
---@field AreaParamCache ULuaMapHelper<number, FAreaParam>
---@field LastAreaID number
---@field RefreshMCPlayerListDelegate FOBUIRefreshMCPlayerListDelegate
---@field RefreshTeamDistanceWarningDelegate FOBUIRefreshTeamDistanceWarningDelegate
---@field TeamOrder ULuaArrayHelper<number>
---@field MapDistanceWarningTeams ULuaArrayHelper<FTeamDistanceWarningInOB>
local UOBTypeUISource = {}

---@param inPlayerName string
function UOBTypeUISource:ChangeViewerCharacter(inPlayerName) end

---@param TeamId number
function UOBTypeUISource:ChangeViewerTeam(TeamId) end

function UOBTypeUISource:ChangeFreeViewCamera() end

---@return boolean
function UOBTypeUISource:GetIsFreeViewCamera() end

function UOBTypeUISource:GetRouteSegmentList() end

function UOBTypeUISource:GetTotalPlayerList() end

---@return FObservedData
function UOBTypeUISource:GetCurViewerOBData() end

function UOBTypeUISource:GetTeamInfoInOBMap() end

---@return number
function UOBTypeUISource:GetAliveTeamNum() end

---@return boolean
function UOBTypeUISource:IsCurrentSpectatorFreeView() end

---@return number
function UOBTypeUISource:GetFreeViewUpRate() end

---@param rate number
function UOBTypeUISource:SetFreeViewUpRate(rate) end

---@return boolean
function UOBTypeUISource:IsEnableSignalBar() end

function UOBTypeUISource:GetNearPlayerList() end

function UOBTypeUISource:GetSameTeamPlayerList() end

function UOBTypeUISource:GetTotalPlayerList_SortedByTeamID() end

---@param info AAvatarCapture
function UOBTypeUISource:SetAvatarCaptureInfo(info) end

function UOBTypeUISource:GetAirDropBoxList() end

---@param inDropID number
function UOBTypeUISource:SetCurAirDropID(inDropID) end

---@return number
function UOBTypeUISource:GetWhiteCircleDistance() end

---@param ItemSpecifiedID ULuaArrayHelper<number>
function UOBTypeUISource:GetMultiItemFromItemList(ItemSpecifiedID) end

function UOBTypeUISource:GetAllMultiItemList() end

---@param InPlayerName string
---@return FPlayerInfoInOB
function UOBTypeUISource:GetPlayerInfoInObByName(InPlayerName) end

---@param InPlayerName string
---@return FPlayerInfoInOB
function UOBTypeUISource:GetKillerPlayerInfoInOBByName(InPlayerName) end

function UOBTypeUISource:OnSyncOBDataActorReady() end

---@param GameState ASTExtraGameStateBase
function UOBTypeUISource:HandleOnGameStateInit(GameState) end

function UOBTypeUISource:UpdateEntireMapTeamLogos() end

---@param InDeltaTime number
function UOBTypeUISource:UpdateMapShootLine(InDeltaTime) end

---@param PlayerLocation FVector
---@param outAreaAnchorsStr string
---@param InMapName string
---@param InTargetName string
---@param BattleTextID number
---@param AreaID number
---@return boolean
function UOBTypeUISource:IsInSpecifiedArea(PlayerLocation, outAreaAnchorsStr, InMapName, InTargetName, BattleTextID, AreaID) end

---@param PlayerLocation FVector
---@param BattleTextID number
---@return number
function UOBTypeUISource:FetchSpecifiedAreaIDByCache(PlayerLocation, BattleTextID) end
