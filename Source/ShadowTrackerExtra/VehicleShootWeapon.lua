---@meta

---@class ESTExtraVehicleShootWeaponTypeAtDriverSeat
---@field VSWT_Flamethrower number @喷火器
---@field VSWT_TankRPG number @坦克石头弹
---@field VSWT_Gatlin number @加特林
---@field VSWT_HelicopterGatlin number @直升机加特林
---@field VSWT_HelicopterRPG number @直升机火箭筒
---@field VSWT_CoaxialGatlin number @坦克同轴机枪
---@field VSWT_None number
ESTExtraVehicleShootWeaponTypeAtDriverSeat = {}


---车载武器多客户端共用了数据 必须将一些原本设计上不是值同步的逻辑进行一次同步
---@class FWeaponSyncData
---@field ShootID number
---@field ClipID number
FWeaponSyncData = {}


---车载武器断线重连数据
---@class FVehicleWeaponReconnectData
---@field RecconectIndex number @重连编号
---@field SyncData FWeaponSyncData @重连数据
FVehicleWeaponReconnectData = {}


---@class FTurretPoseInfo
---@field ClientVehicleYawCenter FVector
---@field ClientCalculatedWeaponRotatorYaw number
---@field ClientCalculatedWeaponRotatorPitch number
---@field ClientCalculatedWeaponRotatorRoll number
FTurretPoseInfo = {}


---@class FRotateCalculatorConfig
---@field CalculatorTemplate UVehicleShootWeaponRotateCalculator
---@field bDefaultCalculator boolean
FRotateCalculatorConfig = {}


---@class FRotateCalculatorRuntimeInfo
---@field bCalculatorActive boolean
FRotateCalculatorRuntimeInfo = {}


---@class FVehicleWeaponPureReloadInfo
---@field RepIndex number
---@field bInPureReloading boolean
---@field ClipID number
---@field ClipNum number
---@field State EFreshWeaponStateType
---@field bIsFailed boolean
FVehicleWeaponPureReloadInfo = {}


---@class FOnRepBulletOnVehicle : ULuaSingleDelegate
FOnRepBulletOnVehicle = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRepBulletOnVehicle:Bind(Callback, Obj) end

---执行委托
function FOnRepBulletOnVehicle:Execute() end


---@class FOnClientVehicleWeaponControlled : ULuaMulticastDelegate
FOnClientVehicleWeaponControlled = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bUsed: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientVehicleWeaponControlled:Add(Callback, Obj) end

---触发 Lua 广播
---@param bUsed boolean
function FOnClientVehicleWeaponControlled:Broadcast(bUsed) end


---@class FOnServerVehicleWeaponControlled : ULuaMulticastDelegate
FOnServerVehicleWeaponControlled = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bUsed: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnServerVehicleWeaponControlled:Add(Callback, Obj) end

---触发 Lua 广播
---@param bUsed boolean
function FOnServerVehicleWeaponControlled:Broadcast(bUsed) end


---@class FOnLocalUseWeaponStateChanged : ULuaMulticastDelegate
FOnLocalUseWeaponStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bLocalUseWeapon: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnLocalUseWeaponStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param bLocalUseWeapon boolean
function FOnLocalUseWeaponStateChanged:Broadcast(bLocalUseWeapon) end


---@class FOnSetActorOwner : ULuaSingleDelegate
FOnSetActorOwner = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSetActorOwner:Bind(Callback, Obj) end

---执行委托
function FOnSetActorOwner:Execute() end


---基础的载具武器朝向计算单元
---@class UVehicleShootWeaponRotateCalculator: UObject
---@field CalculatorType EVehicleShootWeaponCalculatorType
---@field YawSpeedLimit number
---@field PitchSpeedLimit number
---@field Tolerance number
---@field AnimTolerance number
---@field TurningStopTimeBuffer number
---@field bUseZ boolean
---@field DefaultZ number
---@field bUseLineTrace boolean
---@field IntersectionDistance number
---@field bDrawDebug boolean
---@field BackupYawSpeedLimit number
---@field BackupPitchSpeedLimit number
---@field bIsTurningStopped boolean
---@field StopTurningTime number
---@field CurLogicRotator FRotator
---@field PendingAnimRotator FRotator
---@field CurAnimRotator FRotator
---@field CalculatedWeaponRotator FRotator
---@field TurretPendingRotator FRotator
---@field LastShootMode EShootWeaponShootMode
---@field bLastFrameIsGunADS boolean
---@field TurretBlockTestTolerance FVector2D
local UVehicleShootWeaponRotateCalculator = {}

function UVehicleShootWeaponRotateCalculator:InitCalculator() end

function UVehicleShootWeaponRotateCalculator:BP_InitCalculator() end

function UVehicleShootWeaponRotateCalculator:ActiveCalculator() end

function UVehicleShootWeaponRotateCalculator:BP_ActiveCalculator() end

function UVehicleShootWeaponRotateCalculator:DeActiveCalculator() end

function UVehicleShootWeaponRotateCalculator:BP_DeActiveCalculator() end

---计算载具武器的逻辑旋转值
---@param DeltaTime number
---@param RefSeatPlayer ASTExtraPlayerCharacter
---@param Weapon AVehicleShootWeapon
---@return FRotator
function UVehicleShootWeaponRotateCalculator:CalWeaponRotator(DeltaTime, RefSeatPlayer, Weapon) end

---@param Weapon AVehicleShootWeapon
---@param RefSeatPlayer ASTExtraPlayerCharacter
---@return FRotator
function UVehicleShootWeaponRotateCalculator:GetFinalLogicRotator(Weapon, RefSeatPlayer) end

---根据当前武器朝向计算目标位置
---@return FVector
function UVehicleShootWeaponRotateCalculator:GetShootTarget() end

---@param DeltaSeconds number
---@return FRotator
function UVehicleShootWeaponRotateCalculator:GetWeaponRotator(DeltaSeconds) end


---坦克炮台的朝向计算单元，对于司机位武器适用于非垂直稳定系统
---@class UTurretRotateCalculator: UVehicleShootWeaponRotateCalculator
---@field AxisSocket string
local UTurretRotateCalculator = {}

---计算武器坐标系下当前相机应该所指朝向的旋转值，更新CurLogicRotator
---@param DeltaTime number
---@param RefSeatPlayer ASTExtraPlayerCharacter
---@param Weapon AVehicleShootWeapon
---@return FRotator
function UTurretRotateCalculator:CalWeaponRotator_Implementation(DeltaTime, RefSeatPlayer, Weapon) end

---计算武器坐标系下相机最终应该指向目标朝向的旋转值
---@param Weapon AVehicleShootWeapon
---@param RefSeatPlayer ASTExtraPlayerCharacter
---@return FRotator
function UTurretRotateCalculator:GetFinalLogicRotator_Implementation(Weapon, RefSeatPlayer) end

---计算武器沿着炮管方向落点的位置
---@return FVector
function UTurretRotateCalculator:GetShootTarget_Implementation() end

---计算武器坐标系下武器旋转到目标朝向的下一帧旋转值
---@param DeltaSeconds number
---@return FRotator
function UTurretRotateCalculator:GetWeaponRotator_Implementation(DeltaSeconds) end


---坦克炮台(垂直稳定系统)的朝向计算单元，对于司机位武器适用于垂直稳定系统
---@class USeparatedControlTurretRotateCalculator: UVehicleShootWeaponRotateCalculator
---@field AxisSocket string
local USeparatedControlTurretRotateCalculator = {}

---计算武器坐标系下当前相机应该所指朝向的旋转值，更新CurLogicRotator
---@param DeltaTime number
---@param RefSeatPlayer ASTExtraPlayerCharacter
---@param Weapon AVehicleShootWeapon
---@return FRotator
function USeparatedControlTurretRotateCalculator:CalWeaponRotator_Implementation(DeltaTime, RefSeatPlayer, Weapon) end

---计算武器坐标系下相机最终应该指向目标朝向的旋转值
---@param Weapon AVehicleShootWeapon
---@param RefSeatPlayer ASTExtraPlayerCharacter
---@return FRotator
function USeparatedControlTurretRotateCalculator:GetFinalLogicRotator_Implementation(Weapon, RefSeatPlayer) end

---计算武器沿着炮管方向落点的位置
---@return FVector
function USeparatedControlTurretRotateCalculator:GetShootTarget_Implementation() end

---计算武器坐标系下武器旋转到目标朝向的下一帧旋转值
---@param DeltaSeconds number
---@return FRotator
function USeparatedControlTurretRotateCalculator:GetWeaponRotator_Implementation(DeltaSeconds) end


---@class UHelicopterGatlinRotateCalculator: UVehicleShootWeaponRotateCalculator
---@field AxisSocket string
---@field bUseYawLimit boolean
---@field YawMaxLimit number
---@field YawMinLimit number
---@field bUsePitchLimit boolean
---@field PitchMaxLimit number
---@field PitchMinLimit number
local UHelicopterGatlinRotateCalculator = {}


---@class AVehicleShootWeapon: ASTExtraShootWeapon
---@field bUseAttachVehicleNetRelevant boolean
---@field bEnableAutonomousUpload boolean
---@field bEnableUseAutonomousUploadData boolean
---@field bEnableWeaponUnpossessWhenReconnect boolean
---@field RepRotatorInterpSpeed number
---@field bUseVehicleWeaponShootMode boolean
---@field VehicleWeaponShootMode EShootWeaponShootMode
---@field TurretWeaponCrossHairData FTurretWeaponCrossHairData
---@field SightUI UWidget
---@field RotateSpeedOnVehicle number
---@field bIsVehicleDriverWeapon boolean
---@field VehicleLastTransform FTransform
---@field bEnableMultiCalculator boolean
---@field MultiRotateCalculatorTemplateMap ULuaMapHelper<EVehicleShootWeaponCalculatorType, FRotateCalculatorConfig>
---@field MultiRotateCalculatorInstanceMap ULuaMapHelper<EVehicleShootWeaponCalculatorType, FRotateCalculatorRuntimeInfo>
---@field CurrentActiveCalculatorType EVehicleShootWeaponCalculatorType
---@field RotateCalculatorTemplate UVehicleShootWeaponRotateCalculator
---@field VehicleWeaponControlMode ESTVehicleWeaponControlMode
---@field bSeparateControllerAndVehicleRotationYaw boolean
---@field bSeparateControllerAndVehicleRotationPitch boolean
---@field bAddMasterGunToWeaponAvatarComponent boolean
---@field bUseVehWeaponView boolean
---@field DefaultScopePawnControlRotation boolean
---@field EnableScopePitchCameraLimit boolean
---@field ScopeCameraPitchLimit FVector2D
---@field EnableScopeYawCameraLimit boolean
---@field ScopeCameraYawLimit FVector2D
---@field DestinFOV number
---@field bUseVehWeaponDisableCameraLag boolean
---@field bUseVehWeaponDisableCameraRotationLag boolean
---@field bAddTargetOffset boolean
---@field VehWeaponBindSocket string
---@field VehWeaponViewCameraData FCameraOffsetData
---@field bReplaceOriginRelativeLocation boolean
---@field ReplaceRelativeLocation FVector
---@field bNeedCalcMuzzleSocket boolean
---@field OnBlockMuzzleSocket string
---@field DriverReload boolean
---@field VehicleWeaponControlIcon UPaperSprite
---@field VehicleWeaponControlIcon_Used UPaperSprite
---@field ScopeInImmediately boolean
---@field WeaponTypeAtDriverSeat ESTExtraVehicleShootWeaponTypeAtDriverSeat
---@field WeaponTypeAtPassengerSeat ESTExtraVehicleShootWeaponTypeAtDriverSeat
---@field WeaponHoldType ESTExtraVehicleShootWeaponHoldType
---@field bShouldShowBulletCountAtDriverSeat boolean
---@field bReadAndShowBackPackBulletNum boolean
---@field OnVehicleWeaponTurning FOnVehicleWeaponTurning
---@field OnVehicleWeaponTurningStop FOnVehicleWeaponTurningStop
---@field UseBulletOnVehicle boolean
---@field BulletOnVehicle number
---@field OnRepBulletOnVehicleDelegate FOnRepBulletOnVehicle
---@field OnSetActorOwner FOnSetActorOwner
---@field bUseWeaponVehicleAnimInstance boolean
---@field bCanStopInSameFrame boolean
---@field VehicleWeaponReloadRate number
---@field bVehicleWeaponUseHandIK boolean
---@field VehicleWeaponGripSocketR string
---@field VehicleWeaponGripSocketL string
---@field bControlled boolean
---@field bEnableClearSpringArmRotationWhenScope boolean
---@field bClientScopeIn boolean
---@field bEnableControlled boolean
---@field OnClientVehicleWeaponControlled FOnClientVehicleWeaponControlled
---@field OnServerVehicleWeaponControlled FOnServerVehicleWeaponControlled
---@field bEnableAutoReload boolean
---@field bEnableFreeCameraWhenReload boolean
---@field bEnableExitWeaponViewWhenReload boolean
---@field bEnableReturnBullets boolean
---@field bEnableRotateCharacter boolean
---@field bUseVehicleViewPitch boolean
---@field VehicleViewPitch number
---@field bEnableScopeAfterReload boolean
---@field bAnimFollowCameraOnlyInADS boolean
---@field CharacterSocket string
---@field bEnableShowVehicleWeaponUI boolean
---@field bEnableShowControlButton boolean
---@field bEnableShowSlotUI boolean
---@field bEnableShowInterferenceLine boolean
---@field bEnableShowCompass boolean
---@field bUsePredictLine boolean
---@field GrenadePredictLineClass AGrenadePredictLine
---@field GrenadePredictLineSocket string
---@field bCanConsumeFuel boolean
---@field FuelConsumptionRate number
---@field VehicleSeatIndex number @载具上配置本武器的座位ID和SlotIndex 方便从武器重新找到载具上的配置
---@field VehicleSlotIndex number
---@field bShouldStopTickWhenNotUsed boolean
---@field bDelayStopTickWhenNotUsed boolean
---@field UpdateTankInfoInterval number
---@field ServerTurretPoseInfo FTurretPoseInfo
---@field StartReloadDelayTime number
---@field EndReloadDelayTime number
---@field bDisableReloadBtn boolean
---@field bUsePureVehicleWeaponReload boolean
---@field bLocalInPureReloading boolean
---@field PureReloadInfo FVehicleWeaponPureReloadInfo
---@field PureReloadStartTime number
---@field PureReloadNeedTime number
---@field bLocalUseWeapon boolean
---@field OnLocalUseWeaponStateChanged FOnLocalUseWeaponStateChanged
---@field RecData FVehicleWeaponReconnectData @断线重连数据
---@field bEnableAimAtTarget boolean
---@field BulletTypeTipMsgID number
---@field TargetDir FRotator
---@field bShouldCustomIdleState boolean
---@field CheckAutoIdleStateInterval number
local AVehicleShootWeapon = {}

function AVehicleShootWeapon:PostSetOwnerActor() end

---@param InWeapon AVehicleShootWeapon
function AVehicleShootWeapon:SetOwnerVehicleCacheWeapon(InWeapon) end

function AVehicleShootWeapon:OnVehicleExplode() end

---@param ScreenPos FVector2D
function AVehicleShootWeapon:UpdateSightUI(ScreenPos) end

---@param NewCalculatorType EVehicleShootWeaponCalculatorType
function AVehicleShootWeapon:SwitchCalculator(NewCalculatorType) end

function AVehicleShootWeapon:ResetCalculator() end

---@param OldCalculator UVehicleShootWeaponRotateCalculator
---@param NewCalculator UVehicleShootWeaponRotateCalculator
function AVehicleShootWeapon:CopySharedData(OldCalculator, NewCalculator) end

function AVehicleShootWeapon:NetMulticastReturnBullets() end

function AVehicleShootWeapon:K2_OnReturnBullets() end

---@param Character ASTExtraPlayerCharacter
---@param bUsed boolean
function AVehicleShootWeapon:K2_OnUsedOrNot(Character, bUsed) end

---@param IsHide boolean
function AVehicleShootWeapon:K2_SetSpecialMeshHide(IsHide) end

function AVehicleShootWeapon:OnRep_OwnerActor() end

function AVehicleShootWeapon:OnRep_OwnerVehicle() end

---重连数据OnRep
function AVehicleShootWeapon:OnRep_Reconnect() end

function AVehicleShootWeapon:K2_ClientOnBeAttachedToVehicle() end

---@return FTransform
function AVehicleShootWeapon:GetCharacterSocketTransform() end

function AVehicleShootWeapon:HandleOnOwnerVehicleRep() end

function AVehicleShootWeapon:HandleOnOwnerVehicleRepBP() end

function AVehicleShootWeapon:OnRep_BulletOnVehicle() end

---@param Character ASTExtraBaseCharacter
function AVehicleShootWeapon:OnOnCharacterRefreshMovementOnVehicle(Character) end

---@param InVehicleSeatIndex number
function AVehicleShootWeapon:SetVehicleSeatIndex(InVehicleSeatIndex) end

---@param InVehicleSlotIndex number
function AVehicleShootWeapon:SetVehicleSlotIndex(InVehicleSlotIndex) end

---@param DeltaTime number
---@param FinishSync boolean
function AVehicleShootWeapon:CheckShouldDelayStopTickWhenNotUsed(DeltaTime, FinishSync) end

---@param DeltaTime number
function AVehicleShootWeapon:AfterVehicleWeaponTick(DeltaTime) end

function AVehicleShootWeapon:Onrep_ServerTurretPoseInfo() end

---@param TankTurretPoseInfo FTurretPoseInfo
function AVehicleShootWeapon:UploadTurretInfo(TankTurretPoseInfo) end

---@param Character ASTExtraPlayerCharacter
---@param bUsed boolean
---@param bRefreshVehicleWeaponButton boolean
function AVehicleShootWeapon:ServerUsedOrNot(Character, bUsed, bRefreshVehicleWeaponButton) end

---@param Character ASTExtraPlayerCharacter
---@param bUsed boolean
---@param bRefreshVehicleWeaponButton boolean
---@param SyncData FWeaponSyncData
function AVehicleShootWeapon:MulUsedOrNot(Character, bUsed, bRefreshVehicleWeaponButton, SyncData) end

---@param Character ASTExtraPlayerCharacter
---@param bUsed boolean
function AVehicleShootWeapon:DoUsedOrNot(Character, bUsed) end

---@param DeltaSeconds number
---@param ForceRotateNoControl boolean
function AVehicleShootWeapon:RotateCharacter(DeltaSeconds, ForceRotateNoControl) end

---@return FRotator
function AVehicleShootWeapon:GetOwnerCameraRotator() end

---@return FRotator
function AVehicleShootWeapon:GetOwnerCameraRotator_Implementation() end

---@param DeltaSeconds number
---@return FRotator
function AVehicleShootWeapon:GetWeaponRotator(DeltaSeconds) end

---@param DeltaSeconds number
---@return FRotator
function AVehicleShootWeapon:GetWeaponRotator_Implementation(DeltaSeconds) end

---@return FRotator
function AVehicleShootWeapon:GetCalculatedWeaponRotator() end

---@return FRotator
function AVehicleShootWeapon:GetTurretPendingRotator() end

---@return FRotator
function AVehicleShootWeapon:GetFinalLogicRotator() end

---@return FRotator
function AVehicleShootWeapon:GetFinalLogicRotator_Implementation() end

---@return FRotator
function AVehicleShootWeapon:GetCurLogicRotator() end

---@param Tolerance number
---@return boolean
function AVehicleShootWeapon:IsTurning(Tolerance) end

---@return FVector
function AVehicleShootWeapon:GetShootTarget() end

---@param Character ASTExtraPlayerCharacter
---@param IsUse boolean
---@param IsThirdPerson boolean
function AVehicleShootWeapon:SetUsePawnControlRotation(Character, IsUse, IsThirdPerson) end

---@param LastState EFreshWeaponStateType
---@param NewState EFreshWeaponStateType
function AVehicleShootWeapon:HandleWeaponStateChanged(LastState, NewState) end

function AVehicleShootWeapon:RefreshWeaponCameraAndUI() end

function AVehicleShootWeapon:StartReloadAnim() end

function AVehicleShootWeapon:HandleWeaponStartReload() end

function AVehicleShootWeapon:HandleWeaponEndReload() end

---@param CurrentPawnState number
function AVehicleShootWeapon:HnadleScopeInAfterReload(CurrentPawnState) end

---@param Loc FVector2D
function AVehicleShootWeapon:HandleBeginTouchScreenInReloading(Loc) end

---@param FingerIndex ETouchIndex
function AVehicleShootWeapon:HandleEndTouchScreenInReloading(FingerIndex) end

---@return boolean
function AVehicleShootWeapon:GetUsePureReload() end

---@param OldValue FVehicleWeaponPureReloadInfo
function AVehicleShootWeapon:OnRep_PureReloadInfo(OldValue) end

function AVehicleShootWeapon:AfterSetRefSeatPlayer() end

---设置车载武器tick
---@param bEnabled boolean
---@param bIgnoreEnable boolean
function AVehicleShootWeapon:SetVehWeaponTickEnabled(bEnabled, bIgnoreEnable) end

function AVehicleShootWeapon:AfterReloadEnd() end

---@return boolean
function AVehicleShootWeapon:CheckIsAutonomousOrObTarget() end

---@param TargetLocation FVector
function AVehicleShootWeapon:SetTarget(TargetLocation) end

---@return FVector
function AVehicleShootWeapon:GetYawCenter() end

---获取当前载具武器的类型
---@return ESTExtraVehicleShootWeaponTypeAtDriverSeat
function AVehicleShootWeapon:GetVehicleWeaponType() end

function AVehicleShootWeapon:ForceSyncStateNotLocalControl() end
