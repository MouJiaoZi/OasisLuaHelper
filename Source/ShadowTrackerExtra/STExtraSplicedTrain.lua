---@meta

---@class ESplicedTrain
---@field Normal number
---@field Master number
---@field Cabin number
ESplicedTrain = {}


---@class ESplicedTrainLinkErrorCode
---@field None number
---@field NULLPTR number
---@field CabinCantLink number
---@field BeConnecting number
---@field AlreadBreak number
---@field AlreadConnect number
---@field HPError number
---@field SystemDataError number
---@field CDTimeError number
---@field MaxConnectNum number
---@field CantConnectDistance number
---@field BlockCantConnect number
---@field CantFindTrain number
---@field Sucess number
ESplicedTrainLinkErrorCode = {}


---@class FSplicedTrainShapes
---@field ShapeLocalTrans ULuaArrayHelper<FTransform>
---@field SunRoofShapeIndex number
FSplicedTrainShapes = {}


---@class ASTExtraSplicedTrain: ASTExtraVehicleBase
---@field AttachSocket string
---@field ChildYawLimit number
---@field CabinTrainPhysxShapes ULuaMapHelper<ASTExtraSplicedTrain, FSplicedTrainShapes>
---@field LastFrameCabinTransform ULuaMapHelper<ASTExtraSplicedTrain, FTransform>
---@field CabinRelativeTransArray ULuaArrayHelper<FTransform>
---@field TrainSunRoofLocalLocation FVector
---@field TrainSunOffsetTolerance number
---@field bSunRoofOpen boolean
---@field MaxConnectTrainNum number
---@field TrainCabinActorSocketName ULuaArrayHelper<string>
---@field TrainCabinShapeSocketName ULuaArrayHelper<string>
---@field ForwardLinkLocationToCenterDist number
---@field BackwardSocket string
---@field BackwardSocketOffset FVector
---@field LinkedPhyiscsType ECollisionEnabled
---@field ConnectTargetVehicleUID number
---@field TrainList ULuaArrayHelper<ASTExtraSplicedTrain>
---@field HPBeforeConnect number
---@field DefaultMaxHP number
---@field DamageFactorArray ULuaArrayHelper<number>
---@field TestOverlapExtent FVector
---@field TestOverlapOffset FVector
---@field SweepTestDistance number
---@field LastSpliedTrainTrans FTransform
---@field bLastCabinOverLap boolean
---@field bCabinOverLapWithVehicle boolean
---@field bKeepCabinPhysxShapeUpdateShape boolean
---@field TrainState ESplicedTrain
---@field MaxYawDiff number
---@field YawInterpSpeed number
---@field MaxPitchDiff number
---@field bClampPitch boolean
---@field CanConnectTrainAngel number
---@field CanConnectTrainDistance number
---@field ConnectTrainFinishDistance number
---@field ProbeChannel ECollisionChannel
---@field ProbeSize number
---@field DistanceReasonCantConnectTips number
---@field BlockReasonCantConnectTips number
---@field ConnectStateAdditionVelocity number
---@field ConnectStateYawInterpSpeed number
---@field ConnectStateYawThreshold number
---@field CabinTrainProfileName string
---@field CabinCollisionChannel ECollisionChannel
---@field NormalTrainProfileName string
---@field NormalCollisionChannel ECollisionChannel
---@field OverLapTestChannel ECollisionChannel
---@field LastConnectTime number
---@field ConnectTrainCDTime number
---@field LeftConnectCDTime number
---@field bUseServerYaw boolean
---@field UseServerYawDistanceThreshold number
---@field UseServerYawVelocityThreshold number
---@field UserServerYawInterpSpeed number
---@field bEnableProcessConnectEvent boolean
---@field bWeldShape boolean
---@field bUseAttach boolean
---@field bDisableCollision boolean
---@field bDisableCameraChannel boolean
---@field bIgnorePostNetReceiveLocationAndRotation boolean
---@field bImmediateConnect boolean
---@field bAddDynamicCollison boolean
---@field bOpenTestOverlap boolean
---@field bOpenTestOverlapContinueCalcPitch boolean
---@field bUpdateLastTransInPostTick boolean
---@field TestPointNumInWater number
---@field MaxDSControlTime number
---@field CurDSControlTimeLeft number
---@field ServerPreventPenetratingCorrect boolean
---@field ClearVelocityWhenPrevent boolean
---@field SyncTrainInitTransform ULuaArrayHelper<FTransform>
---@field bNeedUseInitTransform boolean
---@field InitCabinDiffThreshold number
local ASTExtraSplicedTrain = {}

function ASTExtraSplicedTrain:SendToServerClientInitOK() end

---@return boolean
function ASTExtraSplicedTrain:ServerAuthorizeEvent() end

---@return boolean
function ASTExtraSplicedTrain:CanShowConnectBtn() end

---@param ReqMasterTrain ASTExtraSplicedTrain
function ASTExtraSplicedTrain:ReqConnectEvent(ReqMasterTrain) end

---@param ReqMasterTrain ASTExtraSplicedTrain
---@param ReqCabinTrain ASTExtraSplicedTrain
---@return ESplicedTrainLinkErrorCode
function ASTExtraSplicedTrain:DoConnectTrain(ReqMasterTrain, ReqCabinTrain) end

function ASTExtraSplicedTrain:OnConnectTrainEvent() end

---@param ReqMasterTrain ASTExtraSplicedTrain
---@param ReqCabinTrain ASTExtraSplicedTrain
---@param ForceBreak boolean
---@return ESplicedTrainLinkErrorCode
function ASTExtraSplicedTrain:DoBreakTrain(ReqMasterTrain, ReqCabinTrain, ForceBreak) end

function ASTExtraSplicedTrain:OnBreakTrainEvent() end

---@param DeltaTime number
---@return ESplicedTrainLinkErrorCode
function ASTExtraSplicedTrain:TickReqConnect(DeltaTime) end

---@param TargetLastTrain ASTExtraSplicedTrain
---@param ReqTrain ASTExtraSplicedTrain
---@return boolean
function ASTExtraSplicedTrain:TestFinalLocValid(TargetLastTrain, ReqTrain) end

---@param ReqMasterTrain ASTExtraSplicedTrain
---@return ESplicedTrainLinkErrorCode
function ASTExtraSplicedTrain:CanLinkTrain(ReqMasterTrain) end

function ASTExtraSplicedTrain:UpdateTrainLastTransform() end

---@param ReqCabinTrain ASTExtraSplicedTrain
function ASTExtraSplicedTrain:AddTrainShape(ReqCabinTrain) end

---@param ReqCabinTrain ASTExtraSplicedTrain
---@param bNeedRemoveKey boolean
function ASTExtraSplicedTrain:RemoveTrainShape(ReqCabinTrain, bNeedRemoveKey) end

---@param ReqCabinTrain ASTExtraSplicedTrain
function ASTExtraSplicedTrain:RemoveTrainShapeOnly(ReqCabinTrain) end

function ASTExtraSplicedTrain:ClearAllTrainShape() end

function ASTExtraSplicedTrain:ClearShapeOnOtherTrain() end

---@param bOpen boolean
function ASTExtraSplicedTrain:SetSunRoofState(bOpen) end

function ASTExtraSplicedTrain:OnRep_SunRoofOpen() end

---@param bEnable boolean
function ASTExtraSplicedTrain:EnableSunRoofCollision(bEnable) end

---@param IsLeanOut boolean
function ASTExtraSplicedTrain:OpenSunRoofInDS(IsLeanOut) end

---@param UID number
function ASTExtraSplicedTrain:SetConnectTargetVehicleUID(UID) end

function ASTExtraSplicedTrain:OnRep_ConnectTargetVehicleUID() end

function ASTExtraSplicedTrain:BeforeProcessTrainList() end

function ASTExtraSplicedTrain:NetUpdateTrainList() end

function ASTExtraSplicedTrain:TrainListUpdateEvent() end

function ASTExtraSplicedTrain:OnRep_TrainList() end

---@param NewValue ASTExtraSplicedTrain
function ASTExtraSplicedTrain:SetMasterTrain(NewValue) end

---@return boolean
function ASTExtraSplicedTrain:CanConnected() end

function ASTExtraSplicedTrain:OnRep_MasterTrain() end

---@param NewState ESplicedTrain
function ASTExtraSplicedTrain:SetTrainState(NewState) end

---@param LastState ESplicedTrain
function ASTExtraSplicedTrain:OnRep_TrainState(LastState) end

---@param LastState ESplicedTrain
function ASTExtraSplicedTrain:OnTrainStateChangeOnClient(LastState) end

---@param LeftTime number
---@param bForceUpdate boolean
function ASTExtraSplicedTrain:SetLeftConnectCDTime(LeftTime, bForceUpdate) end

---@param Veh ASTExtraSplicedTrain
---@param Result FHitResult
function ASTExtraSplicedTrain:TestSplicedTrain(Veh, Result) end

---@param DeltaTime number
function ASTExtraSplicedTrain:ProcessCabin(DeltaTime) end

---@param ParentYaw number
---@param SplicedTrain ASTExtraSplicedTrain
---@param DeltaTime number
---@return number
function ASTExtraSplicedTrain:ProcessSingleCabinYaw(ParentYaw, SplicedTrain, DeltaTime) end

function ASTExtraSplicedTrain:ProcessReConnectEvent() end

---@return FTransform
function ASTExtraSplicedTrain:GetServerReplicatedTransform() end

---@param Cabin ASTExtraSplicedTrain
---@return boolean
function ASTExtraSplicedTrain:CanUseReplicatedYaw(Cabin) end

---@return boolean
function ASTExtraSplicedTrain:CheckInWater() end

---@param InCharacter ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraSplicedTrain:OnServerExitVehicleEvent(InCharacter, SeatType, IsSucc) end

---@param Damage number
function ASTExtraSplicedTrain:OnVehicleTakeDamage(Damage) end

---@return FVector
function ASTExtraSplicedTrain:GetRotationInputDir() end

---@param DeltaTime number
function ASTExtraSplicedTrain:SpliceTrainTickEvent(DeltaTime) end

---@param DeltaTime number
function ASTExtraSplicedTrain:SpliceTrainPostTickEvent(DeltaTime) end

---@param SeatType ESTExtraVehicleSeatType
---@param InSeatIndex number
---@return boolean
function ASTExtraSplicedTrain:CanUseSeat(SeatType, InSeatIndex) end

---@param MasterVehicle ASTExtraSplicedTrain
---@param DeltaTime number
function ASTExtraSplicedTrain:OnTickReqConnect(MasterVehicle, DeltaTime) end

---@param ErrorCode ESplicedTrainLinkErrorCode
---@return number
function ASTExtraSplicedTrain:GetErrorCodeTipsID(ErrorCode) end

---@param DeltaTime number
function ASTExtraSplicedTrain:TickDynamicDamping(DeltaTime) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function ASTExtraSplicedTrain:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param Cabin ASTExtraSplicedTrain
function ASTExtraSplicedTrain:UpdateCabinShapeTrans(Cabin) end

function ASTExtraSplicedTrain:OnRep_SyncTrainInitTransform() end
