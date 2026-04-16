---@meta

---@class ETrainRouteMoveState
---@field Static number
---@field Moving number
---@field Stopping number
ETrainRouteMoveState = {}


---@class FTrainRouteMoveInfo
---@field MoveType ETrainRouteMoveState
---@field DistanceValue number
---@field SpeedValue number
---@field ServerTime number
---@field MoveStopAcc number
FTrainRouteMoveInfo = {}


---@class FTrainActorInfo
---@field ToWorldTrans FTransform
---@field TrainLength number
FTrainActorInfo = {}


---@class FLandscapeSplineInfo
---@field SplineTrans FTransform
---@field SplinePoints ULuaArrayHelper<FSplinePoint>
FLandscapeSplineInfo = {}


---@class USTExtraTrainRouteMovementComponent: UActorComponent
---@field TrainFrontPointTag string
---@field TrainBackPointTag string
---@field TrainSpaceDist number
---@field TrainStartOffset number
---@field TrainStartInterspace number
---@field bMoveSweep boolean
---@field bNeedForceUpdateChild boolean @是否需要强制更新子Child Transform
---@field MoveMaxSpeed number
---@field MoveStartAcc number
---@field MoveStopAcc number
---@field StopDistSpeedThreshold number
---@field SplineTracePrecision number
---@field SplineTraceStartStep number
---@field bEnableCppMoveLogic boolean
---@field bEnableBlueprintPostCppTick boolean
---@field MoveIgnoreServerTimeDelta number
---@field ServerUpdateMoveInterval number
---@field bEnableRecreatePhysicsWhenInit boolean
---@field bEnableRecreateChildSkeletalPhysics boolean
---@field bEnableHitCheck boolean
---@field bHitCheckOnlyInServer boolean
---@field bTrainHitPlayerSetRelativeLoc boolean
---@field HitSetRelativeRadiusScale number
---@field TrainDamageCompTag string
---@field HitCheckChannelList ULuaArrayHelper<ECollisionChannel>
---@field TrainHitPlayerVelocityMulti number
---@field bAddHitSidePush boolean
---@field TrainHitPlayerAddSideVel number
---@field HitUpOverrideVelocity number
---@field TrainHitVehicleAddSideDist number
---@field ServerHitVehicleAuthorizeTime number
---@field IgnoreTrainActor AActor
---@field DamageValue number
---@field DamageTimeInterval number
---@field DamageTypeClass UDamageType
---@field TrainHitPushUpZOffset number
---@field TrainHitVehiclePushUpZOffset number
---@field bHasInit boolean
---@field bHasToEnd boolean
---@field LocalDistance number
---@field LocalSpeed number
---@field LocalTimeMark number
---@field LocalEngineVel FVector
---@field bNeedRedoInitAfterActorRep boolean
---@field DamagedPlayerTime ULuaMapHelper<AActor, number>
---@field TrainMoveInfo FTrainRouteMoveInfo
---@field TrainActorList ULuaArrayHelper<FTrainActorInfo>
---@field bIsCurMainRoute boolean
---@field OverrideMaxMoveSpeed number
---@field LastServerUpdateMoveTime number
local USTExtraTrainRouteMovementComponent = {}

function USTExtraTrainRouteMovementComponent:InitRouteSpline() end

---@param TrainActors ULuaArrayHelper<AActor>
function USTExtraTrainRouteMovementComponent:InitTrainActorList(TrainActors) end

function USTExtraTrainRouteMovementComponent:InitTrainStartLocation() end

function USTExtraTrainRouteMovementComponent:ControlStartMove() end

function USTExtraTrainRouteMovementComponent:ControlStopMove() end

---@param DistanceValue number
---@param DeltaTime number
function USTExtraTrainRouteMovementComponent:UpdateTrainTrans(DistanceValue, DeltaTime) end

---@param OriginDistance number
---@param Dist number
---@return number
function USTExtraTrainRouteMovementComponent:GetSplineDistToDistance(OriginDistance, Dist) end

---@param Distance number
---@return FVector
function USTExtraTrainRouteMovementComponent:GetSplinePointByDistance(Distance) end

---@return number
function USTExtraTrainRouteMovementComponent:GetServerTime() end

---@return number
function USTExtraTrainRouteMovementComponent:GetLocalWorldTime() end

---@param DeltaTime number
function USTExtraTrainRouteMovementComponent:BP_PostCppTick(DeltaTime) end

---@param bIsMainRoute boolean
function USTExtraTrainRouteMovementComponent:SetIsMainRoute(bIsMainRoute) end

---@param NewSpeed number
function USTExtraTrainRouteMovementComponent:SetOverrideMaxMoveSpeed(NewSpeed) end

---@param PrevTrans FTransform
function USTExtraTrainRouteMovementComponent:DoHitCheck(PrevTrans) end

---@param LastDamageBoxTrans FTransform
---@param CurDamageBoxTrans FTransform
---@param BoxExtend FVector
---@param Character ASTExtraCharacter
---@param ApplyVelocity FVector
function USTExtraTrainRouteMovementComponent:ApplyCharacterImpulse(LastDamageBoxTrans, CurDamageBoxTrans, BoxExtend, Character, ApplyVelocity) end

---@param LastDamageBoxTrans FTransform
---@param CurDamageBoxTrans FTransform
---@param BoxExtend FVector
---@param Vehicle ASTExtraVehicleBase
---@param ApplyVelocity FVector
function USTExtraTrainRouteMovementComponent:ApplyVehicleImpulse(LastDamageBoxTrans, CurDamageBoxTrans, BoxExtend, Vehicle, ApplyVelocity) end

function USTExtraTrainRouteMovementComponent:ForceStopImmediate() end

---@param HitActor AActor
---@return boolean
function USTExtraTrainRouteMovementComponent:ShouldIgnoreHitCheckActor(HitActor) end

---@param HitActor AActor
function USTExtraTrainRouteMovementComponent:OnDoHitCheckActor(HitActor) end

---@param OldValue FTrainRouteMoveInfo
function USTExtraTrainRouteMovementComponent:OnRep_TrainMoveInfo(OldValue) end

function USTExtraTrainRouteMovementComponent:OnRep_TrainActorList() end

function USTExtraTrainRouteMovementComponent:OnRep_IsCurMainRoute() end

function USTExtraTrainRouteMovementComponent:OnRep_OverrideMaxMoveSpeed() end

---@return boolean
function USTExtraTrainRouteMovementComponent:GetIsAllTrainActorReplicated() end


---@class ATrainRouteSpline: AActor
---@field MainForkStartCrossDistance number
---@field MainForkEndCrossDistance number
---@field bSearchAllSplineSegments boolean
---@field bEditorInitRouteData boolean
---@field bNeedDrawLine boolean
---@field MainRouteTotalLength number
---@field ForkRouteTotalLength number
---@field ForkRouteSelfLength number
---@field MainToForkStartDist number
---@field ForkToMainEndDist number
---@field bForkNeedReverse boolean
local ATrainRouteSpline = {}

function ATrainRouteSpline:InitRouteData() end

---@param Distance number
---@param bIsMainRoute boolean
---@return FVector
function ATrainRouteSpline:GetWorldLocationAtDistanceAlongSpline(Distance, bIsMainRoute) end

---@param bIsMainRoute boolean
---@return number
function ATrainRouteSpline:GetSplineLength(bIsMainRoute) end

---@param WorldLocation FVector
---@param bIsMainRoute boolean
---@return number
function ATrainRouteSpline:GetDistanceAlongSplineClosestToWorldLocation(WorldLocation, bIsMainRoute) end

function ATrainRouteSpline:DrawSplineLine() end
