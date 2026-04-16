---@meta

---@class FOBPlayerAdditionalInfo
---@field uPlayerKey number
---@field SimpleItems ULuaArrayHelper<FOBSimpleItemInfo>
FOBPlayerAdditionalInfo = {}


---@class FPlayerOBUIDMap
---@field SrcOBPlayerUID number
---@field DestOBPlayerUID number
---@field bIsWatchingEnemy boolean
FPlayerOBUIDMap = {}


---@class FPlayerOBFlowMap
---@field SrcOBPlayerUID number
---@field ObserveFlow EObserveFlowState
FPlayerOBFlowMap = {}


---@class FPlayerWeatherMap
---@field PlayerKey number
---@field WeatherIndex number
FPlayerWeatherMap = {}


---@class FPlayerOBUIDRepDelegate : ULuaMulticastDelegate
FPlayerOBUIDRepDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: number, Param2: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerOBUIDRepDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 number
---@param Param2 boolean
function FPlayerOBUIDRepDelegate:Broadcast(Param1, Param2) end


---@class FPlayerOBFlowRepDelegate : ULuaMulticastDelegate
FPlayerOBFlowRepDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: EObserveFlowState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerOBFlowRepDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 EObserveFlowState
function FPlayerOBFlowRepDelegate:Broadcast(Param1) end


---@class FPlayerInfoOBForReplayRepDelegate : ULuaSingleDelegate
FPlayerInfoOBForReplayRepDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerInfoOBForReplayRepDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerInfoOBForReplayRepDelegate:Execute() end


---@class FSyncOBDataReadyDelegate : ULuaSingleDelegate
FSyncOBDataReadyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSyncOBDataReadyDelegate:Bind(Callback, Obj) end

---执行委托
function FSyncOBDataReadyDelegate:Execute() end


---@class ASyncOBDataActor: AActor
---@field TotalPlayers ULuaArrayHelper<FPlayerBaseInfoInOB>
---@field TotalPlayerWeatherMap ULuaArrayHelper<FPlayerWeatherMap>
---@field AirDropBoxList ULuaArrayHelper<FAirDropBoxInOb>
---@field OBPlayerInfoList ULuaArrayHelper<FOBPlayerAdditionalInfo>
---@field OnReplayObservedItemChanged FReplayObservedItemChangedDelegate
---@field OnObservedPlayerDamageAmountChanged FOnObservedPlayerDamageAmountChangedDelegate
---@field OnObservedPlayerAssistChanged FOnObservedPlayerAssistChangedDelegate
---@field CacheObservedItemListOnReplay ULuaArrayHelper<FBattleItemData>
---@field CacheOBItemOnReplay FIncNetArrayNew
---@field RouteSegmentData ULuaArrayHelper<FRouteSegment>
---@field RouteSegmentList ULuaMapHelper<number, FRouteSegment>
---@field TotalPlayerList ULuaArrayHelper<FPlayerInfoInOB>
---@field TotalPlayerList_SortedByTeamID ULuaArrayHelper<FPlayerInfoInOB>
---@field NearPlayerList ULuaArrayHelper<FPlayerInfoInOB>
---@field SameTeamPlayerList ULuaArrayHelper<FPlayerInfoInOB>
---@field TeamInfoMap ULuaMapHelper<number, FTeamInfoInOB>
---@field bShowClubLogoInOB boolean
---@field EagleWatchDistance number
---@field EagleWatchListLevel number
---@field ReportedPlayers ULuaArrayHelper<number>
---@field WinOBLocalRecordInfo FTimerHandle
---@field TotalPlayerOBUIDMap ULuaArrayHelper<FPlayerOBUIDMap>
---@field TotalPlayerOBFlowMap ULuaArrayHelper<FPlayerOBFlowMap>
---@field EmergencyCallerItemID number
---@field KnockoutCameraActorPath string
local ASyncOBDataActor = {}

function ASyncOBDataActor:OnRep_RouteSegmentList() end

function ASyncOBDataActor:OnRep_RefreshTotalPlayers() end

function ASyncOBDataActor:OnRep_TotalPlayerWeatherMap() end

---@param InPlayerList ULuaArrayHelper<number>
function ASyncOBDataActor:SyncStartFirePlayers(InPlayerList) end

---@param InPlayerList ULuaArrayHelper<number>
function ASyncOBDataActor:SyncStopFirePlayers(InPlayerList) end

function ASyncOBDataActor:OnRep_RefreshAirDropBox() end

---@return FVector
function ASyncOBDataActor:GetNewestAirDropBoxPos() end

function ASyncOBDataActor:OnRep_ObservedItemList() end

---@param ItemSpecifiedID ULuaArrayHelper<number>
function ASyncOBDataActor:GetMultiItemFromItemList(ItemSpecifiedID) end

function ASyncOBDataActor:GetAllMultiItemList() end

function ASyncOBDataActor:OnRep_ObservedItemList_OnReplay() end

---@param handle UItemHandleBase
function ASyncOBDataActor:OnPlayerItemUpdate(handle) end

---@param GameState ASTExtraGameStateBase
function ASyncOBDataActor:HandleOnGameStateInit(GameState) end

function ASyncOBDataActor:OnLoadKnockoutCameraCompleted() end

function ASyncOBDataActor:TickRecordWinOBLocalInfo() end

---@param inoutPlayerInfo FPlayerInfoInOB
function ASyncOBDataActor:RefreshPlayerState(inoutPlayerInfo) end

---@param IsEagleWatch boolean
function ASyncOBDataActor:UpdateTotalPlayerListForEagleWatch(IsEagleWatch) end

---@param PlayerKey number
---@param bIsAI boolean
function ASyncOBDataActor:OnPlayerRespawned(PlayerKey, bIsAI) end

function ASyncOBDataActor:OnRep_TotalPlayerOBUIDMap() end

function ASyncOBDataActor:OnRep_TotalPlayerOBFlowMap() end

---@param VictimKey number
---@param InstigatorKey number
---@param InFinalDamage number
function ASyncOBDataActor:OnPlayerTakeDamage(VictimKey, InstigatorKey, InFinalDamage) end


---@class ASyncPlayerStaticDataActor: AActor
---@field TotalPlayersStaticInfo ULuaArrayHelper<FPlayerStaticInfoInOB>
local ASyncPlayerStaticDataActor = {}

function ASyncPlayerStaticDataActor:OnRep_TotalPlayersStaticInfo() end
