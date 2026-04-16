---@meta

---@class FUAVTorqueCurveFloat
---@field CurveTime number
FUAVTorqueCurveFloat = {}


---@class ASTExtraUAVVehicle: ASTExtraUAVVehicleBase
---@field ForWardTorqueCurveList ULuaArrayHelper<FUAVTorqueCurveFloat>
---@field RightTorqueCurveList ULuaArrayHelper<FUAVTorqueCurveFloat>
---@field IdleForwardCountTime number
---@field IdleRightCountTime number
---@field ArrowEffectName string
---@field NormalGreenLightEffectName string
---@field RecallingGreenLightEffectName string
---@field NormalRedLightEffectName string
---@field RecallingRedLightEffectName string
---@field TopWingsEffectName string
---@field lstTopWingsBoneName ULuaArrayHelper<string>
---@field CrashHeight number
---@field OnLandHeight number
---@field IdleSpeed number
---@field WingAccelerateMaxTime number
---@field showWaterPlaneffectHeight number
---@field WaterPlaneffectHeigh number
---@field bEnableDisableCollision boolean
---@field UAVRTPCInputParamName string
---@field UAVRTPCBattleInputParamName string
---@field UAVRTPCParamName string
---@field UseBattleFieldAKID boolean
---@field UsePureVelocity boolean
---@field uavSfxLoop FSTExtraVehicleSfxLoop
---@field bUpdateEngineSfxUseVelocity boolean
---@field bCanHavePlayerInput boolean
---@field CrashMinSin number
---@field NoFuelJumpHeight number
---@field bNeedUpdateLightEffect boolean
---@field OpenGravityDelayTime number @玩家进入区域多久开重力, feishen, 20190810
---@field UAVSpeedPercent number
---@field LinearDampingMax number
---@field LinearDampingMin number
---@field AngularDampingMax number
---@field AngularDampingMin number
---@field DisappearingFlyUpSpeed number
---@field bCheckDistanceToLand boolean
---@field fCheckDistanceToLandInterval number
---@field bUseApplyRigidBodyState boolean
---@field bCheckDistanceToLandInAutonomousProxy boolean
---@field MaxDistanceDiffLandToResetPos number
---@field bUAVVehicle boolean
---@field bUseBaseTickEnterSphereVehicleBackpack boolean
---@field CheckBrokenWindowMoveThreshold number
---@field CheckBrokenWindowSphereRadius number
---@field CheckBrokenBoxExtent FVector
---@field CheckBrokenBoxOffset FVector
---@field bAlwaysCheckBrokenWindow boolean
---@field bEnableBrokenWindow boolean
---@field LastMarkEnemyList ULuaArrayHelper<ASTExtraBaseCharacter>
---@field CheckEnemyRadius number
---@field CheckCameraFOV number
---@field bUseViewForwardCheckEnemy boolean
---@field LastViewRot FRotator
---@field CheckEnemyInterval number
---@field CheckEnemyTimer number
---@field bEnableCheckEnemy boolean
local ASTExtraUAVVehicle = {}

function ASTExtraUAVVehicle:PowerOff_Destroy() end

function ASTExtraUAVVehicle:OnRep_CanHavePlayerInput() end

---@param bNewValue boolean
function ASTExtraUAVVehicle:SetHavePlayerInput(bNewValue) end

---@return FVector
function ASTExtraUAVVehicle:GetRotationInputDir() end

---@return number
function ASTExtraUAVVehicle:GetDisToLand() end

function ASTExtraUAVVehicle:UpdateLightEffect() end

---@param SpeedPercent number
function ASTExtraUAVVehicle:SendToServerChangeSpeedPercent(SpeedPercent) end

---@param SpeedPercent number
function ASTExtraUAVVehicle:SendToAllChangeSpeedPercent(SpeedPercent) end

function ASTExtraUAVVehicle:OnUAVVehicleInitState() end

---@param DeltaTime number
function ASTExtraUAVVehicle:CheckDistanceToLandResetPos(DeltaTime) end

function ASTExtraUAVVehicle:OnEnterUAVDisappearingStateOnDS() end

function ASTExtraUAVVehicle:OnUAVDisappearingStateFinishOnDS() end

function ASTExtraUAVVehicle:EnableBackPack() end

function ASTExtraUAVVehicle:DisableBackPack() end

function ASTExtraUAVVehicle:CheckBrokenWindow() end

---@param DeltaTime number
function ASTExtraUAVVehicle:CheckCameraViewEnemy(DeltaTime) end

---@param AddList ULuaArrayHelper<ASTExtraBaseCharacter>
---@param RemoveList ULuaArrayHelper<ASTExtraBaseCharacter>
function ASTExtraUAVVehicle:OnUpdateMarkEnemy(AddList, RemoveList) end
