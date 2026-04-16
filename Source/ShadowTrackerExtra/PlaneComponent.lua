---@meta

---@class ECheckJumpPointResult
---@field NoNeedCheck number @无需检查跳伞点
---@field Success number @检查通过 应用校验通过的跳伞点
---@field InvalidNeedSetRoute number @跳伞点不合法 需要重新设置航线
ECheckJumpPointResult = {}


---@class FPlaneData
---@field FlightNo number
---@field bStarted boolean
---@field bCanJump boolean
---@field bForceJumped boolean
---@field PlaneVelocity FVector
---@field PlaneStartLoc FVector
---@field PlaneEndLoc FVector
---@field CanJumpLoc FVector2D
---@field ForceJumpLoc FVector2D
---@field TotalPlayerNum number
---@field TotalPlayers ULuaArrayHelper<APlayerController>
---@field CurPlayers ULuaArrayHelper<APlayerController>
---@field TotalAINum number
---@field TotalAIs ULuaArrayHelper<AAIController>
---@field CurAIs ULuaArrayHelper<AAIController>
---@field CurAINum number
---@field bHasEscortPlanes boolean
FPlaneData = {}


---@class FOnPlaneHittedDelegate : ULuaSingleDelegate
FOnPlaneHittedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlaneHittedDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlaneHittedDelegate:Execute() end


---@class FOnAllPlayerLeavePlaneDelegate : ULuaSingleDelegate
FOnAllPlayerLeavePlaneDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAllPlayerLeavePlaneDelegate:Bind(Callback, Obj) end

---执行委托
function FOnAllPlayerLeavePlaneDelegate:Execute() end


---@class UPlaneComponent: UGameModeBaseComponent, ILuaInterface
---@field SeasonPlanes ULuaArrayHelper<FPlaneTypes>
---@field EquippedPlane AActor
---@field ReplacedPlane AActor
---@field CurPlaneData FPlaneData
---@field PlayersOnPlaneDataList ULuaArrayHelper<FPlaneData>
---@field PreCalculatePlaneTime number
---@field bEnabled boolean
---@field bHasEscortPlanes number
---@field CachedTotalPlayer ULuaArrayHelper<APlayerController>
---@field CachedTotalAI ULuaArrayHelper<AAIController>
---@field bHasPlaneRZone boolean
---@field LastForceJumpPos FVector2D
---@field LastCanJumpPos FVector2D
---@field FlightTimes number
---@field OverJumpTimeFromGotoPlane number
---@field StartCurFlightTime number
---@field bNotifyAllPlayerLeavePlane boolean
---@field bCloseMoveInputStateExSimulateRep boolean
---@field LuaPath string
local UPlaneComponent = {}

---@param InTotalPlayers ULuaArrayHelper<APlayerController>
---@param InTotalAis ULuaArrayHelper<AAIController>
function UPlaneComponent:SetCachedTotalPlayers(InTotalPlayers, InTotalAis) end

function UPlaneComponent:SetCurFlight() end

function UPlaneComponent:SetTotalPlayers() end

function UPlaneComponent:SetRoute() end

---@param StartPoint FVector2D
---@param EndPoint FVector2D
---@param Controller APlayerController
function UPlaneComponent:ChangeRoute(StartPoint, EndPoint, Controller) end

---@param TmpPlaneRouteData FGameModeParam
---@param StartLoc FVector2D
---@param TargetLoc FVector2D
---@param CanJumpLoc FVector2D
---@param ForceJumpLoc FVector2D
function UPlaneComponent:CalcJumpPoint(TmpPlaneRouteData, StartLoc, TargetLoc, CanJumpLoc, ForceJumpLoc) end

---@param ToCheckCanJumpLoc FVector2D
---@param ToCheckForceJumpLoc FVector2D
---@return ECheckJumpPointResult
function UPlaneComponent:CheckNeedToModifyJumpPoint(ToCheckCanJumpLoc, ToCheckForceJumpLoc) end

---@return FVector2D
function UPlaneComponent:GetModifiedCanJumpPoint() end

---@return FVector2D
function UPlaneComponent:GetModifiedForceJumpPoint() end

function UPlaneComponent:StartCurFlight() end

function UPlaneComponent:EndAllAirlines() end

---@param Plane AActor
function UPlaneComponent:EndCurFlight(Plane) end

function UPlaneComponent:SetTotalPlayerNumOnPlane() end

function UPlaneComponent:SetCurPlayerNumOnPlane() end

---@param PC AController
---@return boolean
function UPlaneComponent:IsFlightStarted(PC) end

---@param VehicleCraftSoftClass AVehicleCraftCharacter
function UPlaneComponent:NotifySpawnVehicleCraft(VehicleCraftSoftClass) end

function UPlaneComponent:NotifySpawnMultiPlayerAircraft() end

function UPlaneComponent:NotifyPlayersEnterPlane() end

function UPlaneComponent:NotifyAIEnterPlane() end

---@param DeltaTime number
function UPlaneComponent:CheckPlanePos(DeltaTime) end

---@param InPlayer APlayerController
function UPlaneComponent:OnPlayerPostLogin(InPlayer) end

---@param InPlayer APlayerController
function UPlaneComponent:OnPlayerLogout(InPlayer) end

---@param Plane AActor
---@param PC APlayerController
function UPlaneComponent:OnPlayerEnterPlane(Plane, PC) end

---@param PC APlayerController
function UPlaneComponent:OnPlayerLeavePlane(PC) end

---@param InAI AAIController
function UPlaneComponent:OnSpawnAI(InAI) end

---@param InAI AAIController
function UPlaneComponent:OnDestroyAI(InAI) end

---@param InAI AAIController
function UPlaneComponent:OnAIEnterPlane(InAI) end

---@param InAI AAIController
function UPlaneComponent:OnAILeavePlane(InAI) end

---@param PC AController
---@return boolean
function UPlaneComponent:IsMyPlaneCanJump(PC) end

---@param bCan boolean
function UPlaneComponent:SetPlaneCanJump(bCan) end

---@param PC AController
---@return FPlaneData
function UPlaneComponent:GetCurPlaneData(PC) end

---@return FVector2D
function UPlaneComponent:GetLastCanJumpPos() end

---@return FVector2D
function UPlaneComponent:GetLastForceJumpPos() end

---@param InEnable boolean
function UPlaneComponent:SetEnable(InEnable) end

---@return boolean
function UPlaneComponent:IsEnabled() end

---@return string
function UPlaneComponent:GetSeasonPlane() end

---@param StartPoint FVector2D
---@param EndPoint FVector2D
function UPlaneComponent:SetCustomFlight(StartPoint, EndPoint) end

---@return FGameModeParam
function UPlaneComponent:GetCurPlaneRouteData() end

function UPlaneComponent:ForceJumpOffPlane() end

---@param InHasPlaneRZone boolean
function UPlaneComponent:ToggleRestrictedZone(InHasPlaneRZone) end

---@return boolean
function UPlaneComponent:MultiAirlinesStage() end

---@param Controller ASTExtraPlayerController
---@param Index number
---@return boolean
function UPlaneComponent:ReplacePlane(Controller, Index) end

---@param PlaneData FPlaneData
---@return boolean
function UPlaneComponent:IsPlaneStarted(PlaneData) end

---@param PlaneData FPlaneData
---@return boolean
function UPlaneComponent:IsPlaneReady(PlaneData) end

---@param bForcePreCalculate boolean
function UPlaneComponent:PreCalculatePlane(bForcePreCalculate) end

function UPlaneComponent:ReceivePreCalculatePlane() end

---@param Time number
function UPlaneComponent:OnGameModeReadyStateTimeChanged(Time) end

function UPlaneComponent:CloseMoveInputStateExSimulateRep() end

---@param Plane AActor
function UPlaneComponent:InitPlaneBanner(Plane) end

---@return string
function UPlaneComponent:GetLuaModule() end

---@param Controller ASTExtraPlayerController
---@param Index number
---@return string
function UPlaneComponent:ScriptReplacePlane(Controller, Index) end
