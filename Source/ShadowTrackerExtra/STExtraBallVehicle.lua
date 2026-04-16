---@meta

---@class ASTExtraBallVehicle: ASTExtraVehicleBase
---@field bAmphibiousBall boolean
---@field bAmphibiousBallUseBallMovementUpdateAnim boolean
---@field bNeedShowWaterEffect boolean
---@field InWaterMoveEffectName string
---@field InWaterMoveEffectScaleParam string
---@field WaterEffectVelocityRange FVector2D
---@field WaterEffectScaleRange FVector2D
---@field WaterEffectScalingSpeed number
---@field bCanBoostJumpInWater boolean
---@field bAirCompCheckRelativeWaterAltitude boolean
---@field bEnableBlueprintPostCppTick boolean
---@field InWaterSfxLoop FSTExtraVehicleSfxLoop
---@field bRecoverCharacterHP boolean
---@field fRecoverHPTimer number
---@field fRecoverHP number
---@field fRecoverHPTime number
---@field SeatRotUseVelocityRot boolean
---@field BoostImpulse FVector
---@field BoostCD number
---@field BoostCDTimer number
---@field BallRadius number
---@field PlayDustEffectVelSqr number
---@field PlayLandEffectNormalZ number
---@field PlayLandEffectImpulse number
---@field bShowDamagedEffect boolean
---@field ExplodeEffectName string
---@field bDeleteDestroyedVehicle boolean
---@field DeleteVehicleDuration number
---@field CanVehicleApplyImpulseToHitPlayer boolean
---@field ApplyImpulseSpeed number
---@field DetectHitPlayerInterval number
---@field PlayerObjectTypes ULuaArrayHelper<EObjectTypeQuery>
---@field VehicleHitPlayerCD number
---@field DetectBallRadius number
---@field PushCharacterStrength number
---@field PushCharacterUpStrength number
---@field CacheBodyCOM FVector
---@field bAddBufferWhenExplode boolean
---@field CharacterBuffNameWhenExplode string
---@field bDsUpdateAnimationParams boolean
---@field bUseControlLookRotationYaw boolean
---@field bNeedUpdateBBCarIDIPParam boolean
---@field bEnableTipsAfterExpireTime boolean
---@field ExpireEnterNotifyTime number
---@field ExpireEnterNotifyID number
---@field ExpiredTimeList ULuaArrayHelper<FVehicleExpiredTimeTipsConfig>
---@field bEnableTraceHit boolean
---@field bIgnoreTraceHitOnMoveBase boolean
---@field TraceHitSphereRadius number
---@field TraceHitSpeedThreshold number
---@field TraceHitUseChannel ECollisionChannel
---@field LastOverlapPlayerTickKey ULuaArrayHelper<AActor>
---@field HitPlayerCDMap ULuaMapHelper<AActor, number> @载具对怪物伤害cd 冷却
---@field PhysicsBallRotation FRotator
---@field CacheAnimVelocity FVector
---@field CacheAnimVelocityMinSpeed number
---@field fSeatRotChangeSpeed number
---@field bCurrentInWater boolean
---@field bHasPlayedWaterSlideSound boolean
---@field bCurWaterEffectEnabled boolean
---@field CurWaterEffectScaleValue number
---@field LastCheckExpiredTime number
---@field LastTraceHitLoc FVector
---@field IDIP_BBCar_HP number
---@field IDIP_BBCar_FuelMax number
---@field IDIP_BBCar_InitFuel number
---@field IDIP_BBCar_FuelFactor number
---@field IDIP_BBCar_JumpCostEnergy number
---@field IDIP_BBCar_EachRecoverEnergy number
---@field IDIP_BBCar_LowEnergyThreshold number
---@field IDIP_BBCar_JumpUpVel number
---@field IDIP_BBCar_JumpMaxHorizonVel number
---@field IDIP_BBCar_JumpHorizonVel number
---@field IDIP_BBCar_WaterMaxHorizonVel number
local ASTExtraBallVehicle = {}

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraBallVehicle:OnHitOther(SelfActor, OtherActor, NormalImpulse, Hit) end

function ASTExtraBallVehicle:ReqServerBoostJump() end

function ASTExtraBallVehicle:RspBoostJump() end

function ASTExtraBallVehicle:OnBoostJump() end

---@return number
function ASTExtraBallVehicle:GetForwardSpeed() end

---@return FVector
function ASTExtraBallVehicle:GetRotationInputDir() end

---@param DeltaTime number
function ASTExtraBallVehicle:UpdateEffect(DeltaTime) end

---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraBallVehicle:OnPlayLandEffect(OtherActor, NormalImpulse, Hit) end

---@return boolean
function ASTExtraBallVehicle:IsInServerAuthorizeNewInternal() end

---小球载具损毁时隐藏并删除载具
---@param InVehicleHealthState ESTExtraVehicleHealthState
function ASTExtraBallVehicle:HandleOnVehicleHealthStateChanged(InVehicleHealthState) end

---@return string
function ASTExtraBallVehicle:GetMovementInfoStr() end

---获取球载具的中心
---@return FVector
function ASTExtraBallVehicle:GetVehicleCOMLocation() end

---[Server]小球加速
---@return boolean
function ASTExtraBallVehicle:BallVehicleAcceleration() end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBallVehicle:OnPlayerExitVehicleServer(Character, SeatType, IsSucc) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBallVehicle:OnPlayerExitVehicleClient(Character, SeatType, IsSucc) end

---@param bIsEntryWater boolean
---@param CurrentVel FVector
function ASTExtraBallVehicle:BP_OnEntryOrExitWater(bIsEntryWater, CurrentVel) end

---@param DeltaTime number
function ASTExtraBallVehicle:PostCppTick(DeltaTime) end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraBallVehicle:HandlePlayerEnterVehicleOnServer(Player, SeatType, IsSucc) end

---@return number
function ASTExtraBallVehicle:GetGameDurationTime() end

---广播弹开角色
---@param InPlayer ASTExtraBaseCharacter
---@param InHitVelocity FVector
function ASTExtraBallVehicle:AddPlayerImpulse(InPlayer, InHitVelocity) end

---更新载具动画蓝图的参数
---@param fDeltaTime number
function ASTExtraBallVehicle:UpdateVehicleAnimationParams(fDeltaTime) end

---@param NewJumpCostEnergy number
function ASTExtraBallVehicle:SetIDIP_JumpCostEnergy(NewJumpCostEnergy) end

function ASTExtraBallVehicle:OnRep_IDIPJumpCostEnergy() end

---@param NewEachRecoverEnergy number
function ASTExtraBallVehicle:SetIDIP_EachRecoverEnergy(NewEachRecoverEnergy) end

function ASTExtraBallVehicle:OnRep_IDIPEachRecoverEnergy() end

---@param NewLowEnergyThreshold number
function ASTExtraBallVehicle:SetIDIP_LowEnergyThreshold(NewLowEnergyThreshold) end

function ASTExtraBallVehicle:OnRep_IDIPLowEnergyThreshold() end

---@param NewJumpUpVel number
function ASTExtraBallVehicle:SetIDIP_JumpUpVel(NewJumpUpVel) end

function ASTExtraBallVehicle:OnRep_IDIPJumpUpVel() end

---@param NewJumpMaxHorizonVel number
function ASTExtraBallVehicle:SetIDIP_JumpMaxHorizonVel(NewJumpMaxHorizonVel) end

function ASTExtraBallVehicle:OnRep_IDIPJumpMaxHorizonVel() end

---@param NewJumpHorizonVel number
function ASTExtraBallVehicle:SetIDIP_JumpHorizonVel(NewJumpHorizonVel) end

function ASTExtraBallVehicle:OnRep_IDIPJumpHorizonVel() end

---@param NewWaterMaxHorizonVel number
function ASTExtraBallVehicle:SetIDIP_WaterMaxHorizonVel(NewWaterMaxHorizonVel) end

function ASTExtraBallVehicle:OnRep_IDIPWaterMaxHorizonVel() end
