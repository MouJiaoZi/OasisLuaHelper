---@meta

---@class EVehAnimAssetType
---@field EVehAssetType_Sequence number
---@field EVehAssetType_BlendSpace number
---@field EVehAssetType_Max number
EVehAnimAssetType = {}


---这个是角色在载具上的动画蓝图，千万不要被名字弄混了，holidy起的名字起错了
---@class USTExtraVehicleAnimInstance: USTExtraAnimInstance
---@field CharacterVehAnimList FPlayerVehAnimList
---@field RifleIdle boolean
---@field UseRifleIdleAnim1D boolean
---@field VehAnimParam FAnimVehParamList
---@field bIsMotorbikeDriverLeaningLowSpeed boolean
---@field bIsDriverShouldApplyAdditiveLeaningAnim boolean
---@field MotorbikeDriverLeaningLowSpeedBlendWeights number
---@field MotorbikeDriverLeaningLowSpeedRangeRight number
---@field MotorbikeDriverLeaningLowSpeedRangeLeft number
---@field PassengerVacateHeightScale number
---@field bMotorcycleDriverShouldApplyStopAnim boolean
---@field MotorbikeGroundPitchAlpha number
---@field SpeedThresholds number
---@field IsVehicleAnimLoading boolean
---@field IsDriver boolean
---@field IsAimAdd boolean
---@field IsSeatIdle boolean
---@field HasLeanAnim boolean
---@field IsReload boolean
---@field IsFPPAimValid boolean
---@field IsFPPVehicleAnimInstace boolean
---@field UseNewAimBS boolean
---@field IsMotorcycleDriver boolean
---@field bUseVehicleWeapon boolean
---@field bReloadVehicleWeapon boolean
---@field VehicleWeaponRotator FRotator
---@field bVehicleWeaponAimOffset boolean
---@field C_bVehicleWeaponUseHandIK boolean
---@field C_VehicleWeaponGripLocationL FVector
---@field C_VehicleWeaponGripRotationL FRotator
---@field C_VehicleWeaponGripLocationR FVector
---@field C_VehicleWeaponGripRotationR FRotator
---@field UseVehicleIdleBlendSpaceXY FVector
---@field DriverAnimType EVehAnimAssetType
---@field DriverMoveDir number
---@field NewAimVehViewYaw number
---@field MotorcycleDriverStopAnimBlendWeights number
---@field AddtiveNormalSeatAlpha number
---@field AddtiveNormalSeatIdleAlpha number
---@field IdleAnimBSParam FRotator
---@field IdleAnimBSParam_Yaw number
---@field IdleAnimBSParam_Pitch number
---@field RelativeRot_Yaw number
---@field RelativeRot_Pitch number
---@field DriverUsePistolWithLeftHand number
---@field DriverUsePistolWithOutLeftHand number
---@field LeanOutAnimBSXParam number
---@field IsReloadingOnNarrowSeat boolean
---@field bIsDriverUsePistol boolean
---@field DriverUsePistolAlpha number
---@field DriverUsePistolAlphaReverse number
---@field DriverUsePistolAlphaLerpSpeed number
---@field AimAnimBSParam FRotator
---@field AimAnimBSParamYaw number
---@field AimAnimBSParamPitch number
---@field r_OwnerAimRotation_SUB_VehicleRotation_Yaw FRotator
---@field ShouldTransIdleToAim boolean
---@field ShouldTransIdleToLeanOut boolean
---@field ShouldTransLeanOutToAim boolean
---@field ShouldTransLeanInToIdle boolean
---@field ShouldTransAimToIdle boolean
---@field ShouldTransAimToLeanIn boolean
---@field DriverAnimAsBSParamX number
---@field DriverAnimAsBSParamY number
---@field bIsFreshWeaponStateTypePreFire boolean
---@field IsVehicleMotorbike boolean
---@field IsVehicleMotorbikeAnimLoaded boolean
---@field bIsUseVehicleMotorbikeAnim boolean
---@field VacateHight number
---@field MotorPassengerVacateHeight number
---@field LastRotator FRotator
---@field VehicleMoveVelocity FVector
---@field DriverAniTimer number
---@field SnowboardSlopeAdpatLen number
---@field bIsSnowBoard boolean
---@field RootSocketYaw FRotator
---@field RootTranslationZOffest FVector
---@field LeftFootSocketLocation FVector
---@field LeftFootSocketRotation FRotator
---@field RightFootSocketLocation FVector
---@field RightFootSocketRotation FRotator
---@field CharacterSpeed number
---@field bIsSkiJumping boolean
---@field bIsSkiLowJumping boolean
---@field bIsSkiFalling boolean
---@field bIsSkiLanding boolean
---@field bIsSkiPlayingLandAnimEnd boolean
---@field bIsSkiPlayingJumpAnimEnd boolean
---@field SkiBlendSpaceXInput number
---@field SkiBlendSpaceYInput number
---@field SkiFallingBSInput number
---@field SkiBlendSpaceXInputLerpSpeed number
---@field SkiBlendSpaceYInputLerpSpeed number
---@field SkiPlayJumpAnimRate number
---@field SkiPlayJumpAnimRateMin number
---@field SkiPlayJumpAnimRateMax number
---@field SkiJumpStationaryRiseRate number
---@field SkiDownTurnLRRate number
---@field SkiDownTurnRLRate number
---@field SkiDownTurnFDRate number
---@field bIsDisableSkiSlopAdapt boolean
---@field DisableSkiSlopeAdaptReMainTime number
---@field AdaptSkiSlopeSpeed number
---@field SkiIKSlopBlendRate number
---@field SkiIKSlopBlendRateSpeed number
---@field MotorgliderSteerPitchAlpha number
---@field MotorgliderSteerRollAlpha number
---@field bIsMotorglider boolean
---@field bIsExtraMount boolean
---@field C_MoveDirExt FVector
---@field C_IsFPPMode boolean
---@field bIsTanabataBalloon boolean
---@field bIsAnimGenderFemale boolean
---@field bIsCP boolean
---@field bIsSurfboardDriver boolean
---@field DriveForwardAccumTime number
---@field DriveForwardFramePos number
---@field C_PlayDriveForwardAnim boolean
---@field AssistantForwardAccumTime number
---@field AssistantForwardFramePos number
---@field C_PlayAssistantForwardAnim boolean
---@field bEnableHandIK boolean
---@field LeftHandeIKName string
---@field RightHandeIKName string
---@field LeftHandeIKLoc FVector
---@field LeftHandeIKRot FRotator
---@field RightHandeIKLoc FVector
---@field RightHandeIKRot FRotator
---@field VehicleParam any
local USTExtraVehicleAnimInstance = {}

---@return boolean
function USTExtraVehicleAnimInstance:GetIsFPPNeedUpdate() end

---判断是否应该处理武器状态变化 默认实现：NewFPP复用TPP的载具动画逻辑时不处理武器状态 蓝图可以重写此方法来自定义判断逻辑
---@return boolean
function USTExtraVehicleAnimInstance:ShouldHandleWeaponStateChanged() end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleAnimInstance:OnOwnerAttachedToVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleAnimInstance:OnOwnerDetachFromVehicle(InVehicle) end

---@param EventMsg string
function USTExtraVehicleAnimInstance:HandleOwnerAnimEvent(EventMsg) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function USTExtraVehicleAnimInstance:PreOwnerAttachedToVehicle(InVehicle, SeatType) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function USTExtraVehicleAnimInstance:PreAttachToVehicle(InVehicle, SeatType) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param LeavePos FVector
function USTExtraVehicleAnimInstance:PreOwnerDetachFromVehicle(InVehicle, SeatType, LeavePos) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param LeavePos FVector
function USTExtraVehicleAnimInstance:PreDetachFromVehicle(InVehicle, SeatType, LeavePos) end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleAnimInstance:OnAttachToVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleAnimInstance:OnDetachFromVehicle(InVehicle) end

---@param InVeh ASTExtraVehicleBase
---@param IsAttach boolean
function USTExtraVehicleAnimInstance:InitFromVehicleImpl(InVeh, IsAttach) end

function USTExtraVehicleAnimInstance:OnOwnerChangeSeatFromVehicle() end

---@param InVehicle ASTExtraVehicleBase
function USTExtraVehicleAnimInstance:OnChangeSeatFromVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@param Player ASTExtraPlayerCharacter
---@param LeavePos FVector
function USTExtraVehicleAnimInstance:ExitVehicleAnimEvent(InVehicle, Player, LeavePos) end

---@param InVehicle ASTExtraVehicleBase
---@param LeavePos FVector
function USTExtraVehicleAnimInstance:ExitVehicleAnim(InVehicle, LeavePos) end

function USTExtraVehicleAnimInstance:PlayEnterMontage() end

---@param MontageToPlay UAnimMontage
---@param InPlayRate number
---@param ReturnValueType EMontagePlayReturnType
---@param InTimeToStartMontageAt number
---@return number
function USTExtraVehicleAnimInstance:Montage_Play(MontageToPlay, InPlayRate, ReturnValueType, InTimeToStartMontageAt) end

---@param NewState EFreshWeaponStateType
function USTExtraVehicleAnimInstance:HandleVehicleWeaponStateChanged(NewState) end

---@param DeltaSeconds number
function USTExtraVehicleAnimInstance:TrackVehUpdate(DeltaSeconds) end
