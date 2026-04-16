---@meta

---@class ETrackSideType
---@field ETrackSide_Invalid number
---@field ETrackSide_Left number
---@field ETrackSide_Right number
ETrackSideType = {}


---@class FVehicleWeaponCollisionShapeTransformConfigPerAxis
---@field VehicleWeapon_RotateAxis number
---@field VehicleWeapon_RotatePointLocation FVector
FVehicleWeaponCollisionShapeTransformConfigPerAxis = {}


---@class FVehicleWeaponCollisionShapeTransformConfig
---@field AnimatedDriven_ShapeIndex number
---@field AnimatedDriven_IgnoreChannel ULuaArrayHelper<ECollisionChannel>
---@field VehicleWeapon_ShapeLocation FVector
---@field ShapeTransformConfigs ULuaArrayHelper<FVehicleWeaponCollisionShapeTransformConfigPerAxis>
FVehicleWeaponCollisionShapeTransformConfig = {}


---@class FVehicleWeaponCollisionConfig
---@field VehicleWeapon_SeatIndex number
---@field VehicleWeapon_WeaponListID number
---@field ShapeConfigs ULuaArrayHelper<FVehicleWeaponCollisionShapeTransformConfig>
FVehicleWeaponCollisionConfig = {}


---@class FVehicleTrackInfo
---@field PartName EVehiclePartName
---@field TrackIndex number
---@field TrackSideType ETrackSideType
---@field TrackMaterialIndex number
---@field TrackBroken boolean
---@field LastFrameTrackSpeed number
---@field CurrentTrackSpeed number
---@field CustomTrackUVFactor number
---@field CustomTrackUVOffset number
---@field CurrentTrackDMIOffset number
---@field DMIParamName string
---@field BrokenTrackEffectVelocity number
---@field TrackBrokenEffectName string
FVehicleTrackInfo = {}


---@class FTankTrackBorkenDelegate : ULuaMulticastDelegate
FTankTrackBorkenDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PartName: EVehiclePartName, bBroken: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTankTrackBorkenDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PartName EVehiclePartName
---@param bBroken boolean
function FTankTrackBorkenDelegate:Broadcast(PartName, bBroken) end


---@class ASTExtraTankVehicle: ASTExtraBaseWheeledVehicle
---@field bOverrideCalAIVehicleNonPhyMoveOffset boolean
---@field TurretSocketName string
---@field bTurretIsBlocked boolean
---@field ExhaustEffectName string
---@field BoostExhaustEffectName string
---@field FireAfterExplodeEffectName string
---@field bUseVehicleWeaponCollsion boolean
---@field VehicleWeaponCollisionConfigs ULuaArrayHelper<FVehicleWeaponCollisionConfig>
---@field VehicleWeaponCollision_VehicleRootBoneName string
---@field AnimateWeaponCollisionTickInterval number
---@field ShapeTransformChangeThreshold number
---@field bEnableTurretPenetrateTick boolean
---@field bEnableSphereSweep boolean
---@field SweepSphereRadius number
---@field PreventTurretPenetrateTickInterval number
---@field TurretLength number
---@field PreventTurretPenetrateStartSocket string
---@field PreventTurretPenetrateEndSocket string
---@field TraceStartOffset FVector
---@field TraceEndOffset FVector
---@field TankLowHealthWraningLoop FSTExtraVehicleSfxLoop
---@field bEnableMultiTrack boolean
---@field LeftTracksInfo ULuaArrayHelper<FVehicleTrackInfo>
---@field RightTracksInfo ULuaArrayHelper<FVehicleTrackInfo>
---@field TrackSfxLoop FSTExtraVehicleSfxLoop
---@field BrokenTrackSfxLoop FSTExtraVehicleSfxLoop
---@field MaxTrackSpeed number
---@field UseNewTrackUpdateStratage boolean
---@field LeftTrackMaterialIndex number
---@field RightTrackMaterialIndex number
---@field LeftTrackDMIParamName string
---@field RightTrackDMIParamName string
---@field CustomTrackUVFactorL number
---@field CustomTrackUVFactorR number
---@field CustomTrackUVOffsetL number
---@field CustomTrackUVOffsetR number
---@field LastFrameLeftTrackSpeed number
---@field LastFrameRightTrackSpeed number
---@field SpeedDiffZeroTolerance number
---@field TrackDMIUpdateSpeedChangeRatio number
---@field MaxTrackDMIOffsetSpeed number
---@field TrackCalcDMIOffsetSpeedThreshold number
---@field CurrentLeftTrackDMIOffset number
---@field CurrentRightTrackDMIOffset number
---@field TankTrackBrokenDelegate FTankTrackBorkenDelegate
---@field PostLoadMeshRefreshTrackDMI boolean
---@field bEnableSplineTrack boolean
---@field bUpdateTrackSimple boolean
---@field NumOfTrack number
---@field TrackMoveTime ULuaArrayHelper<number>
---@field WheelSplinePointsKey ULuaArrayHelper<number>
---@field TrackPointsLoc ULuaArrayHelper<FVector>
---@field DriveWheelsName ULuaArrayHelper<string>
---@field DriveRightWheelsName ULuaArrayHelper<string>
---@field WheelRadius number
---@field TrackUpdateSpeed number
---@field SightUI UWidget
---@field SecondaryWeaponSightUI UWidget
---@field BrokenTrackEffectVelocity number
---@field LeftTrackBrokenEffectName string
---@field RightTrackBrokenEffectName string
---@field LeftTrackBroken boolean
---@field RightTrackBroken boolean
---@field TurretBroken boolean
---@field RPMSyncCheckInterval number
---@field DriverAniTimerRefWheelIndex number
---@field SteerAngelInputMap FVector2D
---@field SteerDriverAniTimerOutMap FVector2D
local ASTExtraTankVehicle = {}

---@param DeltaTime number
function ASTExtraTankVehicle:AnimatedCollision(DeltaTime) end

function ASTExtraTankVehicle:CreateTrackDMI() end

---@param DeltaTime number
function ASTExtraTankVehicle:UpdateTankTrackDMI(DeltaTime) end

---@param DeltaTime number
function ASTExtraTankVehicle:UpdateTankMultiTrackDMI(DeltaTime) end

---@param VehicleTrackInfo FVehicleTrackInfo
---@param DeltaTime number
function ASTExtraTankVehicle:UpdateTankTrackDMIInternal(VehicleTrackInfo, DeltaTime) end

---@param MatDMI UMaterialInterface
function ASTExtraTankVehicle:SetAvatarMID(MatDMI) end

function ASTExtraTankVehicle:PostLoadMesh() end

function ASTExtraTankVehicle:InitTrackSplineMesh() end

---@param DeltaTime number
function ASTExtraTankVehicle:UpdateTrackTimes(DeltaTime) end

function ASTExtraTankVehicle:UpdateTrackSpline() end

function ASTExtraTankVehicle:UpdateTrackDeform() end

function ASTExtraTankVehicle:UpdateTrackDeformSimple() end

---@param CauserWeapon AActor
function ASTExtraTankVehicle:HandleClientTakeDamage(CauserWeapon) end

function ASTExtraTankVehicle:HandleTankTurretTurningStop() end

function ASTExtraTankVehicle:HandleTankTurretTurning() end

---@param Translation FVector2D
function ASTExtraTankVehicle:UpdateUISight(Translation) end

---@return boolean
function ASTExtraTankVehicle:GetIsAllWheelsInAir() end

---@param OriginName string
---@param ConsiderInWater boolean
---@param bActivateEffect boolean
function ASTExtraTankVehicle:UpdateTankTailSmokeEffect(OriginName, ConsiderInWater, bActivateEffect) end

function ASTExtraTankVehicle:TickUpdateTankTailEffect() end

function ASTExtraTankVehicle:OnEngineStart() end

function ASTExtraTankVehicle:OnEngineStop() end

---是否可以耗油 允许子类可以自定义选择耗油方式(滑翔机需求)
---@param TankTurret AVehicleShootWeapon
function ASTExtraTankVehicle:SetTurretWeapon(TankTurret) end

---@param TankTurret AVehicleShootWeapon
function ASTExtraTankVehicle:RegisterTurretWeaponEvent(TankTurret) end

---@param TankTurret AVehicleShootWeapon
function ASTExtraTankVehicle:CacheVehAnimTurret(TankTurret) end

---@param TrackPart EVehiclePartName
---@param bBroken boolean
function ASTExtraTankVehicle:SetTrackBroken(TrackPart, bBroken) end

function ASTExtraTankVehicle:UnregisterTurretWeaponEvent() end

---@return FVector
function ASTExtraTankVehicle:GetRotationInputDir() end

---@return number
function ASTExtraTankVehicle:GetVehicleSpeed() end

---@return number
function ASTExtraTankVehicle:GetVehicleSlip() end

---@return number
function ASTExtraTankVehicle:GetTankBodyRotYaw() end

---@param MinSpeed number
---@return number
function ASTExtraTankVehicle:GetCurrentGear(MinSpeed) end

---@return FVector
function ASTExtraTankVehicle:CalculateAIVehicleNonPhyMoveOffset() end

---@param PartName EVehiclePartName
---@param bBroken boolean
function ASTExtraTankVehicle:TankTrackBrokenEvent(PartName, bBroken) end
