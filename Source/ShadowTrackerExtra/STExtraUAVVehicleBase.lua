---@meta

---@class ESTExtraUAVVehicleState
---@field UAVS_Init number
---@field UAVS_Using number
---@field UAVS_StandBy number
---@field UAVS_PowerOff number
---@field UAVS_Recalling number
---@field UAVS_Disappearing number
---@field UAVS_Destroy number
---@field UAVS_SelfDestruct number
---@field UAVS_InWater number
---@field UAVS_Max number
ESTExtraUAVVehicleState = {}


---@class FDriverAttachmentType
---@field StaticMesh number
---@field SkeletalMesh number
FDriverAttachmentType = {}


---@class FDriverAttachmentData
---@field AttachType FDriverAttachmentType
---@field AttachmentDataName string
---@field bLoopAnim boolean
---@field AttachSocket string
---@field AttachDelayTime number
---@field DettachDelayTime number
---@field IsShouldUpdateAttach boolean
---@field IsAttachmentShouldVisible boolean
---@field AttachDelayDeltaTime number
FDriverAttachmentData = {}


---@class FVehicleUAVStateChangedDelegate : ULuaMulticastDelegate
FVehicleUAVStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InVehicleUAVState: ESTExtraUAVVehicleState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleUAVStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InVehicleUAVState ESTExtraUAVVehicleState
function FVehicleUAVStateChangedDelegate:Broadcast(InVehicleUAVState) end


---@class FVehicleOnUAVShutDown : ULuaMulticastDelegate
FVehicleOnUAVShutDown = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleOnUAVShutDown:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
function FVehicleOnUAVShutDown:Broadcast(Character) end


---无人操控载具基类
---@class ASTExtraUAVVehicleBase: ASTExtraVehicleBase
---@field CameraBoneName string
---@field distanceToPlayer number
---@field OnVehicleUAVStateChanged FVehicleUAVStateChangedDelegate @载具健康状态变化
---@field FPP_TargetArmLength number
---@field TPP_TargetArmLength number
---@field UAVFPPCameraFovPercent number
---@field IsFPP boolean
---@field bCanSwitchFPP boolean
---@field UAVVehicleState ESTExtraUAVVehicleState
---@field bDelayChangeUAVState boolean
---@field DisableStateList ULuaArrayHelper<EPawnState>
---@field CoolDownTimeSpeed number
---@field CoolDownTimeMin number
---@field MaxOperateDistanceToPlayer number
---@field MaxOperateFalloffDistance number
---@field LowFuelWarning number
---@field SkillRecallingTime number
---@field SkillDisappearingTime number
---@field SkillDestoryTime number
---@field PowerOffTimerTime number
---@field MaxCameraFOV number
---@field MinCameraFOV number
---@field DriverAttachmentDataList ULuaArrayHelper<FDriverAttachmentData>
---@field TickLowerFrequencyInterval number
---@field WarningDistanceToPlayer number
---@field bOverMaxOperateFalloffDistanceDestroyVehicle boolean
---@field bFaceRotationWithPhysics boolean
---@field bInterpControlRotation boolean
---@field TargetControlRotation FRotator
---@field UAVRotation FRotator
---@field bNeedSyncUAVRotation boolean
---@field bNeedInterpRotationOnSpectator boolean
---@field bSmoothRotationOnSpectator boolean
---@field NeedInterpRotationOnSpectatorSpeed number
---@field bEnableCrouchAnim boolean
---@field bHaveStandByFeature boolean
---@field bShowStandByUI boolean
---@field bNeedCoolDown boolean
---@field bUseVehicleWeaponUI boolean
---@field bShowShootUIPanelHotReload boolean
---@field bShouldHideFreeCameraUI boolean
---@field bOnlyRevelantWithController boolean
---@field bUpdateVehicleWeaponViewPitch boolean
---@field bSyncCameraRotator boolean
---@field WeaponCameraRotator FRotator
---@field CurWeaponCameraRotator FRotator
---@field bEnablePostPhysXTickClient boolean
---@field bEnableUpdatePostUpdateEffect boolean
---@field bEnableClampUAVRot boolean
---@field bDisappearingForbidInput boolean
---@field ClampMaxPitch number
---@field ClampMaxRoll number
---@field ShutDownBloomWhenCharacterHurt boolean
---@field OpenCharacterReplicated boolean
---@field EnableUAVSeekEnemy boolean @是否开启无人机索敌功能
---@field SeekEnemyDistance number @无人机索敌距离
---@field WidgetTemplateID number @无人机索敌图标template id,在BP_ObjectPosMgr中配置
---@field TickEnemyDataInterval number @无人机索敌tick间隔
---@field EnemyTargetMap ULuaMapHelper<ASTExtraBaseCharacter, number>
---@field CheckCharacterAnimType boolean
---@field CurCharacterAnimType ECharacterVehicleAnimType
---@field OnUAVShutDown FVehicleOnUAVShutDown
local ASTExtraUAVVehicleBase = {}

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraUAVVehicleBase:HandleOnMeshHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---获取无人机到玩家的距离
---@return number
function ASTExtraUAVVehicleBase:GetDisToPlayer() end

---@param isFreeMode boolean
function ASTExtraUAVVehicleBase:SendToServerChangeCameraMode(isFreeMode) end

---@param isFreeMode boolean
function ASTExtraUAVVehicleBase:SendToAllChangeCameraMode(isFreeMode) end

function ASTExtraUAVVehicleBase:SendToServerClientInitOK() end

function ASTExtraUAVVehicleBase:ServerRecall() end

function ASTExtraUAVVehicleBase:ServerPause() end

function ASTExtraUAVVehicleBase:ServerUse() end

---@param VUC UVehicleUserComponent
function ASTExtraUAVVehicleBase:ServerEnter(VUC) end

---@param isFirstPerson boolean
function ASTExtraUAVVehicleBase:SendToServerIsFPP(isFirstPerson) end

---@param percent number
function ASTExtraUAVVehicleBase:SendToServerUAVFPPCameraFovPercent(percent) end

function ASTExtraUAVVehicleBase:OnRep_IsFPPChanged() end

function ASTExtraUAVVehicleBase:OnRep_FPPCameraFovChanged() end

---@param IsNewFPP boolean
---@param IsInitSetting boolean
---@return boolean
function ASTExtraUAVVehicleBase:SetCurrentPersonPerspective(IsNewFPP, IsInitSetting) end

---@param IsNewFPP boolean
---@param IsUseLerp boolean
---@param IsForceSwitch boolean
---@return boolean
function ASTExtraUAVVehicleBase:LocalSwitchPersonPerspective(IsNewFPP, IsUseLerp, IsForceSwitch) end

---@return boolean
function ASTExtraUAVVehicleBase:CheckCanSwitchFPP() end

function ASTExtraUAVVehicleBase:SetViewTargetAgainForOB() end

function ASTExtraUAVVehicleBase:OnRep_UAVVehicleState() end

---@param newState ESTExtraUAVVehicleState
function ASTExtraUAVVehicleBase:SetUAVVehicleState(newState) end

function ASTExtraUAVVehicleBase:ClearAllAttachement() end

---@param factor number
function ASTExtraUAVVehicleBase:SetFPPCameraFov(factor) end

function ASTExtraUAVVehicleBase:WarningDistanceToPlayerEvent() end

---@return number
function ASTExtraUAVVehicleBase:GetBulletNum() end

---@param DeltaTime number
function ASTExtraUAVVehicleBase:TickTargetControlRotation(DeltaTime) end

---@param UAVRot FRotator
function ASTExtraUAVVehicleBase:SyncUAVRotation(UAVRot) end

function ASTExtraUAVVehicleBase:OnRep_UAVRotation() end

---@param NewCameraRot FRotator
function ASTExtraUAVVehicleBase:SyncWeaponCameraRotator(NewCameraRot) end

function ASTExtraUAVVehicleBase:UpdateVehicleWeaponPitch() end

function ASTExtraUAVVehicleBase:UpdatePostUpdateEffect() end

---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function ASTExtraUAVVehicleBase:HandlePlayerTakeDamage(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param NewValue ASTExtraBaseCharacter
function ASTExtraUAVVehicleBase:SetOwnerCharacter(NewValue) end

function ASTExtraUAVVehicleBase:OnRep_OwnerCharacter() end

function ASTExtraUAVVehicleBase:ClearEnemyData() end

---@param EnemyTarget ASTExtraBaseCharacter
function ASTExtraUAVVehicleBase:AddEnemyTarget(EnemyTarget) end

function ASTExtraUAVVehicleBase:ShowAllEnemyTarget() end

function ASTExtraUAVVehicleBase:HideAllEnemyTarget() end

---@return boolean
function ASTExtraUAVVehicleBase:UAVCanPause() end
