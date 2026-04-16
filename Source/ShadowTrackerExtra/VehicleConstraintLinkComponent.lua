---@meta

---<马车的连接杆，roll角度要和车厢保持一致，yaw角度由马的方向控制，并且这里都是需要在直接坐标系下
---@class FVehicleConstraintLinkPostPhysxTick
FVehicleConstraintLinkPostPhysxTick = {}


---@class FFollowTrailerVehicleDistToLinearVelFollowStratagy
---@field Distance number
---@field SpeedKMH number
---@field UpAccelerateKMHS number
---@field DownAccelerateKMHS number
---@field DownAccelerateProportion number
FFollowTrailerVehicleDistToLinearVelFollowStratagy = {}


---@class FFollowTrailerVehicleDeltaAngleToAngularVelFollowStratagy
---@field DeltaAngle number
---@field AngularAcceleration number
FFollowTrailerVehicleDeltaAngleToAngularVelFollowStratagy = {}


---@class UVehicleConstraintLinkComponent: USceneComponent
---@field OnlyAutonomousProxyUseConstraint boolean
---@field FollowParent ASTExtraVehicleBase
---@field AngularFollowSpeedThreshold number
---@field FollowXYDistanceThreshold number
---@field TargetFollowSpeed number
---@field lineLength number
---@field PostPhysxComponentTick any
---@field fHookMaxStepValue number
---@field fHookLerpSpeed number
---@field fHookZHeight number
---@field fHookBrakeConstraintsMaxStepValue number
---@field fHookMaxValue number
---@field fCameraArmLength number
---@field bHookLocUseHorseSocket boolean
---@field foldCameraArmLength number
---@field PrevTail FVector
---@field PrevHead FVector
---@field HookGroundNormal FVector
---@field TerrainHit FHitResult
---@field HookDownSpeed number
---@field fHookPitchMax number
---@field fTrailerFrontWheelRaidus number
---@field fHookMaxRaise number
---@field HookPostPhysicsTransform FTransform
---@field bHookUsePhysics boolean
---@field fPhysicsHookLength number
---@field stiffness number
---@field Damping number
---@field FrameRopeLinearConstraintForce FVector
---@field FrameRopeLinearConstraintStrength number
---@field FrameRopeAngularConstraintForce FVector
---@field FrameRopeAngularConstraintStrength number
---@field TrailerVehicleHitImpulse FVector
---@field TrailerVehicleHitImpulseSize number
---@field fMaxPenternLength number
---@field bTrailerStuck boolean
---@field resolveStuckDir FVector
---@field resolveDir FVector
---@field AdjustRotatorCapsuleRadius number
---@field AdjustRotatorCapsuleLength number
---@field VehicleOwnerSize FVector
---@field bUseVehicleSizeCheck boolean
---@field HookMeshUseVehicleOwnerRot boolean
---@field badapterTerrain boolean
---@field PrePhyriscHorseTransform FTransform
---@field PrePhyriscHookMeshTransform FTransform
---@field PrePhyriscVehicleOwnerTransform FTransform
---@field fStuckImpluseSize number
---@field fStuckConstraintForceSize number
---@field UpdateHardLinkHookTransform FTransform
---@field NewImpulseUseRootBoneMass boolean
---@field bUseNewImpulseForDamage boolean
---@field HitIgnoreImpulseThreshold number
---@field StuckLocation FVector
---@field bNeedResolveStuck boolean
---@field bResolveStuckSucceedNeedUpdateVelocity boolean
---@field nNotStuckNums number
---@field fRecCurLinearDrivenStiffess number
---@field fRecCurLinearDrivenDamping number
---@field fRecCurLinearDriveMaxForce number
---@field fRecMaxLinearDrivenStiffess number
---@field fRecMaxLinearDrivenDamping number
---@field fRecMaxLinearDrivenMaxForce number
---@field fRecDrivenTime number
---@field fMinDisWhenStuck number
---@field DistToLinVelFollowStratagy ULuaArrayHelper<FFollowTrailerVehicleDistToLinearVelFollowStratagy>
---@field DeltaAngleToAngVelFollowStratagy ULuaArrayHelper<FFollowTrailerVehicleDeltaAngleToAngularVelFollowStratagy>
---@field ModifyVelocityFollowVehicleCalculatorTemplate UModifyVelocityFollowVehicleCalculator
local UVehicleConstraintLinkComponent = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function UVehicleConstraintLinkComponent:HandleOnVehicleHit(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param HookMesh UStaticMeshComponent
---@param ConstraintLink UPhysicsConstraintComponent
function UVehicleConstraintLinkComponent:SetHookAndConstraint(HookMesh, ConstraintLink) end

---@param Parent ASTExtraVehicleBase
function UVehicleConstraintLinkComponent:ConnectVehicle(Parent) end

function UVehicleConstraintLinkComponent:DisConnect() end

---@return FVector
function UVehicleConstraintLinkComponent:GetHookLocation() end

---@param fDeltaTime number
function UVehicleConstraintLinkComponent:UpdateHardLink(fDeltaTime) end

---@param Dist number
---@return FFollowTrailerVehicleDistToLinearVelFollowStratagy
function UVehicleConstraintLinkComponent:GetLinVelFollowStratagy(Dist) end

---@param DeltaAngle number
---@return FFollowTrailerVehicleDeltaAngleToAngularVelFollowStratagy
function UVehicleConstraintLinkComponent:GetAngVelFollowStratagy(DeltaAngle) end

---@param DeltaTime number
---@param OurLinVel FVector
---@param OurVehicleTrans FTransform
---@param OtherVehiclePostion FVector
---@param TargetFollowSpeed number
---@param FinalLinVel FVector
---@param OurAngVel FVector
---@param FinalAngVelInDegrees FVector
---@return boolean
function UVehicleConstraintLinkComponent:GetFollowVehicleVelocity(DeltaTime, OurLinVel, OurVehicleTrans, OtherVehiclePostion, TargetFollowSpeed, FinalLinVel, OurAngVel, FinalAngVelInDegrees) end

---@return FVector
function UVehicleConstraintLinkComponent:GetFollowVehicleConnectLoc() end

---@param ConnectLoc FVector
---@param ConnectRotator FRotator
function UVehicleConstraintLinkComponent:UpdateVehicleConnectLocAndRotation(ConnectLoc, ConnectRotator) end

---@param ConnectLoc FVector
---@param ConnectRot FRotator
function UVehicleConstraintLinkComponent:GetVehicleConnectLocAndRotation(ConnectLoc, ConnectRot) end

function UVehicleConstraintLinkComponent:ReConnectConstraintSetParam() end

---@param DeltaTime number
function UVehicleConstraintLinkComponent:OnVehicleUpdateFinish(DeltaTime) end

---@param DeltaTime number
function UVehicleConstraintLinkComponent:FollowVehicleAfaterVehicleUpdate(DeltaTime) end
