---@meta

---@class ETakeDamagePerform
---@field None number
---@field Run number
---@field kick number
---@field Frightened number
ETakeDamagePerform = {}


---@class ETakeDamageRunState
---@field None number
---@field CanTurn number
---@field Turning number
---@field RunStraight number
ETakeDamageRunState = {}


---@class EHorseAvatarType
---@field Horse number @默认马类
---@field Canidae number @犬科
EHorseAvatarType = {}


---@class EHorseWingMaxSpeedAnimationType
---@field Normal number
---@field Soar number
EHorseWingMaxSpeedAnimationType = {}


---@class FMyriapodTakeDamageByShootDelegate : ULuaSingleDelegate
FMyriapodTakeDamageByShootDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMyriapodTakeDamageByShootDelegate:Bind(Callback, Obj) end

---执行委托
function FMyriapodTakeDamageByShootDelegate:Execute() end


---@class FMyriapodBeFrightened : ULuaSingleDelegate
FMyriapodBeFrightened = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FMyriapodBeFrightened:Bind(Callback, Obj) end

---执行委托
function FMyriapodBeFrightened:Execute() end


---@class FHorseModifyBoxComponentDelegate : ULuaMulticastDelegate
FHorseModifyBoxComponentDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bAttach: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHorseModifyBoxComponentDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bAttach boolean
function FHorseModifyBoxComponentDelegate:Broadcast(bAttach) end


---@class FHorseModifiedCanFlyDelegate : ULuaMulticastDelegate
FHorseModifiedCanFlyDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Horse: ASTExtraHorseVehicle) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHorseModifiedCanFlyDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Horse ASTExtraHorseVehicle
function FHorseModifiedCanFlyDelegate:Broadcast(Horse) end


---@class ASTExtraHorseVehicle: ASTExtraMyriapodVehicle
---@field bEnableJumpOnVehicle boolean
---@field fTickCheckVehicleFloorInterval number
---@field CheckGrassEnable boolean
---@field DisableBodyInstanceList ULuaArrayHelper<string>
---@field HorseCollisionOnlyToCharacterBoneName string
---@field KickPawnDamage number
---@field bIsRide boolean
---@field ServerCheckGroundGrass number
---@field StateMap ULuaMapHelper<EHorseBehaviorType, USTMyriapodStateComponent>
---@field CarriageCameraLengthExtension number
---@field WalkCameraLength number
---@field RunCameraLength number
---@field FlyCameraLength number
---@field SoarCameraSwitchTime number
---@field SoarCameraLength number
---@field CameraSwitchTime number
---@field bLowEnergy boolean
---@field fFallDownImpluse number
---@field fSmallHitApplyVelocity number
---@field fBigHitApplyVelocity number
---@field fDestroyAfterDie number
---@field fKickCharacterDelayTime number
---@field Kickcharacter ASTExtraBaseCharacter
---@field TakeDamageByShoot FMyriapodTakeDamageByShootDelegate
---@field HorseFrightened FMyriapodBeFrightened
---@field HorseModifyBoxComponent FHorseModifyBoxComponentDelegate
---@field bIsCanShoot boolean
---@field DriverAttachSeatBoxZ number
---@field bModifyBoxComponentSizeByRide boolean
---@field CheckGrassBoneNames string
---@field CkeckBackPawnBoneName string
---@field takeDamagePer ETakeDamagePerform
---@field takeDamageRunState ETakeDamageRunState
---@field fTakeDamageRunMinTime number
---@field fTakeDamageRunMaxTime number
---@field fTakeDamageRunDiscipline number
---@field fTakeDamageRunSpeed number
---@field fTakeDamageRunAcc number
---@field fTakeDamageKickAnimTime number
---@field fTakeDamageKickDiscipline number
---@field fTakeDamageKickPawnApplyVelocity number
---@field fTakeDamageRunMaxAngularSpeed number
---@field fTakeDamageRunMinAngularSpeed number
---@field fTakeDamageRunWithAngularSpeedJudgeTimer number
---@field fTakeDamageRunWithAngularSpeedDiscipline number
---@field VritualControlBrakingDeceleration number
---@field bDriverAttachVehicleSetWalkType boolean
---@field ConnectSocket1 string
---@field ConnectSocket2 string
---@field ConnectEffect string
---@field bShouldConnectWhenBorn boolean
---@field CarriageSmartCameraRotation FRotator
---@field CarriageCameraRotationLagSpeedYaw number
---@field CarriageSpringArmRelativeLocation FVector
---@field CameraData FCameraOffsetData
---@field FCameraOffsetDataName string
---@field CameraTargetOffsetWithTrailer FVector
---@field HorseModifiedCanFlyDelegate FHorseModifiedCanFlyDelegate
---@field FlyHorseSkillHandleSoftClass UFlyHorseSkillHandle
---@field bCanFly boolean
---@field CurrentFlyingDistanceToGround number
---@field MaxFlyingDistanceToLand number
---@field MaxFlyingDistanceToLandRange number
---@field FullControlFlyingTime number
---@field JustActivatedFlyingTime number
---@field FlyingProtectionTime number
---@field WaterFlyingProtectionTime number
---@field RemainingFullControlFlyingTime number
---@field ActivateFlyingModeCD number
---@field LastFlyingEndingTime number
---@field WingsDefaultMesh USkeletalMesh
---@field WingsDefaultAnimInstance UAnimInstance
---@field WingsAttachSocket string
---@field HorseWingAnimationType EHorseWingMaxSpeedAnimationType
---@field TickHorseWingAnimationTypeInterval number
---@field HorseWingCanConsiderSoarSpeed number
---@field HorseWingCanConsiderSoarSpeedMaintainDuration number
---@field HorseWingSoarMaxRandomDelay FFloatRange
---@field HorseWingSoarDuration FFloatRange
---@field FlyHorseWingsTrailEffectSpeedThreshold number
---@field WingStaticParticleNeedAttach boolean
---@field WingTrailParticleNeedAttach boolean
---@field FlyHorseWingsStaticEffect string
---@field FlyHorseWingStaticEffects FParticleSoftWrapperArray
---@field FlyHorseWingsTrailEffect string
---@field FlyHorseWingTrailEffect FParticleSoftWrapperArray
---@field bHorseDefaultHiddenInClient boolean
---@field bServerIsFlying boolean
---@field HorseAvatarType EHorseAvatarType
local ASTExtraHorseVehicle = {}

---@param SeatType ESTExtraVehicleSeatType
---@param InSeatIndex number
---@return boolean
function ASTExtraHorseVehicle:CanUseSeat(SeatType, InSeatIndex) end

---@param rate number
function ASTExtraHorseVehicle:MoveForward(rate) end

---@param rate number
function ASTExtraHorseVehicle:MoveForwardNativeEvent(rate) end

---@param rate number
function ASTExtraHorseVehicle:MoveRight(rate) end

---@param bEnalbed boolean
function ASTExtraHorseVehicle:SetBoosting(bEnalbed) end

---@param rate number
function ASTExtraHorseVehicle:MoveUp(rate) end

function ASTExtraHorseVehicle:Jump() end

---@param walkType EWalkType
function ASTExtraHorseVehicle:SetWalkType(walkType) end

function ASTExtraHorseVehicle:ClientTakeDamageByShoot() end

function ASTExtraHorseVehicle:ClientFrightened() end

function ASTExtraHorseVehicle:HandleOnFallDown() end

---@param pCharacter ACharacter
---@param ApplyVelocity FVector
function ASTExtraHorseVehicle:KickPawnWhenTakeDamage(pCharacter, ApplyVelocity) end

function ASTExtraHorseVehicle:RunWhenTakeDamage() end

function ASTExtraHorseVehicle:SwitchDriverShoot() end

function ASTExtraHorseVehicle:Follow() end

function ASTExtraHorseVehicle:EnterSprint() end

function ASTExtraHorseVehicle:ExitSprint() end

---@param Trailer ASTExtraVehicleBase
function ASTExtraHorseVehicle:OnHookedByTrailer(Trailer) end

---@param Trailer ASTExtraVehicleBase
function ASTExtraHorseVehicle:OnUnhookedByTrailer(Trailer) end

---@param walkType EWalkType
function ASTExtraHorseVehicle:ServerSetTrailerWalkType(walkType) end

---@param Enable boolean
---@param Character ASTExtraPlayerCharacter
function ASTExtraHorseVehicle:EnableShootDriverCameraOffsetWithTrailer(Enable, Character) end

---@param bOldCanFly boolean
function ASTExtraHorseVehicle:OnRep_bCanFly(bOldCanFly) end

function ASTExtraHorseVehicle:UpdateFlyHorseClientAssets() end

function ASTExtraHorseVehicle:OnAsyncLoadWingsAssets() end

---@param bNewCanFly boolean
function ASTExtraHorseVehicle:SetCanFly(bNewCanFly) end

function ASTExtraHorseVehicle:UpdateActivateFlyingModeUI() end

---@return boolean
function ASTExtraHorseVehicle:ShouldPlayStartFlyAnimation() end

function ASTExtraHorseVehicle:ActivateFlyingModeUI() end

function ASTExtraHorseVehicle:ActivateNonFlyingModeUI() end

function ASTExtraHorseVehicle:TryActivateFlyingMode() end

function ASTExtraHorseVehicle:ReqActivateFlyingMode() end

---@return boolean
function ASTExtraHorseVehicle:CheckCanActivateFlyingMode() end

function ASTExtraHorseVehicle:OnRep_HorseWingAnimationType() end

---处理天马翅膀动画类型的更新逻辑 功能说明： - 根据马匹当前飞行速度和持续时间条件，在普通飞行和滑翔动画之间切换 - 包含速度维持检测、滑翔延迟和滑翔持续时间的完整状态管理
---@param DeltaSeconds number
function ASTExtraHorseVehicle:TickHorseWingAnimationType(DeltaSeconds) end

function ASTExtraHorseVehicle:UpdateHorseWingParticle() end

function ASTExtraHorseVehicle:OnHorseAvatarDataCopied() end

function ASTExtraHorseVehicle:RegisterWingParticleData() end

function ASTExtraHorseVehicle:OnRep_HorseDefaultHiddenInClient() end

---@param IsHidden boolean
function ASTExtraHorseVehicle:SetHorseDefaultHiddenInClient(IsHidden) end

function ASTExtraHorseVehicle:OnRep_bServerIsFlying() end
