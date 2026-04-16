---@meta

---@class FRacingVelocityHeightInfo
---@field HorizonSpeed number
---@field VerticalSpeed number
---@field OffsetHeight number
FRacingVelocityHeightInfo = {}


---@class FRacingTrackState
---@field bIsMoving boolean
---@field bIsStopping boolean
---@field LocSplineDist number
---@field ServerRefreshTime number
---@field VelHetInfo FRacingVelocityHeightInfo
FRacingTrackState = {}


---@class ASTExtraRacingTrackBBCar: ASTExtraVehicleBase
---@field RacingSpeed number
---@field StartRacingAccelerate number
---@field MaxAddHorizonSpeed number
---@field StopRacingSlowDownTime number
---@field StopRacingSlowDownGapTime number
---@field ServerSyncInfoInterval number
---@field GravityValue number
---@field bApplyVehicleSpeedWhileNoFuelExit boolean
---@field bApplyVehicleSpeedWhileDestroyed boolean
---@field DamageVehicleDelayDestroyTime number
---@field ExitVehicleDelayDestroyTime number
---@field PlayDustEffectSpeed number
---@field EngineSoundSpeedScale number
---@field RoadMeshHitTag string
---@field RoadMeshHitDistThreshold number
---@field bSumExtraHorizonSpeedAndTime boolean
---@field bAutoStartAfterDriverEnter boolean
---@field OutOfFuelTipsID number
---@field bEnableBlueprintPostCppTick boolean
---@field bEnableBlueprintPostPhysicsTick boolean
---@field bEnableBlueprintOnRepRacingTrackState boolean
---@field bForceSetLocVelInPostPhysicsTick boolean
---@field UseOnRepData_TimeThreshold number
---@field UseOnRepData_DistThreshold number
---@field bEnableTrackOverpassLimitHeight boolean
---@field bDisableEnterAfterLaunch boolean
---@field bDisableEnterAfterStop boolean
---@field bDisableEnterNoFuel boolean
---@field ToggleBGMProtectTime number
---@field GroundJumpCD number
---@field GroundJumpSpeed number
---@field MaxSeatPitchAngle number
---@field SeatPitchSign number
---@field BallWheelRadius number
---@field WheelRotationScale number
---@field TrackSplineTotalLength number
---@field RacingTrackState FRacingTrackState
---@field OverpassHetLimitList ULuaArrayHelper<FTrackOverpassHeightLimitInfo>
---@field CurGroundJumpCD number
---@field RemainSlowDownTime number
---@field RemainSlowDownHorizonSpeed number
---@field bCurNeedPlayBGM boolean
---@field LastTogglePlayBGMTime number
---@field PrevSplineDist number
---@field CurSplineDist number
---@field CurVelHetInfo FRacingVelocityHeightInfo
---@field ExtraHorizonSpeed number
---@field ExtraHorizonSpeedRemainTime number
---@field FrameMoveTime number
---@field LastServerSyncTime number
---@field CurWheelPitchAngle number
---@field FinalForwardSpeed number
---@field bHasStopped boolean
---@field bHasSetTargetLocVel boolean
---@field FrameTargetLoc FVector
---@field FrameTargetRot FRotator
---@field FrameTargetVel FVector
---@field RepPrev_SplineDist number
---@field RepPrev_VelHetInfo FRacingVelocityHeightInfo
---@field RacingBGMLoop FSTExtraVehicleSfxLoop
---@field bServerNeedCheckDriver boolean
---@field bHasPlayedBGM boolean
---@field IDIP_RacingBBCar_HP number
---@field IDIP_RacingBBCar_FuelMax number
---@field IDIP_RacingBBCar_InitFuel number
---@field IDIP_RacingBBCar_FuelFactor number
---@field IDIP_RacingBBCar_RacingSpeed number
---@field IDIP_RacingBBCar_StartAcc number
---@field IDIP_MaxAddHorizonSpeed number
---@field IDIP_RacingBBCar_JumpCostEnergy number
---@field IDIP_RacingBBCar_EachRecoverEnergy number
---@field IDIP_RacingBBCar_JumpUpVel number
local ASTExtraRacingTrackBBCar = {}

---@return number
function ASTExtraRacingTrackBBCar:GetForwardSpeed() end

function ASTExtraRacingTrackBBCar:PostCppTick() end

function ASTExtraRacingTrackBBCar:NotifyServerStartRace() end

function ASTExtraRacingTrackBBCar:OnServerStartRace() end

function ASTExtraRacingTrackBBCar:OnServerStop() end

function ASTExtraRacingTrackBBCar:PrepareStop() end

---@return number
function ASTExtraRacingTrackBBCar:GetServerTime() end

---@param WorldLoc FVector
---@return number
function ASTExtraRacingTrackBBCar:GetClosestSplineDist(WorldLoc) end

---@param AddSpeed number
---@param DurationTime number
function ASTExtraRacingTrackBBCar:NotifyAllAddHorizonSpeed(AddSpeed, DurationTime) end

---@param AddSpeed number
---@param DurationTime number
function ASTExtraRacingTrackBBCar:BP_OnAddHorizonSpeed(AddSpeed, DurationTime) end

---@param ExitReason string
---@param bApplyVehicleVelocity boolean
function ASTExtraRacingTrackBBCar:ForceExitAllPlayer(ExitReason, bApplyVehicleVelocity) end

---@param InVehicleHealthState ESTExtraVehicleHealthState
function ASTExtraRacingTrackBBCar:HandleOnVehicleHealthStateChanged(InVehicleHealthState) end

---@param LandVerticalSpeed number
function ASTExtraRacingTrackBBCar:OnLandGround(LandVerticalSpeed) end

function ASTExtraRacingTrackBBCar:ReqServerGroundJump() end

function ASTExtraRacingTrackBBCar:RspGroundJump() end

function ASTExtraRacingTrackBBCar:GroundJumpInternal() end

function ASTExtraRacingTrackBBCar:OnGroundJump() end

---@param VerticalSpeed number
---@param bIsRecover boolean
function ASTExtraRacingTrackBBCar:AddVerticalSpeed(VerticalSpeed, bIsRecover) end

---@param ExitReason string
---@param bApplyVehicleVelocity boolean
---@param DelayDestroyTime number
function ASTExtraRacingTrackBBCar:ForceExitAllPlayerAndDestroyVehicle(ExitReason, bApplyVehicleVelocity, DelayDestroyTime) end

function ASTExtraRacingTrackBBCar:UpdateEffect() end

---@param DeltaTime number
function ASTExtraRacingTrackBBCar:UpdateAnimation(DeltaTime) end

function ASTExtraRacingTrackBBCar:AfterSetRoadTraceSpline() end

function ASTExtraRacingTrackBBCar:GetTrackOverpassLimitInfo() end

function ASTExtraRacingTrackBBCar:NotifyServerToggleBGM() end

function ASTExtraRacingTrackBBCar:TogglePlayBGM() end

---@param NewTransform FTransform
function ASTExtraRacingTrackBBCar:ForceSetRigidBodyTransform(NewTransform) end

---@param NewVel FVector
function ASTExtraRacingTrackBBCar:ForceSetPhysicsLinearVelocity(NewVel) end

---@param DeltaTime number
function ASTExtraRacingTrackBBCar:BP_OnPostPhysicsTick(DeltaTime) end

---@param OtherCar ASTExtraRacingTrackBBCar
function ASTExtraRacingTrackBBCar:OnHitOtherRacingBBCar(OtherCar) end

---@param HitResult FHitResult
function ASTExtraRacingTrackBBCar:OnHitOtherResult(HitResult) end

---@param IgnoreActor AActor
function ASTExtraRacingTrackBBCar:SetPhysicsIgnoreActor(IgnoreActor) end

function ASTExtraRacingTrackBBCar:ChangeBodyFilter() end

---@param DistA number
---@param DistB number
---@return number
function ASTExtraRacingTrackBBCar:GetDeltaDist(DistA, DistB) end

---@param OverpassHeightLimitInfo FTrackOverpassHeightLimitInfo
---@param TargetDist number
---@param Height number
---@return number
function ASTExtraRacingTrackBBCar:GetTrackOverpassTargetHeight(OverpassHeightLimitInfo, TargetDist, Height) end

---@param DeltaTime number
function ASTExtraRacingTrackBBCar:PlayRacingBGM(DeltaTime) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraRacingTrackBBCar:HandlePlayerEnterVehicleOnServer(Player, SeatType, IsSucc) end

function ASTExtraRacingTrackBBCar:OnServerOutOfFuel() end

---@param SplineComp USplineComponent
function ASTExtraRacingTrackBBCar:SetRoadTraceSpline(SplineComp) end

---@param NewValue number
function ASTExtraRacingTrackBBCar:ModifyRacingSpeed(NewValue) end

---@param InValue FRacingTrackState
function ASTExtraRacingTrackBBCar:SetRacingTrackStateValue(InValue) end

function ASTExtraRacingTrackBBCar:OnRep_RoadTrackSpline() end

function ASTExtraRacingTrackBBCar:BP_OnRep_RoadTrackSpline() end

function ASTExtraRacingTrackBBCar:OnRep_RacingTrackState() end

function ASTExtraRacingTrackBBCar:BP_OnRep_RacingTrackState() end

function ASTExtraRacingTrackBBCar:OnRep_OverpassHetLimitList() end

function ASTExtraRacingTrackBBCar:BP_OnRep_OverpassHetLimitList() end

---@param NewJumpCostEnergy number
function ASTExtraRacingTrackBBCar:SetIDIP_JumpCostEnergy(NewJumpCostEnergy) end

function ASTExtraRacingTrackBBCar:OnRep_IDIPJumpCostEnergy() end

---@param NewEachRecoverEnergy number
function ASTExtraRacingTrackBBCar:SetIDIP_EachRecoverEnergy(NewEachRecoverEnergy) end

function ASTExtraRacingTrackBBCar:OnRep_IDIPEachRecoverEnergy() end

---@param NewJumpUpVel number
function ASTExtraRacingTrackBBCar:SetIDIP_JumpUpVel(NewJumpUpVel) end

function ASTExtraRacingTrackBBCar:OnRep_IDIPJumpUpVel() end
