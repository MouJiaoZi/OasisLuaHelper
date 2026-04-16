---@meta

---@class FWingManStaticmesh
---@field WingManName string
FWingManStaticmesh = {}


---@class FWingPlaneRelevantDist
---@field Distance2D number
FWingPlaneRelevantDist = {}


---@class FWingPlaneRelevantDistList
---@field WingPlaneRelevanList ULuaArrayHelper<FWingPlaneRelevantDist>
FWingPlaneRelevantDistList = {}


---@class FResIDPlayerMatMapWrapper
---@field SlotMatMap ULuaMapHelper<string, FSoftObjectPath>
FResIDPlayerMatMapWrapper = {}


---@class FOnWingPlanesCreated : ULuaMulticastDelegate
FOnWingPlanesCreated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ClusterActor: AClusterActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWingPlanesCreated:Add(Callback, Obj) end

---触发 Lua 广播
---@param ClusterActor AClusterActor
function FOnWingPlanesCreated:Broadcast(ClusterActor) end


---@class AWingPlaneSystem: AInfo
---@field ClientAllWingInfos FWingManClientInfo
---@field CurrentWingPaneList ULuaArrayHelper<ACallerWingPlane>
---@field CurrentWingPaneCoverageList ULuaMapHelper<FIntPoint, number>
---@field PlayerCallWingPlaneTimes ULuaMapHelper<number, number>
---@field WingmanPlaneParams FAirDropPlaneParams
---@field WingmanPlaneCallCD number
---@field WingmanPlaneLifeSpan number
---@field FreeFuelNum number
---@field MaxRevelantWingPlaneNum number
---@field WingPlaneComingTipsID number
---@field WingPlaneWrongLocTipsID number
---@field WingPlaneFuelShortTipsID number
---@field WingPlaneSelfSuccessTipsID number
---@field WingPlaneTeamSuccessTipsID number
---@field WingPlaneInCoverageTipsID number
---@field WingPlaneCoverage number
---@field BornLandForbidenModeType ULuaArrayHelper<EGameModeType>
---@field BornLandForbidenTime number
---@field WingPlaneBornLandForbidenTipsID number
---@field bNotifyStopWingPlaneCameraEffect boolean
---@field PlaneWingCluster AClusterActor
---@field PlanesNum number
---@field PlanesLifeTime number
---@field NeedShowAfterFly number
---@field AttachLocation FTransform
---@field WingManInfoRep FWingManInfoRep
---@field CacheBackpackWingPlaneHandles ULuaArrayHelper<UBackpackWingPlaneHandle>
---@field CacheBackpackWingPlaneHandlesforReplacePlayer ULuaArrayHelper<UBackpackWingPlaneHandle>
---@field ResIDPlayerMatMap ULuaMapHelper<number, FResIDPlayerMatMapWrapper>
---@field OnWidgetToTextureRenderTarget2DManagerDrawn FOnWidgetToTextureRenderTarget2DManagerDrawn
---@field WingManStaticmeshes ULuaArrayHelper<FWingManStaticmesh>
---@field WingPlaneWidgetClass UTeammateInPlaneWidget
---@field WingPlaneWidget ULuaMapHelper<number, UTeammateInPlaneWidget>
---@field WingPlaneTeamInfo ULuaMapHelper<number, AWingPlanePlayersInfo>
---@field bBeginTeamRelevant boolean
---@field bSkipWingPlaneCameraEffect boolean
---@field OnWingPlanesCreated FOnWingPlanesCreated
local AWingPlaneSystem = {}

---@param State ExtraPlayerLiveState
---@param OwnerCharacter ACharacter
function AWingPlaneSystem:OnCurrentPlayerParachuting(State, OwnerCharacter) end

---@param bAsyncLoadItemHandle boolean
function AWingPlaneSystem:StartWingPlanes(bAsyncLoadItemHandle) end

---@param PlayerKey string
---@return FWingManInfoWrapper
function AWingPlaneSystem:GetPlayerWingInfo(PlayerKey) end

---@return boolean
function AWingPlaneSystem:NeedPlayShow() end

---@param bNeedSkip boolean
function AWingPlaneSystem:SetSkipWingPlaneCameraEffect(bNeedSkip) end

function AWingPlaneSystem:NotifyStopWingPlaneCameraEffect() end

---@param DeviceQualityLevel number
---@param Mesh USkeletalMeshComponent
---@return boolean
function AWingPlaneSystem:IsMatHighDeviceQuality(DeviceQualityLevel, Mesh) end

---@param SkelMeshComp USkeletalMeshComponent
---@param PlayerMatList ULuaArrayHelper<UObject>
---@param LeftMeshInstIndex number
function AWingPlaneSystem:ApplyPlayerMaterial(SkelMeshComp, PlayerMatList, LeftMeshInstIndex) end

---@param MsgMeshMat string
---@param SkelMeshComp USkeletalMeshComponent
---@param WingManID number
---@param LeftMeshInstIndex number
function AWingPlaneSystem:GetPlayerMaterialList(MsgMeshMat, SkelMeshComp, WingManID, LeftMeshInstIndex) end

function AWingPlaneSystem:OnGameEnterFight() end

function AWingPlaneSystem:OnGameEnterFight_CheckDelay() end

function AWingPlaneSystem:OnGameFinishedInitialPlaneRoute() end

---@param NewPlayer APlayerController
function AWingPlaneSystem:OnPlayerLogin(NewPlayer) end

---@param NewPlayer APlayerController
function AWingPlaneSystem:OnPlayerExit(NewPlayer) end

function AWingPlaneSystem:OnRep_ClientPlayerWingInfos() end

function AWingPlaneSystem:OnRep_ClientAllWingInfos() end

function AWingPlaneSystem:OnRep_SyncWingPlaneSystem() end

---@param Sender UWidgetToTextureRenderTarget2DManager
---@param Params FDrawTextToTextureRenderTarget2DParams
function AWingPlaneSystem:OnTextRTFinished(Sender, Params) end

---@param PlayerID FPlayerID
---@return FGameModePlayerParams
function AWingPlaneSystem:RetrievePlayerParams(PlayerID) end

---@param HandleList ULuaArrayHelper<UBattleItemHandleBase>
---@param RequestID number
function AWingPlaneSystem:OnBattleItemHandleAsyncList(HandleList, RequestID) end

function AWingPlaneSystem:InitTeammatePassagersInfo() end
