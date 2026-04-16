---@meta

---@class FVehicleRigidBodyErrorCorrection
---@field VehicleLinearDeltaThresholdSq number @max squared position difference to perform velocity adjustment
---@field VehicleLinearInterpAlpha number @strength of snapping to desired linear velocity
---@field VehicleLinearRecipFixTime number @inverted duration after which linear velocity adjustment will fix error
---@field VehicleAngularDeltaThreshold number @max squared angle difference (in radians) to perform velocity adjustment
---@field VehicleAngularInterpAlpha number @strength of snapping to desired angular velocity
---@field VehicleAngularRecipFixTime number @inverted duration after which angular velocity adjustment will fix error
---@field VehicleBodySpeedThresholdSq number @min squared body speed to perform velocity adjustment
FVehicleRigidBodyErrorCorrection = {}


---@class FVehicleUseTimeWarnConfig
---@field WarnTime number
---@field WarnTips number
FVehicleUseTimeWarnConfig = {}


---@class ASTExtraAerofoilPlaneVehicle: ASTExtraWheeledVehicle
---@field ThrottleInput number
---@field RollInput number
---@field YawInput number
---@field PitchInput number
---@field NoFuelTipsDisplayCooldown number
---@field NoFuelTipsDisplayTime number
---@field bUIThrottleInput boolean
---@field HighSpeedThreshold number
---@field PropellerBone string
---@field PropellerEffect string
---@field PitchEffect string
---@field RollEffect string
---@field L_wingExplosionEffect string
---@field R_wingExplosionEffect string
---@field EngineExplosionEffect string
---@field L_wingExplosionEffect_static string
---@field R_wingExplosionEffect_static string
---@field EngineExplosionEffect_static string
---@field SpeedInKmPlayStaticPartExplosionEffect number
---@field ShowEffectDiffThreshold number
---@field MinShowEffectDisToLand number
---@field RollChange boolean
---@field YawChange boolean
---@field PitchChange boolean
---@field CurCameraPitch number
---@field DefaultPitchOffset number
---@field SpeedInKmCanApplyCameraEffect number
---@field HeightCanApplyCameraEffect number
---@field MaxCameraPitch number
---@field MinCameraPitch number
---@field PitchCameraSetting FInputInterpSetting
---@field MaxCameraYaw number
---@field CurCameraYaw number
---@field YawCameraSetting FInputInterpSetting
---@field RollCameraSetting FInputInterpSetting
---@field MaxCameraRoll number
---@field CurCameraRot FRotator
---@field CurTargetOffset FVector
---@field CurCameraRoll number
---@field ForwardSpeedToRotSpeed number
---@field JetCameraConfig FCameraOffsetData
---@field MaxSpringArmLength number
---@field NormalSpringArmLength number
---@field ScreenLine string
---@field ValidShowScreenLineAngel number
---@field ScreenLineCenterOffset FVector
---@field ScreenForwardLength number
---@field CameraInputSizeToResetTargetOffset number
---@field CameraInputTargetInterpSpeed number
---@field CameraInputTargetInterpThreshold number
---@field bCameraInputCorrectToOriginal boolean
---@field MaxYawFireBtnInput number
---@field MaxPitchFireBtnInput number
---@field MaxTotalYawFireBtnInput number
---@field MaxTotalPitchFireBtnInput number
---@field TickEffectAndAudioTimer number
---@field TickEffectAndAudioInterval number
---@field bEnablePostTickScreenLine boolean
---@field bOnPressFireBtn boolean
---@field TotalFireRotPressInput FRotator
---@field bLastCameraFireState boolean
---@field FireBtnInput FVector
---@field FireInputScaleFactor number
---@field DriverAimTraceProfileName string
---@field DriverAimTargetMaxDist number
---@field DriverAimTargetMinDist number
---@field DriverAimTargetLoc FVector
---@field bHasDriverAimTargetLoc boolean
---@field SpeedToMotorRPM FVector4
---@field RollDegreeCanPlayRollAudioEvent number
---@field bPlayStopRollAudioEvent boolean
---@field WingSfxLoop FSTExtraVehicleSfxLoop
---@field RollEventSfxLoop FSTExtraVehicleSfxLoop
---@field EngineDestroyOnHitSpeed number
---@field EngineDestroyOnHitThreshold number
---@field EnginePowerOffOnHitThreshold number
---@field VehicleEnginePartIndex number
---@field LWingPartIndex number
---@field RWingPartIndex number
---@field EngineDestroyToPowerEfficiency number
---@field bEnableClearRPM boolean
---@field VehicleSpringArmString string
---@field ZeroInputConsumeFuelFactor number
---@field bUsePreSimulateReplicatedMovement boolean
---@field bUseUseVehiclePhysicErrorCorrection boolean
---@field VehicleErrorCorrection FVehicleRigidBodyErrorCorrection
---@field LastReceiveReplicatedMovementTime number
---@field LerpReplicatedTime number
---@field LastReplicatedMovement FRepMovement
---@field PreSimulRotationDampFactor number
---@field SmartCameraInput FRotator
---@field FreeCameraInput FRotator
---@field CurSmartCameraInput FRotator
---@field CurFreeCameraInput FRotator
---@field LerpSmartCameraInputSpeed number
---@field LerpFreeSmartCameraInputSpeed number
---@field FireControlStateCheckThreshold number
---@field CheckPhysicsSyncType number
---@field FastBackSmartCameraTimer number
---@field DefaultBackSmartCameraTime number
---@field FastBackSmartCameraTimerSpeedThreshold number
---@field FastBackSmartCameraTimerDisToLand number
---@field VehicleUseTimeWarnList ULuaArrayHelper<FVehicleUseTimeWarnConfig>
---@field AlreadyVehicleUseTimeWarnIdx number
---@field AntiCheatVehicleSpeed number
---@field AntiCheatVehicleAltitude number
local ASTExtraAerofoilPlaneVehicle = {}

function ASTExtraAerofoilPlaneVehicle:ClearAllInputState() end

---@param NewValue number
---@param bFromUI boolean
function ASTExtraAerofoilPlaneVehicle:SetThrottleInput(NewValue, bFromUI) end

---@param NewValue number
function ASTExtraAerofoilPlaneVehicle:SetRollInput(NewValue) end

---@param NewValue number
function ASTExtraAerofoilPlaneVehicle:SetPitchInput(NewValue) end

---@param NewValue number
function ASTExtraAerofoilPlaneVehicle:SetYawInput(NewValue) end

---@return boolean
function ASTExtraAerofoilPlaneVehicle:IsEasyMode() end

---@param DeltaTime number
function ASTExtraAerofoilPlaneVehicle:UpdateFireControl(DeltaTime) end

---@param DeltaTime number
function ASTExtraAerofoilPlaneVehicle:UpdateAerofoilEffects(DeltaTime) end

---@param DeltaTime number
function ASTExtraAerofoilPlaneVehicle:UpdateSmartCamera(DeltaTime) end

function ASTExtraAerofoilPlaneVehicle:UpdateScreenLine() end

---@param Yaw number
---@param Pitch number
function ASTExtraAerofoilPlaneVehicle:OnTouchMoveEvent(Yaw, Pitch) end

function ASTExtraAerofoilPlaneVehicle:CheckDriverAimTargetLoc() end

---@param DeltaTime number
function ASTExtraAerofoilPlaneVehicle:UpdateAerofoilVehicleAudio(DeltaTime) end

function ASTExtraAerofoilPlaneVehicle:OnJetHitEngineHeadCollision() end

---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraAerofoilPlaneVehicle:SendJetHitEngineHead(OtherActor, NormalImpulse, Hit) end

---@param DeltaTime number
function ASTExtraAerofoilPlaneVehicle:AfterAerofoilTick(DeltaTime) end

function ASTExtraAerofoilPlaneVehicle:SpeedUpPress() end

function ASTExtraAerofoilPlaneVehicle:SpeedUpRelease() end

function ASTExtraAerofoilPlaneVehicle:SpeedDownPress() end

function ASTExtraAerofoilPlaneVehicle:SpeedDownRelease() end

function ASTExtraAerofoilPlaneVehicle:SpeedYawQPress() end

function ASTExtraAerofoilPlaneVehicle:SpeedYawQRelease() end

function ASTExtraAerofoilPlaneVehicle:SpeedYawEPress() end

function ASTExtraAerofoilPlaneVehicle:SpeedYawERelease() end

function ASTExtraAerofoilPlaneVehicle:ProcessPostNetReceivePhysicsState() end

---@return boolean
function ASTExtraAerofoilPlaneVehicle:HaveVehicleInputEvent() end

---@return boolean
function ASTExtraAerofoilPlaneVehicle:CheckEasyMode() end

function ASTExtraAerofoilPlaneVehicle:OnRep_SmartCameraInput() end

function ASTExtraAerofoilPlaneVehicle:OnRep_FreeCameraInput() end

---@param Input FRotator
---@param bFreeCamera boolean
function ASTExtraAerofoilPlaneVehicle:SyncSmartCameraInput(Input, bFreeCamera) end

---@param Input FRotator
---@param bFreeCamera boolean
function ASTExtraAerofoilPlaneVehicle:SyncSmartCameraInputUnReliable(Input, bFreeCamera) end

---@param DeltaTime number
function ASTExtraAerofoilPlaneVehicle:TickOBSmartCamearInputEvent(DeltaTime) end

---@return FRotator
function ASTExtraAerofoilPlaneVehicle:GetObSmartCamera() end

---@return FRotator
function ASTExtraAerofoilPlaneVehicle:GetObFreeCamera() end

---@param Loc FVector
---@param Rot FRotator
---@param LinVel FVector
---@param AngVel FVector
function ASTExtraAerofoilPlaneVehicle:CustomPostNetReceivePhysicState(Loc, Rot, LinVel, AngVel) end

---@return FRotator
function ASTExtraAerofoilPlaneVehicle:GetFireTargetRot() end

---@return boolean
function ASTExtraAerofoilPlaneVehicle:InFireControlToPlayAnim() end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraAerofoilPlaneVehicle:OnPlaneHit(SelfActor, OtherActor, NormalImpulse, Hit) end
