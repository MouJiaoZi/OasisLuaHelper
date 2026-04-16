---@meta

---@class EVehicleUpgradeDataType
---@field None number
---@field DragCoefficient number @空气阻力
---@field MaxRPM number @最大转速
---@field Torque number @发动机(峰值扭矩)
---@field NIOAccelerateFactor number @电控(氮气加速的系数)
---@field NIOAccumulateFactor number @氮气累积的速度
---@field StartAccelerateFactor number @弹射(起跑)
---@field DriftDampVelocityFactor number @轮胎(漂移减速)
EVehicleUpgradeDataType = {}


---@class FVehicleUpgradeData
---@field Level number
---@field Attrs ULuaMapHelper<number, number>
FVehicleUpgradeData = {}


---@class USTExtraVehicleUtils: UObject
local USTExtraVehicleUtils = {}

---@param Vehicle ASTExtraVehicleBase
---@param ImpactResult FHitResult
---@return EAvatarDamagePosition
function USTExtraVehicleUtils:GetVehiclePartByBoneName(Vehicle, ImpactResult) end

---@param Vehicle ASTExtraVehicleBase
---@param PartNameType number
---@param PartDirType number
---@return string
function USTExtraVehicleUtils:GetVehicleAndPartName(Vehicle, PartNameType, PartDirType) end

---@param CH ASTExtraBaseCharacter
---@return string
function USTExtraVehicleUtils:GetCharacterInfo(CH) end

---@param CH ASTExtraBaseCharacter
---@param VehicleUser UVehicleUserComponent
---@return string
function USTExtraVehicleUtils:GetCharacterInfoByVehicleUser(CH, VehicleUser) end

---@param VH ASTExtraVehicleBase
function USTExtraVehicleUtils:PrintVehicleDetailStat(VH) end

---@param VH ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehicleInfo(VH) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function USTExtraVehicleUtils:IsDriver(Character) end

---@param Character ASTExtraBaseCharacter
---@return boolean
function USTExtraVehicleUtils:IsPassenger(Character) end

---@param Producer AActor
---@param ProduceID number
---@param BoxTrans FTransform
---@param CommonTreasureBoxInput ACommonTreasureBox
---@param DeadInventoryBoxTemplate APlayerTombBox
---@param TombBoxLifeTime number
function USTExtraVehicleUtils:GenerateCommonTreasureBox(Producer, ProduceID, BoxTrans, CommonTreasureBoxInput, DeadInventoryBoxTemplate, TombBoxLifeTime) end

---用于通过命令行调试空投载具
---@param World UWorld
---@param InPos FVector
---@param InId number
function USTExtraVehicleUtils:CmdAirDropVehicle(World, InPos, InId) end

---@param InVehicle ASTExtraVehicleBase
---@return boolean
function USTExtraVehicleUtils:IsFirstCharacterOnVehicle(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@return boolean
function USTExtraVehicleUtils:IsFirstCharacterRemoteControlVehicle(InVehicle) end

---@param VehiclePawn ASTExtraVehicleBase
---@param BehaviorTree UBehaviorTree
function USTExtraVehicleUtils:InitializeVehicleBehaviorTree(VehiclePawn, BehaviorTree) end

---@param VehiclePawn ASTExtraVehicleBase
function USTExtraVehicleUtils:StopVehicleBehaviorTree(VehiclePawn) end

---<为指定的载具Actor找到一个不会与周围碰撞的位置
---@param TestActor AActor
---@param PlaceLocation FVector
---@param PlaceRotation FRotator
---@param IgnoredActors ULuaArrayHelper<AActor>
---@return boolean
function USTExtraVehicleUtils:K2_FindAjustedPosition(TestActor, PlaceLocation, PlaceRotation, IgnoredActors) end

---@return boolean
function USTExtraVehicleUtils:UseNewVehicleTrace() end

---@return boolean
function USTExtraVehicleUtils:UseNewPawnTrace() end

---@param TestActor AActor
---@param SpawnTransform FTransform
---@param SpaceCheckBox FVector
---@param ZFactor number
---@param TestLength number
---@param DrawDebug boolean
---@param DrawTime number
---@return number
function USTExtraVehicleUtils:GetVehiclePitchByBoxTest(TestActor, SpawnTransform, SpaceCheckBox, ZFactor, TestLength, DrawDebug, DrawTime) end

---@param ExceptionType string
---@param StackStr string
---@param ReportString string
function USTExtraVehicleUtils:ReportToTLog(ExceptionType, StackStr, ReportString) end

---@return boolean
function USTExtraVehicleUtils:IsIgnoreCollisionInVehicleAndPawn() end

---@return boolean
function USTExtraVehicleUtils:IsBigWorld() end

---@return boolean
function USTExtraVehicleUtils:IsBigWorld_GReduceRepProps() end

---@return boolean
function USTExtraVehicleUtils:IsBigWorld_GServerMoveLite() end

---@return boolean
function USTExtraVehicleUtils:IsBigWorld_GDebugServerMoveLite() end

---@return boolean
function USTExtraVehicleUtils:IsBattleFieldMode() end

---@return boolean
function USTExtraVehicleUtils:IsWinReleaseMode() end

---@return boolean
function USTExtraVehicleUtils:IsEnableVehicleVoiceCheck() end

---@return boolean
function USTExtraVehicleUtils:ISEnableVehicleAudioEffectivenessCheck() end

---@return boolean
function USTExtraVehicleUtils:CanAudioEverBeMutedEnteringWater() end

---@return number
function USTExtraVehicleUtils:GetMaxConcurrentVehicleAudio() end

---@return boolean
function USTExtraVehicleUtils:IsEnableTankTurnAudio() end

---@return boolean
function USTExtraVehicleUtils:IsOpenVehicleDetailLog() end

---@param scene USceneComponent
function USTExtraVehicleUtils:SetOptCmpForDontReplicated(scene) end

---@param scene USceneComponent
function USTExtraVehicleUtils:SetOptCmpForDontUpdatetransform(scene) end

---@return boolean
function USTExtraVehicleUtils:IsOptCmpForDontUpdatetransform() end

---@return boolean
function USTExtraVehicleUtils:IsEnableBulletWheelShapeCollisionChannel() end

---@return boolean
function USTExtraVehicleUtils:IsOptCmpForDontReplicated() end

---@return boolean
function USTExtraVehicleUtils:IsOptVehcileWeaponTick() end

---@return boolean
function USTExtraVehicleUtils:IsOpt27VehcileUseAssumesLocked() end

---@param Actor AActor
---@return FTransform
function USTExtraVehicleUtils:FindVehicleAdaptLocaiton(Actor) end

---@param Vehicle ASTExtraVehicleBase
---@param Character ASTExtraBaseCharacter
---@return FVector
function USTExtraVehicleUtils:GetSeatAttachPosOffset(Vehicle, Character) end

---@param Vehicle ASTExtraVehicleBase
---@param Character ASTExtraBaseCharacter
---@return FRotator
function USTExtraVehicleUtils:GetSeatAttachRotOffset(Vehicle, Character) end

---@param Vehicle ASTExtraVehicleBase
---@param ShouldContainInfoType boolean
---@return string
function USTExtraVehicleUtils:GetVehicleAllInfoNew(Vehicle, ShouldContainInfoType) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehicleNameInfo(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehicleCurrentTransformInfo(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehicleLastTransformInfo(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehiclePhysicsStateInfo(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehicleCommonInfo(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehiclePhysicsTransfromInfo(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehicleReplicatedMovementInfo(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehicleInputInfo(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return string
function USTExtraVehicleUtils:GetVehicleSyncInfo(Vehicle) end

---@param ExtraDataType string
---@param ExtraData string
---@return string
function USTExtraVehicleUtils:GetVehicleExtraData(ExtraDataType, ExtraData) end

---@param VehicleInfoType string
---@return string
function USTExtraVehicleUtils:GetVehicleInfoType(VehicleInfoType) end

---@return boolean
function USTExtraVehicleUtils:VehicleUseDoRepOnce() end

---@param ActorTransfrom FTransform
---@param Origin FVector
---@param BoxExtend FVector
---@param TargetPoint FVector
---@param Direction FVector
---@return number
function USTExtraVehicleUtils:CalcMaxDistanceAlongTheDirection(ActorTransfrom, Origin, BoxExtend, TargetPoint, Direction) end

---@param HitResult FHitResult
---@return boolean
function USTExtraVehicleUtils:CheckHitWater(HitResult) end

---@param inVehicle ASTExtraVehicleBase
function USTExtraVehicleUtils:BPFinishSpawningVehicle(inVehicle) end

---@param Vehicle ASTExtraVehicleBase
---@param UpgradeData FVehicleUpgradeData
function USTExtraVehicleUtils:SetVehicleUpgradeData(Vehicle, UpgradeData) end

---@param Vehicle ASTExtraVehicleBase
---@param Id number
---@return boolean
function USTExtraVehicleUtils:ChangeVehicleToVehicleWithId(Vehicle, Id) end

---@param matDynamic UMaterialInstanceDynamic
---@param Material UMaterialInstance
function USTExtraVehicleUtils:LoopCopyParamOverrides(matDynamic, Material) end

---@return boolean
function USTExtraVehicleUtils:IsRaceMode() end

---@return boolean
function USTExtraVehicleUtils:EnableUseVehicleRecordSimulate() end

---@return boolean
function USTExtraVehicleUtils:EnableRecordeVehicleSimulte() end

---@return string
function USTExtraVehicleUtils:GetGameContentDir() end

---@return string
function USTExtraVehicleUtils:GetProjectSavedDir() end

---@param vehicle ASTExtraVehicleBase
function USTExtraVehicleUtils:VehicleGlobalInfoData_AddSpawn(vehicle) end

---@param vehicle ASTExtraVehicleBase
function USTExtraVehicleUtils:VehicleGlobalInfoData_AddUse(vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@return FVehicleClientSyncData
function USTExtraVehicleUtils:CreateClientSyncData(Vehicle) end

---@param obj UObject
---@return boolean
function USTExtraVehicleUtils:IsValid(obj) end

---@param Vehicle ASTExtraVehicleBase
---@param Radius number
---@param ViewDirection FVector
---@param ValidAngle number
---@param bCharacter boolean
---@param bVehicle boolean
function USTExtraVehicleUtils:GetPawnInSphereAndView(Vehicle, Radius, ViewDirection, ValidAngle, bCharacter, bVehicle) end

---@param PC ASTExtraPlayerController
---@return ESTExtraVehicleType
function USTExtraVehicleUtils:GetVehicleTypeByPlayerController(PC) end

---@param Str string
function USTExtraVehicleUtils:PrintVehicleLog(Str) end

---@param ShapesIndices ULuaArrayHelper<number>
---@param Vehicle ASTExtraVehicleBase
---@param UseLocalPose boolean
---@param DrawDebug boolean
---@param DrawDebugTime number
---@return FBox
function USTExtraVehicleUtils:CalcAABBBoundsByShapesIndices(ShapesIndices, Vehicle, UseLocalPose, DrawDebug, DrawDebugTime) end

---@param ShapesIndices ULuaArrayHelper<number>
---@param Vehicle ASTExtraVehicleBase
---@param UseLocalPose boolean
---@param DrawDebug boolean
---@param DrawDebugTime number
---@return FBox
function USTExtraVehicleUtils:CalcAABBBoundsByShapesIndices_AssumesLocked(ShapesIndices, Vehicle, UseLocalPose, DrawDebug, DrawDebugTime) end

---@param DeltaTime number
---@param CurrentValue number
---@param NewValue number
---@param RiseRate number
---@param FallRate number
---@return number
function USTExtraVehicleUtils:InterpFloatValueByRate(DeltaTime, CurrentValue, NewValue, RiseRate, FallRate) end

---@param Direction FVector
---@param Distance number
---@param InComp UPrimitiveComponent
---@param Extent FVector
---@param Pos FVector
---@param Rot FQuat
---@return boolean
function USTExtraVehicleUtils:ComputeBoxShapePenetration(Direction, Distance, InComp, Extent, Pos, Rot) end

---@param Movement4W USTExtraVehicleMovementComponent4W
---@param WheelIndex number
---@return number
function USTExtraVehicleUtils:GetWheelComponentSpaceRoll(Movement4W, WheelIndex) end

---@param vehicle ASTExtraVehicleBase
function USTExtraVehicleUtils:ClearActionBindings(vehicle) end

---@param vehicle ASTExtraVehicleBase
---@param ActionName string
function USTExtraVehicleUtils:RemoveActionBinding(vehicle, ActionName) end

---@param vehicle ASTExtraVehicleBase
---@param ActionName string
---@param KeyEvent EInputEvent
function USTExtraVehicleUtils:BindAction(vehicle, ActionName, KeyEvent) end

---@param Outer AActor
---@param RayStart FVector
---@param RayEnd FVector
---@param JudgeDist number
---@param ForwardOutHit FHitResult
---@param ReverseOutHit FHitResult
---@return boolean
function USTExtraVehicleUtils:IsInSingleFaceWall(Outer, RayStart, RayEnd, JudgeDist, ForwardOutHit, ReverseOutHit) end

---@param Outer AActor
---@param StartLoc FVector
---@param HorizonalLineTraceCnt number
---@param VerticallLineTraceCnt number
---@param ForwardOutHits ULuaArrayHelper<FHitResult>
---@param ReverseOutHits ULuaArrayHelper<FHitResult>
---@param InSingleWallTimes number
---@return number
function USTExtraVehicleUtils:GetInSingleFaceWallLineCnt(Outer, StartLoc, HorizonalLineTraceCnt, VerticallLineTraceCnt, ForwardOutHits, ReverseOutHits, InSingleWallTimes) end

---@param Outer AActor
---@param StartLoc FVector
---@param InSingleWallTimes number
---@return boolean
function USTExtraVehicleUtils:CheckVehicleInWall(Outer, StartLoc, InSingleWallTimes) end

---@param Vehicle ASTExtraVehicleBase
---@param HitPoint FVector
---@return number
function USTExtraVehicleUtils:GetVehicleShapeIndexFromHitPoint(Vehicle, HitPoint) end

---@param Vehicle ASTExtraVehicleBase
---@param HitPoint FVector
---@return string
function USTExtraVehicleUtils:GetDynamicBoneNameFromHitPoint(Vehicle, HitPoint) end

---@param Vehicle ASTExtraVehicleBase
---@param ShapeIndex number
---@param NewCollisionEnabled ECollisionEnabled
function USTExtraVehicleUtils:SetVehicleShapeCollision(Vehicle, ShapeIndex, NewCollisionEnabled) end

---@param Vehicle ASTExtraVehicleBase
function USTExtraVehicleUtils:ClearVehicleWheelStaticFriction(Vehicle) end

---@return boolean
function USTExtraVehicleUtils:AvatarUseNewDeviceLevel() end

---@param Vehicle ASTExtraVehicleBase
---@return EVehiclePCTipsUIType
function USTExtraVehicleUtils:GetVehiclePCTipsUIType(Vehicle) end

---@param Vehicle ASTExtraVehicleBase
---@param Level number
function USTExtraVehicleUtils:ApplyVehiclePerformanceMap(Vehicle, Level) end

---@param Vehicle ASTExtraVehicleBase
---@return ESTExtraVehicleBaseType
function USTExtraVehicleUtils:GetVehicleBaseType(Vehicle) end

---@param FailReason EVehicleFailReason
---@param Outer UObject
---@return number
function USTExtraVehicleUtils:GetFailReasonTips(FailReason, Outer) end

---@param Vehicle ASTExtraVehicleBase
---@param bEnter boolean
---@return boolean
function USTExtraVehicleUtils:CheckEnterOrExitVehicleReqInterval(Vehicle, bEnter) end

---@param InVehicle ASTExtraVehicleBase
---@return number
function USTExtraVehicleUtils:GetVehicleHP(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@return number
function USTExtraVehicleUtils:GetVehicleMaxHP(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@return number
function USTExtraVehicleUtils:GetVehicleFuel(InVehicle) end

---@param InVehicle ASTExtraVehicleBase
---@return number
function USTExtraVehicleUtils:GetVehicleMaxFuel(InVehicle) end

---@param InWeapon AVehicleShootWeapon
---@param VehicleWeaponParamInfo FUGCMobileVehicleWeaponParamInfo
function USTExtraVehicleUtils:ModifyWeaponAttributeUGC(InWeapon, VehicleWeaponParamInfo) end

---@param InVehicle ASTExtraVehicleBase
---@param InitMountNum number
function USTExtraVehicleUtils:ModifyDumpTruckInitMountNum(InVehicle, InitMountNum) end

---@param InVehicle ASTExtraVehicleBase
---@param InBodySetup UBodySetup
function USTExtraVehicleUtils:UGCModifyPhysicsBodyByBodySetup(InVehicle, InBodySetup) end

---@param InVehicle ASTExtraVehicleBase
---@param InMeshes ULuaArrayHelper<UStaticMeshComponent>
function USTExtraVehicleUtils:UGCModifyPhysicsBodyByMesh(InVehicle, InMeshes) end

---@param Vehicle ASTExtraVehicleBase
---@param InItemHandle UBattleItemHandleBase
---@param AdditionalString string
function USTExtraVehicleUtils:PrintVehicleAvatarChangeInfo(Vehicle, InItemHandle, AdditionalString) end

---@param WorldContextObject UObject
---@return boolean
function USTExtraVehicleUtils:IsVehicleUGCGame(WorldContextObject) end

---@param Vehicle ASTExtraVehicleBase
---@param Character ASTExtraBaseCharacter
---@return boolean
function USTExtraVehicleUtils:IsCharacterTeammate(Vehicle, Character) end

---@return boolean
function USTExtraVehicleUtils:UseVehiclePCAudio() end

---@param Character ASTExtraBaseCharacter
---@return number
function USTExtraVehicleUtils:GetCharacterHalfHeight(Character) end

---@param ContextActor AActor
---@return number
function USTExtraVehicleUtils:GetServerWorldTimeSeconds(ContextActor) end

---@return boolean
function USTExtraVehicleUtils:UseVehicleShowHolographicEffectInCDTimeStamp() end

---@return boolean
function USTExtraVehicleUtils:UseVehicleShowDynamicPendantInCDTimeStamp() end

---@return boolean
function USTExtraVehicleUtils:UseVehicleSwappingSiblingAvatarInCDTimeStamp() end

---@return boolean
function USTExtraVehicleUtils:UseVehicleEnjoyVoiceSkill() end

---@param Movement USTExtraBaseWheeledMovementComponent
---@param Wheel UVehicleWheel
---@return number
function USTExtraVehicleUtils:GetWheelLatSlip(Movement, Wheel) end

---@param Movement USTExtraBaseWheeledMovementComponent
---@param Wheel UVehicleWheel
---@return number
function USTExtraVehicleUtils:GetWheelLongSlip(Movement, Wheel) end

---@param bSetup boolean
---@param HorseVehicle ASTExtraHorseVehicle
function USTExtraVehicleUtils:SetupHorseVehicleMovementComp(bSetup, HorseVehicle) end

---@return boolean
function USTExtraVehicleUtils:IsEnableDrawDebug() end

---@param LineStart FVector
---@param LineEnd FVector
---@param LineColor FLinearColor
---@param Duration number
---@param Thickness number
function USTExtraVehicleUtils:ClientDrawDebugLine(LineStart, LineEnd, LineColor, Duration, Thickness) end
