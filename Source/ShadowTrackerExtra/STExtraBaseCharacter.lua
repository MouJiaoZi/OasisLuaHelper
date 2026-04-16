---@meta

---@class EPlayerHurtAnimType
---@field EPlayerHurtAnim_None number
---@field EPlayerHurtAnim_Point number
---@field EPlayerHurtAnim_Melee number
---@field EPlayerHurtAnim_Max number
EPlayerHurtAnimType = {}


---@class EPaintDecalTargetValidationType
---@field ValidTarget number
---@field InvalidTarget number
---@field OutrangeTarget number
EPaintDecalTargetValidationType = {}


---@class EDeltaRotationTest
---@field Prone number
---@field KnockedDown number
EDeltaRotationTest = {}


---@class EMainCharMontagePlayType
---@field EMainCharMontagePlay_All number @全部
---@field EMainCharMontagePlay_TPP number @第三人称
---@field EMainCharMontagePlay_FPP number @第一人称
---@field EMainCharMontagePlay_TPPVeh number @第三人称载具
---@field EMainCharMontagePlay_FPPVeh number @第一人称载具
---@field EMainCharMontagePlay_NewFPP number @新第一人称
---@field EMainCharMontagePlay_Max number
EMainCharMontagePlayType = {}


---@class EBodyPosition
---@field Non number @无
---@field BodyHead number @脑袋
---@field BodyBody number @大粗身体
---@field BodyFoot number @脚
---@field BodyTPPSpringArm number @第三人称相机臂点位置
---@field BodyTPPCamera number @第三人称相机位置
EBodyPosition = {}


---@class ENightVisionType
---@field None number @关闭
---@field NightVision number @夜视仪
---@field HelmetNightVision number @头戴式夜视仪
---@field SightNightVision number @准镜式夜视仪
---@field ThermalImaging number @准镜热成像
ENightVisionType = {}


---@class ENightVisionDisableType
---@field Backpack number @背包
---@field Weapon number @武器
---@field Buff number @Buff
---@field SwitchViewTarget number @切换视角
---@field Other1 number @备用1
---@field Other2 number @备用2
ENightVisionDisableType = {}


---@class EDyingFaceRotBlendType
---@field DyingFaceRotBlend_None number
---@field DyingFaceRotBlend_Unequip number
---@field DyingFaceRotBlend_Move number
---@field DyingFaceRotBlend_OutThs number
EDyingFaceRotBlendType = {}


---@class EFaceRotCheckRetType
---@field FaceRotCheckRet_DisableSeparation number
---@field FaceRotCheckRet_EnableSeparation number
---@field FaceRotCheckRet_NeedBlend number
EFaceRotCheckRetType = {}


---@class ELaunchControlEffectState
---@field ELCES_Default number
---@field ELCES_In number
---@field ELCES_Out number
---@field ELCES_Launch number
ELaunchControlEffectState = {}


---@class ELaunchControlCharacterState
---@field ELCPS_Driver number
---@field ELCPS_Passenger number
---@field ELCPS_PassengerLeanOut number
---@field ELCPS_PassengerScopeIn number
ELaunchControlCharacterState = {}


---@class FCoverAllAvatarMeshInfo
---@field bPutOn boolean
---@field bContainsAnimBP boolean
---@field bDelay boolean
FCoverAllAvatarMeshInfo = {}


---@class FAutoDropDownData
---@field ItemTableID number
---@field ItemCount number
---@field IsRandom boolean
FAutoDropDownData = {}


---@class FActivitySubAnimInfo
---@field bSetUp boolean
---@field SubInstanceClass UAnimInstance
---@field SlotName string
FActivitySubAnimInfo = {}


---@class FActivityViewTargetInfo
---@field bSetUp boolean
---@field BlendTime number
FActivityViewTargetInfo = {}


---@class FActivityUIMaskInfo
---@field bSetUp boolean
---@field Param string
FActivityUIMaskInfo = {}


---@class FSyncAKEvent
---@field AkEventID number
---@field AkLocation FVector
FSyncAKEvent = {}


---@class FSimViewData
---@field ViewPitchYaw number
---@field ViewRoll number
---@field DataExternded number
---@field RelativeYawToPlayer number
FSimViewData = {}


---@class FSimViewDataWrapper
---@field SVD FSimViewData
---@field Time number
FSimViewDataWrapper = {}


---@class FAnimStatusKeyList
FAnimStatusKeyList = {}


---@class FPlayerAnimList
---@field ReloadAnim FPlayerAnimData
---@field ChangePoseAnim FPlayerAnimData
---@field PickUpAnim FPlayerAnimData
FPlayerAnimList = {}


---@class FAnimVehParamList
---@field IsLeanOut boolean
---@field IsDriver boolean
---@field IsSwitchingSeat boolean
---@field IsIdleAnimReplaced boolean
---@field VacateHight number
---@field IsVehicleMotorbike boolean
---@field VehViewRotation FRotator
---@field VehMoveVelocity FVector
---@field FPPHeadExtraOffset FVector
---@field SeatWeaponHoldType EVHSeatWeaponHoldType
---@field SeatSpecialType EVHSeatSpecialType
---@field VehicleType ESTExtraVehicleType
---@field LeanOutPercentage number
FAnimVehParamList = {}


---@class FDamageCauserSimpleVehicleInfo
---@field VehicleType ESTExtraVehicleType
---@field AssignCampId number
---@field TeamID number
---@field VehicleUID number
---@field KillerUID number
---@field WeaponType number
FDamageCauserSimpleVehicleInfo = {}


---@class FDamageCauserRecordData
---@field Time number
---@field Damage number
---@field StatusChangeMargin number
---@field DamageType number
---@field AdditionalParam number
---@field DamageCauserSimpleVehicleInfo FDamageCauserSimpleVehicleInfo
FDamageCauserRecordData = {}


---@class FCharacterEnergyPhaseBuffNameWrapper
---@field BuffNameList ULuaArrayHelper<string>
FCharacterEnergyPhaseBuffNameWrapper = {}


---@class FCharacterEnergyPhase
---@field MakeEffectSection number
---@field BuffName FCharacterEnergyPhaseBuffNameWrapper
FCharacterEnergyPhase = {}


---@class FCharacterEnergyData
---@field EnergyMax number
---@field EnergyCurrent number
---@field EnergyAttenuateScale number
---@field EnergyEffactPhase ULuaArrayHelper<FCharacterEnergyPhase>
---@field AttenuationPeriod number
---@field AttenuationAmount number
FCharacterEnergyData = {}


---@class FParachuteFollowState
---@field FollowState EFollowState
---@field LeaderIdx number
---@field RideLeaderIdx number
---@field RideOwnerIdx number
---@field bInVehicleCraft boolean
FParachuteFollowState = {}


---@class FParachuteRideInvitationList
---@field InviteMeRidePlayerNames ULuaArrayHelper<string>
---@field ApplyToRidePlayerNames ULuaArrayHelper<string>
---@field LatestPlayerName string
FParachuteRideInvitationList = {}


---@class FInjuryParticleAttachOffset
---@field MovementMode EMovementMode
---@field AttachTransform FTransform
---@field AttachLocationType EAttachLocation
FInjuryParticleAttachOffset = {}


---@class FHeroRelatedData
---@field HeroID number
---@field SkillID number
FHeroRelatedData = {}


---@class FPlayMontageData
---@field InPlayRate number
---@field InStartPosition number
---@field StartSectionName string
---@field PlayType EMainCharMontagePlayType
---@field IsPlay boolean
---@field PlayDirectly boolean
FPlayMontageData = {}


---@class FAimOffsetData
---@field AimOffsetTargetPitch number
---@field AimOffsetVelocity number
FAimOffsetData = {}


---@class FKOFActivityData
---@field ActivityHealth number
---@field ReActivityHealthTime number
---@field HitInterval number
---@field SwimParticleOffset number
---@field ActivityHealthOverAudio UAkAudioEvent
---@field ActivityHealthOverParticle UParticleSystem
---@field ActivityHealthHitParticle UParticleSystem
---@field ActivityHealthOverAnim UAnimationAsset
---@field ActivityHealthHitAnim UAnimationAsset
---@field NeedHitAnim boolean
FKOFActivityData = {}


---@class FFootprintActorArrayInfo
---@field CachedTransform ULuaArrayHelper<FTransform>
FFootprintActorArrayInfo = {}


---@class FPersonModeTypeData
---@field FPPPersonMode boolean
---@field Priority number
---@field PersonModeTypeName string
FPersonModeTypeData = {}


---@class FCharacterBodyOffset
---@field HeadOffset FVector
---@field PitchOffset FVector
---@field FootOffset FVector
---@field TPPSpringArmOffset FVector
FCharacterBodyOffset = {}


---@class FUGCMoveSpeedScaleModifyItem
---@field AttrModifyItemName string
---@field AttrName string
---@field ValidPawnStateList ULuaArrayHelper<EPawnState>
---@field ModifierValue number
FUGCMoveSpeedScaleModifyItem = {}


---@class FUGCMoveSpeedScaleModifyValueItem
---@field AttrModifyItemName string
---@field ModifierValue number
FUGCMoveSpeedScaleModifyValueItem = {}


---@class FKillDataAdditional
---@field DamageType number
---@field AdditionalParam number
---@field IsHeadShot boolean
---@field ResultHealthStatus number
---@field KillerKillCount number
---@field finalDamage number
---@field IsKillEnemy boolean
FKillDataAdditional = {}


---@class FVectorInt16
---@field X number
---@field Y number
---@field Z number
FVectorInt16 = {}


---@class FCharacterRepSubMovement
---@field LocationX number
---@field LocationY number
---@field LocationZ number
---@field LinearVelocity FVector
---@field Rotation FRotator
---@field AngularVelocity FVector
---@field bSimulatedPhysicSleep number @If set, RootComponent should be sleeping.
---@field bRepPhysics number @If set, additional physic data (angular velocity) will be replicated.
---@field bEnableSerializeSeparate number
FCharacterRepSubMovement = {}


---@class FRepMovementNew
---@field Location FVector_NetQuantize100
---@field BlockIDX number
---@field BlockIDY number
---@field BlockIDZ number
---@field SubLocation FVectorInt16
---@field SubMovementData any
---@field bEnableVerify boolean
FRepMovementNew = {}


---@class FRepTimesCounter
FRepTimesCounter = {}


---@class FRefreshMoveAttrCacheContext
FRefreshMoveAttrCacheContext = {}


---@class FVehicleHitData
FVehicleHitData = {}


---@class FRescueUIDataForReplay
---@field bShow boolean
---@field bRescueSelf boolean
---@field bIsHelper boolean
---@field ReduceTime number
---@field ServerTime number
---@field InfoText string
FRescueUIDataForReplay = {}


---@class FEnableWeaponAbilityData
---@field BindWeaponSkinID number
---@field WeaponAbilityID number
FEnableWeaponAbilityData = {}


---@class FShootDamageValueData
---@field ShootDamageValueList ULuaArrayHelper<number>
---@field DelayTimeList ULuaArrayHelper<number>
---@field ClientShootTimeTimeListCache ULuaArrayHelper<number>
---@field HitClientTimeListCache ULuaArrayHelper<number>
FShootDamageValueData = {}


---@class FVehicleLaunchControlEffectData
---@field LaunchControlEffectState ELaunchControlEffectState
---@field CharacterState ELaunchControlCharacterState
FVehicleLaunchControlEffectData = {}


---@class FNearDeathHitDownDataStruct
---@field HitDownTimeStamp number
---@field bIsHitDown boolean
---@field e_HitDownPoseType ECharacterPoseType
---@field bIsMoveEnter boolean
---@field bIsJumpEnter boolean
---@field bIsHighFallingEnter boolean
---@field HitDownDirIndex number
---@field HitDownState number
---@field HitDownDir_Forward number
---@field HitDownDir_Right number
FNearDeathHitDownDataStruct = {}


---@class FPeekOptClientCacheData
FPeekOptClientCacheData = {}


---@class FOnEquipZoomScope : ULuaMulticastDelegate
FOnEquipZoomScope = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ZoomValue: number, ScopeType: ESightType, UseZoomScope: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEquipZoomScope:Add(Callback, Obj) end

---触发 Lua 广播
---@param ZoomValue number
---@param ScopeType ESightType
---@param UseZoomScope boolean
function FOnEquipZoomScope:Broadcast(ZoomValue, ScopeType, UseZoomScope) end


---@class FScopeZoomValueChange : ULuaMulticastDelegate
FScopeZoomValueChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ZoomValue: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FScopeZoomValueChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param ZoomValue number
function FScopeZoomValueChange:Broadcast(ZoomValue) end


---@class FOriginJoystickInputChange : ULuaMulticastDelegate
FOriginJoystickInputChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Input: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOriginJoystickInputChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param Input FVector
function FOriginJoystickInputChange:Broadcast(Input) end


---@class FCharacterHpGoZeroDelegate : ULuaMulticastDelegate
FCharacterHpGoZeroDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Instigator: AController, Victim: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterHpGoZeroDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Instigator AController
---@param Victim ASTExtraBaseCharacter
function FCharacterHpGoZeroDelegate:Broadcast(Instigator, Victim) end


---@class FOnRescueOtherSucceed : ULuaSingleDelegate
FOnRescueOtherSucceed = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRescueOtherSucceed:Bind(Callback, Obj) end

---执行委托
function FOnRescueOtherSucceed:Execute() end


---@class FOnRecoveredByMed : ULuaSingleDelegate
FOnRecoveredByMed = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnRecoveredByMed:Bind(Callback, Obj) end

---执行委托
function FOnRecoveredByMed:Execute() end


---@class FAnimInstanceChangeDelegate : ULuaMulticastDelegate
FAnimInstanceChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerCharacter: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAnimInstanceChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerCharacter ASTExtraBaseCharacter
function FAnimInstanceChangeDelegate:Broadcast(OwnerCharacter) end


---@class FBroadcastOneCharacterDelegate : ULuaMulticastDelegate
FBroadcastOneCharacterDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LandedCharacter: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FBroadcastOneCharacterDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param LandedCharacter ASTExtraBaseCharacter
function FBroadcastOneCharacterDelegate:Broadcast(LandedCharacter) end


---@class FOnWeaponStateDSVSCheck : ULuaMulticastDelegate
FOnWeaponStateDSVSCheck = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TheWeapon: ASTExtraWeapon, Type: EFreshWeaponStateType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeaponStateDSVSCheck:Add(Callback, Obj) end

---触发 Lua 广播
---@param TheWeapon ASTExtraWeapon
---@param Type EFreshWeaponStateType
function FOnWeaponStateDSVSCheck:Broadcast(TheWeapon, Type) end


---@class FOnDSSkillStartDelegate : ULuaMulticastDelegate
FOnDSSkillStartDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SkillCharacter: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDSSkillStartDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SkillCharacter ASTExtraBaseCharacter
function FOnDSSkillStartDelegate:Broadcast(SkillCharacter) end


---@class FDSCustomMovementSoundDelegate : ULuaMulticastDelegate
FDSCustomMovementSoundDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TheCharacter: ASTExtraBaseCharacter, CustomMovementMode: ECustomMovmentMode, Param: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FDSCustomMovementSoundDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TheCharacter ASTExtraBaseCharacter
---@param CustomMovementMode ECustomMovmentMode
---@param Param number
function FDSCustomMovementSoundDelegate:Broadcast(TheCharacter, CustomMovementMode, Param) end


---@class FIllegalPunishTypeForReplay : ULuaMulticastDelegate
FIllegalPunishTypeForReplay = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TypeID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FIllegalPunishTypeForReplay:Add(Callback, Obj) end

---触发 Lua 广播
---@param TypeID number
function FIllegalPunishTypeForReplay:Broadcast(TypeID) end


---@class FOnTakeDamageModify : ULuaSingleDelegate
FOnTakeDamageModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, FinalDamage: number, DamageEvent: FDamageEvent, EventInstigator: AController, DamageCauser: AActor, ExFinalDamage: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTakeDamageModify:Bind(Callback, Obj) end

---执行委托
---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
function FOnTakeDamageModify:Execute(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage) end


---@class FOnTakeFallingDamageModify : ULuaSingleDelegate
FOnTakeFallingDamageModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, FinalDamage: number, DamageEvent: FDamageEvent, EventInstigator: AController) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTakeFallingDamageModify:Bind(Callback, Obj) end

---执行委托
---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
function FOnTakeFallingDamageModify:Execute(FinalDamage, DamageEvent, EventInstigator) end


---@class FOnTakeVehicleDamageModify : ULuaSingleDelegate
FOnTakeVehicleDamageModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, FinalDamage: number, DamageEvent: FDamageEvent, EventInstigator: AController) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTakeVehicleDamageModify:Bind(Callback, Obj) end

---执行委托
---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
function FOnTakeVehicleDamageModify:Execute(FinalDamage, DamageEvent, EventInstigator) end


---@class FOnTakeDamageEndModify : ULuaSingleDelegate
FOnTakeDamageEndModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, FinalDamage: number, DamageEvent: FDamageEvent, EventInstigator: AController, DamageCauser: AActor, ExFinalDamage: number, IsHeadShot: boolean, DamageHitPosition: number, Params: FTakeDamageParams) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTakeDamageEndModify:Bind(Callback, Obj) end

---执行委托
---@param FinalDamage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param ExFinalDamage number
---@param IsHeadShot boolean
---@param DamageHitPosition number
---@param Params FTakeDamageParams
function FOnTakeDamageEndModify:Execute(FinalDamage, DamageEvent, EventInstigator, DamageCauser, ExFinalDamage, IsHeadShot, DamageHitPosition, Params) end


---@class FOnModifyBodyPartDurability : ULuaSingleDelegate
FOnModifyBodyPartDurability = {}

---绑定回调函数
---@param Callback fun(Obj: any, ReduceDurability: number, DamageEvent: FDamageEvent, DamageCauser: AActor, BodyDurabilityName: string) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnModifyBodyPartDurability:Bind(Callback, Obj) end

---执行委托
---@param ReduceDurability number
---@param DamageEvent FDamageEvent
---@param DamageCauser AActor
---@param BodyDurabilityName string
function FOnModifyBodyPartDurability:Execute(ReduceDurability, DamageEvent, DamageCauser, BodyDurabilityName) end


---@class FOnMoveVoiceCheckDisModify : ULuaSingleDelegate
FOnMoveVoiceCheckDisModify = {}

---绑定回调函数
---@param Callback fun(Obj: any, FinalCheckDis: number, AutonomousCharacter: ASTExtraBaseCharacter, SimulatedCharacter: ASTExtraBaseCharacter) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMoveVoiceCheckDisModify:Bind(Callback, Obj) end

---执行委托
---@param FinalCheckDis number
---@param AutonomousCharacter ASTExtraBaseCharacter
---@param SimulatedCharacter ASTExtraBaseCharacter
function FOnMoveVoiceCheckDisModify:Execute(FinalCheckDis, AutonomousCharacter, SimulatedCharacter) end


---@class FEnterLandingEvent : ULuaMulticastDelegate
FEnterLandingEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LastFrameVelocity: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEnterLandingEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param LastFrameVelocity FVector
function FEnterLandingEvent:Broadcast(LastFrameVelocity) end


---@class FSwitchPPEvent : ULuaMulticastDelegate
FSwitchPPEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsFPP: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSwitchPPEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsFPP boolean
function FSwitchPPEvent:Broadcast(bIsFPP) end


---@class FOnCharacterPeekDelegate : ULuaMulticastDelegate
FOnCharacterPeekDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsPeeking: boolean, IsPeekingLeft: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterPeekDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsPeeking boolean
---@param IsPeekingLeft boolean
function FOnCharacterPeekDelegate:Broadcast(IsPeeking, IsPeekingLeft) end


---@class FOnMainCharAnimInstanceInit : ULuaSingleDelegate
FOnMainCharAnimInstanceInit = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnMainCharAnimInstanceInit:Bind(Callback, Obj) end

---执行委托
function FOnMainCharAnimInstanceInit:Execute() end


---@class FOnClientPlayerLanded : ULuaMulticastDelegate
FOnClientPlayerLanded = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientPlayerLanded:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
function FOnClientPlayerLanded:Broadcast(PlayerKey) end


---@class FPaintDecalClientCallBack : ULuaMulticastDelegate
FPaintDecalClientCallBack = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DecalID: number, FancyDecalDyeNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPaintDecalClientCallBack:Add(Callback, Obj) end

---触发 Lua 广播
---@param DecalID number
---@param FancyDecalDyeNum number
function FPaintDecalClientCallBack:Broadcast(DecalID, FancyDecalDyeNum) end


---@class FOnPlayerUnderAttack : ULuaMulticastDelegate
FOnPlayerUnderAttack = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Pawn: ASTExtraBaseCharacter, bNewAttacked: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerUnderAttack:Add(Callback, Obj) end

---触发 Lua 广播
---@param Pawn ASTExtraBaseCharacter
---@param bNewAttacked boolean
function FOnPlayerUnderAttack:Broadcast(Pawn, bNewAttacked) end


---@class FCommonFlagDataChangeDelegate : ULuaMulticastDelegate
FCommonFlagDataChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OwnerCharacter: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCommonFlagDataChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param OwnerCharacter ASTExtraBaseCharacter
function FCommonFlagDataChangeDelegate:Broadcast(OwnerCharacter) end


---@class FOnCarryDelegate : ULuaMulticastDelegate
FOnCarryDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BeCarriedPawn: ASTExtraBaseCharacter, CarringState: ECarringState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCarryDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BeCarriedPawn ASTExtraBaseCharacter
---@param CarringState ECarringState
function FOnCarryDelegate:Broadcast(BeCarriedPawn, CarringState) end


---@class FOnStartCarryDelegate : ULuaMulticastDelegate
FOnStartCarryDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsCarrier: boolean, Other: ASTExtraCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStartCarryDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsCarrier boolean
---@param Other ASTExtraCharacter
function FOnStartCarryDelegate:Broadcast(bIsCarrier, Other) end


---@class FOnCarryDeadBoxDelegate : ULuaMulticastDelegate
FOnCarryDeadBoxDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BeCarriedDeadBox: APlayerTombBox, CarringState: ECarringState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCarryDeadBoxDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BeCarriedDeadBox APlayerTombBox
---@param CarringState ECarringState
function FOnCarryDeadBoxDelegate:Broadcast(BeCarriedDeadBox, CarringState) end


---@class FOnStartCarryDeadBoxDelegate : ULuaMulticastDelegate
FOnStartCarryDeadBoxDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, TargetDeadBox: APlayerTombBox) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStartCarryDeadBoxDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param TargetDeadBox APlayerTombBox
function FOnStartCarryDeadBoxDelegate:Broadcast(TargetDeadBox) end


---@class FOnCameraModeChangeDelegate : ULuaMulticastDelegate
FOnCameraModeChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, oldMode: EPlayerCameraMode, newMode: EPlayerCameraMode) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCameraModeChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param oldMode EPlayerCameraMode
---@param newMode EPlayerCameraMode
function FOnCameraModeChangeDelegate:Broadcast(oldMode, newMode) end


---@class FOnChangeInCircle : ULuaMulticastDelegate
FOnChangeInCircle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Pawn: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnChangeInCircle:Add(Callback, Obj) end

---触发 Lua 广播
---@param Pawn ASTExtraBaseCharacter
function FOnChangeInCircle:Broadcast(Pawn) end


---@class FOnEnterOrLeaveInteractivingState : ULuaMulticastDelegate
FOnEnterOrLeaveInteractivingState = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerPawn: ASTExtraBaseCharacter, bEnterOrLeave: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEnterOrLeaveInteractivingState:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerPawn ASTExtraBaseCharacter
---@param bEnterOrLeave boolean
function FOnEnterOrLeaveInteractivingState:Broadcast(PlayerPawn, bEnterOrLeave) end


---@class FOnOpenTreasureBox : ULuaMulticastDelegate
FOnOpenTreasureBox = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Pawn: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnOpenTreasureBox:Add(Callback, Obj) end

---触发 Lua 广播
---@param Pawn ASTExtraBaseCharacter
function FOnOpenTreasureBox:Broadcast(Pawn) end


---@class FFinishCDBarUIDelegate : ULuaSingleDelegate
FFinishCDBarUIDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFinishCDBarUIDelegate:Bind(Callback, Obj) end

---执行委托
---@param Character ASTExtraBaseCharacter
function FFinishCDBarUIDelegate:Execute(Character) end


---@class FFinishCDBarUIMultiDelegate : ULuaMulticastDelegate
FFinishCDBarUIMultiDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FFinishCDBarUIMultiDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
function FFinishCDBarUIMultiDelegate:Broadcast(Character) end


---@class FCancelCDBarUIDelegate : ULuaSingleDelegate
FCancelCDBarUIDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCancelCDBarUIDelegate:Bind(Callback, Obj) end

---执行委托
---@param Character ASTExtraBaseCharacter
function FCancelCDBarUIDelegate:Execute(Character) end


---@class FCancelCDBarUIMultiDelegate : ULuaMulticastDelegate
FCancelCDBarUIMultiDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCancelCDBarUIMultiDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
function FCancelCDBarUIMultiDelegate:Broadcast(Character) end


---@class FTickCDBarConditionDelegate : ULuaSingleDelegate
FTickCDBarConditionDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTickCDBarConditionDelegate:Bind(Callback, Obj) end

---执行委托
---@param Character ASTExtraBaseCharacter
function FTickCDBarConditionDelegate:Execute(Character) end


---@class FOnVaultStartDelegate : ULuaMulticastDelegate
FOnVaultStartDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FVector, Param2: FRotator) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVaultStartDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FVector
---@param Param2 FRotator
function FOnVaultStartDelegate:Broadcast(Param1, Param2) end


---@class FOnAIVaultStartDelegate : ULuaMulticastDelegate
FOnAIVaultStartDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FVector, Param2: FRotator, Param3: FRotator) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAIVaultStartDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FVector
---@param Param2 FRotator
---@param Param3 FRotator
function FOnAIVaultStartDelegate:Broadcast(Param1, Param2, Param3) end


---@class FOnVaultStateChange : ULuaMulticastDelegate
FOnVaultStateChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsVault: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnVaultStateChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsVault boolean
function FOnVaultStateChange:Broadcast(bIsVault) end


---@class FOnEnergyChange : ULuaMulticastDelegate
FOnEnergyChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurEngery: number, PrevValue: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEnergyChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurEngery number
---@param PrevValue number
function FOnEnergyChange:Broadcast(CurEngery, PrevValue) end


---@class FOnChangeAnimInstanceLOD : ULuaMulticastDelegate
FOnChangeAnimInstanceLOD = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter, LODLevel: number, ForceUpdate: boolean, LockKeyName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnChangeAnimInstanceLOD:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
---@param LODLevel number
---@param ForceUpdate boolean
---@param LockKeyName string
function FOnChangeAnimInstanceLOD:Broadcast(Character, LODLevel, ForceUpdate, LockKeyName) end


---@class FOnClientBeFallDownHurtDelegate : ULuaMulticastDelegate
FOnClientBeFallDownHurtDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FallDownDirNum: number, DamageInstigatorPawn: APawn, DamageEvent: FDamageEvent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientBeFallDownHurtDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param FallDownDirNum number
---@param DamageInstigatorPawn APawn
---@param DamageEvent FDamageEvent
function FOnClientBeFallDownHurtDelegate:Broadcast(FallDownDirNum, DamageInstigatorPawn, DamageEvent) end


---@class FGetAnimInstanceLOD : ULuaSingleDelegate
FGetAnimInstanceLOD = {}

---绑定回调函数
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetAnimInstanceLOD:Bind(Callback, Obj) end

---执行委托
---@param Character ASTExtraBaseCharacter
function FGetAnimInstanceLOD:Execute(Character) end


---@class FOnGotoDieHandleAssistsDelegate : ULuaMulticastDelegate
FOnGotoDieHandleAssistsDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventInstigator: AController, DamageCauser: AActor, DamageEvent: FDamageEvent, _finalDamage: number, _hitImpulseDir: FVector, _hitInfo: FHitResult, bIsHeadShot: boolean, killer: ASTExtraPlayerState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnGotoDieHandleAssistsDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
---@param _finalDamage number
---@param _hitImpulseDir FVector
---@param _hitInfo FHitResult
---@param bIsHeadShot boolean
---@param killer ASTExtraPlayerState
function FOnGotoDieHandleAssistsDelegate:Broadcast(EventInstigator, DamageCauser, DamageEvent, _finalDamage, _hitImpulseDir, _hitInfo, bIsHeadShot, killer) end


---@class FOnEnableMoveExitSkillFreeCameraDelegate : ULuaSingleDelegate
FOnEnableMoveExitSkillFreeCameraDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEnableMoveExitSkillFreeCameraDelegate:Bind(Callback, Obj) end

---执行委托
function FOnEnableMoveExitSkillFreeCameraDelegate:Execute() end


---@class FCharacterEnterTurnEvent : ULuaMulticastDelegate
FCharacterEnterTurnEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsTurnLeft: boolean, DeltaTurnYaw: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterEnterTurnEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsTurnLeft boolean
---@param DeltaTurnYaw number
function FCharacterEnterTurnEvent:Broadcast(bIsTurnLeft, DeltaTurnYaw) end


---@class FPlayerVehAnimNeedUpdate : ULuaSingleDelegate
FPlayerVehAnimNeedUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerVehAnimNeedUpdate:Bind(Callback, Obj) end

---执行委托
function FPlayerVehAnimNeedUpdate:Execute() end


---@class FOnCharacterWeaponTriggerEventDelegate : ULuaMulticastDelegate
FOnCharacterWeaponTriggerEventDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraWeapon, Event: EWeaponTriggerEvent, EventData: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterWeaponTriggerEventDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraWeapon
---@param Event EWeaponTriggerEvent
---@param EventData string
function FOnCharacterWeaponTriggerEventDelegate:Broadcast(Weapon, Event, EventData) end


---@class FOnPreCalCamera : ULuaMulticastDelegate
FOnPreCalCamera = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPreCalCamera:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaTime number
function FOnPreCalCamera:Broadcast(DeltaTime) end


---@class FOnTryInterpPPCameraSwich : ULuaSingleDelegate
FOnTryInterpPPCameraSwich = {}

---绑定回调函数
---@param Callback fun(Obj: any, bIsFPP: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTryInterpPPCameraSwich:Bind(Callback, Obj) end

---执行委托
---@param bIsFPP boolean
function FOnTryInterpPPCameraSwich:Execute(bIsFPP) end


---@class FCharacterInventoryBrokenDestroy : ULuaMulticastDelegate
FCharacterInventoryBrokenDestroy = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DestoryBrokenPosition: EAvatarDamagePosition, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterInventoryBrokenDestroy:Add(Callback, Obj) end

---触发 Lua 广播
---@param DestoryBrokenPosition EAvatarDamagePosition
---@param DamageCauser AActor
function FCharacterInventoryBrokenDestroy:Broadcast(DestoryBrokenPosition, DamageCauser) end


---@class FUGCCustomModeShootTargetTraceStartLocDelegate : ULuaSingleDelegate
FUGCCustomModeShootTargetTraceStartLocDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, OwnerShootWeapon: ASTExtraShootWeapon, Start: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeShootTargetTraceStartLocDelegate:Bind(Callback, Obj) end

---执行委托
---@param OwnerShootWeapon ASTExtraShootWeapon
---@param Start FVector
function FUGCCustomModeShootTargetTraceStartLocDelegate:Execute(OwnerShootWeapon, Start) end


---@class FUGCCustomModeShootTargetTraceEndLocDelegate : ULuaSingleDelegate
FUGCCustomModeShootTargetTraceEndLocDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, OwnerShootWeapon: ASTExtraShootWeapon, End: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeShootTargetTraceEndLocDelegate:Bind(Callback, Obj) end

---执行委托
---@param OwnerShootWeapon ASTExtraShootWeapon
---@param End FVector
function FUGCCustomModeShootTargetTraceEndLocDelegate:Execute(OwnerShootWeapon, End) end


---@class FUGCCustomModeShootTargetTraceShootRotDelegate : ULuaSingleDelegate
FUGCCustomModeShootTargetTraceShootRotDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, OwnerShootWeapon: ASTExtraShootWeapon, ShootRot: FRotator) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeShootTargetTraceShootRotDelegate:Bind(Callback, Obj) end

---执行委托
---@param OwnerShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
function FUGCCustomModeShootTargetTraceShootRotDelegate:Execute(OwnerShootWeapon, ShootRot) end


---@class FUGCCustomModeShootTargetCalLocationDelegate : ULuaSingleDelegate
FUGCCustomModeShootTargetCalLocationDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, OwnerShootWeapon: ASTExtraShootWeapon, HitRet: FHitResult, ShootRot: FRotator, Ret: FVector) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeShootTargetCalLocationDelegate:Bind(Callback, Obj) end

---执行委托
---@param OwnerShootWeapon ASTExtraShootWeapon
---@param HitRet FHitResult
---@param ShootRot FRotator
---@param Ret FVector
function FUGCCustomModeShootTargetCalLocationDelegate:Execute(OwnerShootWeapon, HitRet, ShootRot, Ret) end


---@class FUGCCustomModeShootTargetRoughHitModeCheckDelegate : ULuaSingleDelegate
FUGCCustomModeShootTargetRoughHitModeCheckDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, OwnerShootWeapon: ASTExtraShootWeapon, HitRet: FHitResult) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FUGCCustomModeShootTargetRoughHitModeCheckDelegate:Bind(Callback, Obj) end

---执行委托
---@param OwnerShootWeapon ASTExtraShootWeapon
---@param HitRet FHitResult
function FUGCCustomModeShootTargetRoughHitModeCheckDelegate:Execute(OwnerShootWeapon, HitRet) end


---@class FOnBaseCharacterTickDelegate : ULuaMulticastDelegate
FOnBaseCharacterTickDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBaseCharacterTickDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaTime number
function FOnBaseCharacterTickDelegate:Broadcast(DeltaTime) end


---@class FHideOnVehicleChange : ULuaMulticastDelegate
FHideOnVehicleChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewHideOnVehicle: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FHideOnVehicleChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewHideOnVehicle boolean
function FHideOnVehicleChange:Broadcast(NewHideOnVehicle) end


---@class FParachuteFollowStateChanged : ULuaMulticastDelegate
FParachuteFollowStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LastFollowState: EFollowState, NowFollowState: EFollowState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FParachuteFollowStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param LastFollowState EFollowState
---@param NowFollowState EFollowState
function FParachuteFollowStateChanged:Broadcast(LastFollowState, NowFollowState) end


---@class FOnCalculatePickUpItemFlow : ULuaMulticastDelegate
FOnCalculatePickUpItemFlow = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SpesificID: number, Count: number, Location: FVector, SourceType: number, AdditionalParam: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCalculatePickUpItemFlow:Add(Callback, Obj) end

---触发 Lua 广播
---@param SpesificID number
---@param Count number
---@param Location FVector
---@param SourceType number
---@param AdditionalParam number
function FOnCalculatePickUpItemFlow:Broadcast(SpesificID, Count, Location, SourceType, AdditionalParam) end


---@class FOnJoyStickInteruptDelegate : ULuaSingleDelegate
FOnJoyStickInteruptDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnJoyStickInteruptDelegate:Bind(Callback, Obj) end

---执行委托
function FOnJoyStickInteruptDelegate:Execute() end


---@class FOnPlayerStateUpdated : ULuaMulticastDelegate
FOnPlayerStateUpdated = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InPlayerState: ASTExtraPlayerState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerStateUpdated:Add(Callback, Obj) end

---触发 Lua 广播
---@param InPlayerState ASTExtraPlayerState
function FOnPlayerStateUpdated:Broadcast(InPlayerState) end


---@class FOnPlayerTeleportDelegate : ULuaMulticastDelegate
FOnPlayerTeleportDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerCharacter: ASTExtraBaseCharacter, FromTransform: FTransform, DestinationTransform: FTransform) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerTeleportDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerCharacter ASTExtraBaseCharacter
---@param FromTransform FTransform
---@param DestinationTransform FTransform
function FOnPlayerTeleportDelegate:Broadcast(PlayerCharacter, FromTransform, DestinationTransform) end


---@class FOnPlayerBeforeTeleportDelegate : ULuaMulticastDelegate
FOnPlayerBeforeTeleportDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerCharacter: ASTExtraBaseCharacter, FromTransform: FTransform, DestinationTransform: FTransform) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerBeforeTeleportDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerCharacter ASTExtraBaseCharacter
---@param FromTransform FTransform
---@param DestinationTransform FTransform
function FOnPlayerBeforeTeleportDelegate:Broadcast(PlayerCharacter, FromTransform, DestinationTransform) end


---@class FOnBulletChangeDelegate : ULuaSingleDelegate
FOnBulletChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FOnBulletChangeDelegate:Execute() end


---@class FOnCharacterEnterRescueingStatusDelegate : ULuaMulticastDelegate
FOnCharacterEnterRescueingStatusDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsTurnIntoRescueing: boolean, IsRescuingSelf: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterEnterRescueingStatusDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsTurnIntoRescueing boolean
---@param IsRescuingSelf boolean
function FOnCharacterEnterRescueingStatusDelegate:Broadcast(IsTurnIntoRescueing, IsRescuingSelf) end


---@class FOnCharacterCarringStatusDelegate : ULuaMulticastDelegate
FOnCharacterCarringStatusDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bEnter: boolean, bCarried: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCarringStatusDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bEnter boolean
---@param bCarried boolean
function FOnCharacterCarringStatusDelegate:Broadcast(bEnter, bCarried) end


---@class FOnCharacterEnterCallingForRevivalStatus : ULuaMulticastDelegate
FOnCharacterEnterCallingForRevivalStatus = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsCalling: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterEnterCallingForRevivalStatus:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsCalling boolean
function FOnCharacterEnterCallingForRevivalStatus:Broadcast(bIsCalling) end


---@class FOnCharacterPickUpActorDelegate : ULuaMulticastDelegate
FOnCharacterPickUpActorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterPickUpActorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
function FOnCharacterPickUpActorDelegate:Broadcast(SelfRef) end


---@class FOnCharacterEnterBeRescueingStatusDelegate : ULuaMulticastDelegate
FOnCharacterEnterBeRescueingStatusDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsBeingRescued: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterEnterBeRescueingStatusDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsBeingRescued boolean
function FOnCharacterEnterBeRescueingStatusDelegate:Broadcast(bIsBeingRescued) end


---@class FOnCharacterWeaponStateChanged : ULuaMulticastDelegate
FOnCharacterWeaponStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurState: EFreshWeaponStateType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterWeaponStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurState EFreshWeaponStateType
function FOnCharacterWeaponStateChanged:Broadcast(CurState) end


---@class FOnCharacterStandByIdleAnimStateChanged : ULuaMulticastDelegate
FOnCharacterStandByIdleAnimStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsPlay: boolean, CurDynamicLoadingState: EDynamicLoadingAnimType, CurCharacterPoseType: ECharacterPoseType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterStandByIdleAnimStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsPlay boolean
---@param CurDynamicLoadingState EDynamicLoadingAnimType
---@param CurCharacterPoseType ECharacterPoseType
function FOnCharacterStandByIdleAnimStateChanged:Broadcast(bIsPlay, CurDynamicLoadingState, CurCharacterPoseType) end


---@class FOnCharacterWeaponReloadLastBullet : ULuaMulticastDelegate
FOnCharacterWeaponReloadLastBullet = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, RemainNum: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterWeaponReloadLastBullet:Add(Callback, Obj) end

---触发 Lua 广播
---@param RemainNum number
function FOnCharacterWeaponReloadLastBullet:Broadcast(RemainNum) end


---@class FOnBulletHitOnceDelegate : ULuaMulticastDelegate
FOnBulletHitOnceDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, BulletHitInfo: FBulletHitInfoUploadData, Weapon: ASTExtraShootWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBulletHitOnceDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param BulletHitInfo FBulletHitInfoUploadData
---@param Weapon ASTExtraShootWeapon
function FOnBulletHitOnceDelegate:Broadcast(BulletHitInfo, Weapon) end


---@class FOnWeaponFireModeChangeDelegate : ULuaMulticastDelegate
FOnWeaponFireModeChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraShootWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeaponFireModeChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraShootWeapon
function FOnWeaponFireModeChangeDelegate:Broadcast(Weapon) end


---@class FOnWeaponShootIntervalModeChangeDelegate : ULuaMulticastDelegate
FOnWeaponShootIntervalModeChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraShootWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnWeaponShootIntervalModeChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraShootWeapon
function FOnWeaponShootIntervalModeChangeDelegate:Broadcast(Weapon) end


---@class FOnPlayerAttrChangeDelegate : ULuaMulticastDelegate
FOnPlayerAttrChangeDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AttrName: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerAttrChangeDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param AttrName string
function FOnPlayerAttrChangeDelegate:Broadcast(AttrName) end


---@class FOnHideUIAfterPlayerDeadDelegate : ULuaSingleDelegate
FOnHideUIAfterPlayerDeadDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHideUIAfterPlayerDeadDelegate:Bind(Callback, Obj) end

---执行委托
function FOnHideUIAfterPlayerDeadDelegate:Execute() end


---@class FPreAttachToVehicleDelegate : ULuaMulticastDelegate
FPreAttachToVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InVehicle: ASTExtraVehicleBase, SeatType: ESTExtraVehicleSeatType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPreAttachToVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function FPreAttachToVehicleDelegate:Broadcast(InVehicle, SeatType) end


---@class FOnAttachedToVehicleDelegate : ULuaMulticastDelegate
FOnAttachedToVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InVehicle: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnAttachedToVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InVehicle ASTExtraVehicleBase
function FOnAttachedToVehicleDelegate:Broadcast(InVehicle) end


---@class FPreDetachedFromVehicleDelegate : ULuaMulticastDelegate
FPreDetachedFromVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LastVehicle: ASTExtraVehicleBase, SeatType: ESTExtraVehicleSeatType, LeavePos: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPreDetachedFromVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param LastVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param LeavePos FVector
function FPreDetachedFromVehicleDelegate:Broadcast(LastVehicle, SeatType, LeavePos) end


---@class FOnDetachedFromVehicleDelegate : ULuaMulticastDelegate
FOnDetachedFromVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, LastVehicle: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDetachedFromVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param LastVehicle ASTExtraVehicleBase
function FOnDetachedFromVehicleDelegate:Broadcast(LastVehicle) end


---@class FOnChangedVehicleSeatDelegate : ULuaSingleDelegate
FOnChangedVehicleSeatDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnChangedVehicleSeatDelegate:Bind(Callback, Obj) end

---执行委托
function FOnChangedVehicleSeatDelegate:Execute() end


---@class FOnCharacterCheckVoiceTriggerDelegate : ULuaMulticastDelegate
FOnCharacterCheckVoiceTriggerDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, nowActor: AActor, checkDis: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterCheckVoiceTriggerDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param nowActor AActor
---@param checkDis number
function FOnCharacterCheckVoiceTriggerDelegate:Broadcast(nowActor, checkDis) end


---@class FOnCharacterAttrChangedWithDetail : ULuaMulticastDelegate
FOnCharacterAttrChangedWithDetail = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NowActor: AActor, AttrName: string, ValueDelta: number, ResultValue: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterAttrChangedWithDetail:Add(Callback, Obj) end

---触发 Lua 广播
---@param NowActor AActor
---@param AttrName string
---@param ValueDelta number
---@param ResultValue number
function FOnCharacterAttrChangedWithDetail:Broadcast(NowActor, AttrName, ValueDelta, ResultValue) end


---@class FOnCharacterAttrChangedWithDetailExtra : ULuaMulticastDelegate
FOnCharacterAttrChangedWithDetailExtra = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NowActor: AActor, AttrName: string, ValueDelta: number, ResultValue: number, HitPos: EAvatarDamagePosition, EventInstigator: AController, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterAttrChangedWithDetailExtra:Add(Callback, Obj) end

---触发 Lua 广播
---@param NowActor AActor
---@param AttrName string
---@param ValueDelta number
---@param ResultValue number
---@param HitPos EAvatarDamagePosition
---@param EventInstigator AController
---@param DamageCauser AActor
function FOnCharacterAttrChangedWithDetailExtra:Broadcast(NowActor, AttrName, ValueDelta, ResultValue, HitPos, EventInstigator, DamageCauser) end


---@class FOnHandFoldedChanged : ULuaMulticastDelegate
FOnHandFoldedChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CollisonState: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHandFoldedChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param CollisonState boolean
function FOnHandFoldedChanged:Broadcast(CollisonState) end


---@class FCharacterAimModeChanged : ULuaMulticastDelegate
FCharacterAimModeChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerCameraMode: EPlayerCameraMode) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterAimModeChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerCameraMode EPlayerCameraMode
function FCharacterAimModeChanged:Broadcast(PlayerCameraMode) end


---@class FIsEnterNearDeathDelegate : ULuaMulticastDelegate
FIsEnterNearDeathDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsEnter: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FIsEnterNearDeathDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsEnter boolean
function FIsEnterNearDeathDelegate:Broadcast(IsEnter) end


---@class FCharacterStartFireDelegate : ULuaMulticastDelegate
FCharacterStartFireDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterStartFireDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraWeapon
function FCharacterStartFireDelegate:Broadcast(Weapon) end


---@class FCharacterStopFireDelegate : ULuaMulticastDelegate
FCharacterStopFireDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterStopFireDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraWeapon
function FCharacterStopFireDelegate:Broadcast(Weapon) end


---@class FCharacterShootDelegate : ULuaMulticastDelegate
FCharacterShootDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Weapon: ASTExtraWeapon) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterShootDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Weapon ASTExtraWeapon
function FCharacterShootDelegate:Broadcast(Weapon) end


---@class FOnChangedFlyWingStateDelegate : ULuaMulticastDelegate
FOnChangedFlyWingStateDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsEnter: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnChangedFlyWingStateDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsEnter boolean
function FOnChangedFlyWingStateDelegate:Broadcast(IsEnter) end


---@class FOnDeathDelegate : ULuaMulticastDelegate
FOnDeathDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnDeathDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
function FOnDeathDelegate:Broadcast(Character) end


---@class FOnSwitchAngledSight : ULuaMulticastDelegate
FOnSwitchAngledSight = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, rot: FRotator) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSwitchAngledSight:Add(Callback, Obj) end

---触发 Lua 广播
---@param rot FRotator
function FOnSwitchAngledSight:Broadcast(rot) end


---@class FEmoteMontageFinishedDelegate : ULuaMulticastDelegate
FEmoteMontageFinishedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteID: number, EndReason: EEmoteEndReason) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEmoteMontageFinishedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteID number
---@param EndReason EEmoteEndReason
function FEmoteMontageFinishedDelegate:Broadcast(EmoteID, EndReason) end


---@class FOnPostTakeDamage : ULuaMulticastDelegate
FOnPostTakeDamage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter, Damage: number, DamageEvent: FDamageEvent, EventInstigator: AController, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostTakeDamage:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function FOnPostTakeDamage:Broadcast(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end


---@class FOnPostTakeDamageNew : ULuaMulticastDelegate
FOnPostTakeDamageNew = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter, Damage: number, DamageEvent: FDamageEvent, EventInstigator: AController, DamageCauser: AActor, Flag: EDamageEventFlags) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostTakeDamageNew:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@param Flag EDamageEventFlags
function FOnPostTakeDamageNew:Broadcast(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser, Flag) end


---@class FOnNotifyAddHealth : ULuaMulticastDelegate
FOnNotifyAddHealth = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter, Damage: number, DamageEvent: FDamageEvent, EventInstigator: AController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNotifyAddHealth:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
function FOnNotifyAddHealth:Broadcast(SelfRef, Damage, DamageEvent, EventInstigator) end


---@class FOnNotifyInitialDamage : ULuaMulticastDelegate
FOnNotifyInitialDamage = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter, Damage: number, DamageEvent: FDamageEvent, EventInstigator: AController, DamageCauser: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNotifyInitialDamage:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function FOnNotifyInitialDamage:Broadcast(SelfRef, Damage, DamageEvent, EventInstigator, DamageCauser) end


---@class FOnNotifyHurtDetailsEvent : ULuaMulticastDelegate
FOnNotifyHurtDetailsEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, FinalDamage: number, HurtDirection: FVector, HurtBodyType: EAvatarDamagePosition, HurtDamageType: EDamageType, HurtDamageDistance: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnNotifyHurtDetailsEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param FinalDamage number
---@param HurtDirection FVector
---@param HurtBodyType EAvatarDamagePosition
---@param HurtDamageType EDamageType
---@param HurtDamageDistance number
function FOnNotifyHurtDetailsEvent:Broadcast(FinalDamage, HurtDirection, HurtBodyType, HurtDamageType, HurtDamageDistance) end


---@class FOnEnterState : ULuaMulticastDelegate
FOnEnterState = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter, state: EPawnState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEnterState:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
---@param state EPawnState
function FOnEnterState:Broadcast(SelfRef, state) end


---@class FOnReconnectNotifyDelegate : ULuaSingleDelegate
FOnReconnectNotifyDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReconnectNotifyDelegate:Bind(Callback, Obj) end

---执行委托
function FOnReconnectNotifyDelegate:Execute() end


---@class FOnStartInitDelegate : ULuaSingleDelegate
FOnStartInitDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnStartInitDelegate:Bind(Callback, Obj) end

---执行委托
function FOnStartInitDelegate:Execute() end


---@class FPlayerTryReloadDelegate : ULuaSingleDelegate
FPlayerTryReloadDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerTryReloadDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerTryReloadDelegate:Execute() end


---@class FPlayerEnterSafeZonDelegate : ULuaSingleDelegate
FPlayerEnterSafeZonDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerEnterSafeZonDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerEnterSafeZonDelegate:Execute() end


---@class FPlayerLeaveKillZoneDelegate : ULuaSingleDelegate
FPlayerLeaveKillZoneDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerLeaveKillZoneDelegate:Bind(Callback, Obj) end

---执行委托
function FPlayerLeaveKillZoneDelegate:Execute() end


---@class FAnimMontagePlayEvent : ULuaMulticastDelegate
FAnimMontagePlayEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MontageToPlay: UAnimMontage, IsPlay: boolean, PlayRate: number, StartSection: string, MontagePlayType: EMainCharMontagePlayType, StartPosition: number, PlayDirectly: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAnimMontagePlayEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param MontageToPlay UAnimMontage
---@param IsPlay boolean
---@param PlayRate number
---@param StartSection string
---@param MontagePlayType EMainCharMontagePlayType
---@param StartPosition number
---@param PlayDirectly boolean
function FAnimMontagePlayEvent:Broadcast(MontageToPlay, IsPlay, PlayRate, StartSection, MontagePlayType, StartPosition, PlayDirectly) end


---@class FAnimMontageJumpSectionEvent : ULuaMulticastDelegate
FAnimMontageJumpSectionEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, StartSection: string, MontageToPlay: UAnimMontage) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAnimMontageJumpSectionEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param StartSection string
---@param MontageToPlay UAnimMontage
function FAnimMontageJumpSectionEvent:Broadcast(StartSection, MontageToPlay) end


---@class FAnimPlaySlotAnimEvent : ULuaMulticastDelegate
FAnimPlaySlotAnimEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AnimSequence: UAnimSequenceBase, IsPlay: boolean, SlotName: string, InPlayRate: number, blendTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAnimPlaySlotAnimEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param AnimSequence UAnimSequenceBase
---@param IsPlay boolean
---@param SlotName string
---@param InPlayRate number
---@param blendTime number
function FAnimPlaySlotAnimEvent:Broadcast(AnimSequence, IsPlay, SlotName, InPlayRate, blendTime) end


---@class FPlayerHealthStatusChangedDelegate : ULuaMulticastDelegate
FPlayerHealthStatusChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PrevStatus: ECharacterHealthStatus, NewStatus: ECharacterHealthStatus) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerHealthStatusChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function FPlayerHealthStatusChangedDelegate:Broadcast(PrevStatus, NewStatus) end


---@class FPlayerHealthStatusChangedFinishDelegate : ULuaMulticastDelegate
FPlayerHealthStatusChangedFinishDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PrevStatus: ECharacterHealthStatus, NewStatus: ECharacterHealthStatus) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FPlayerHealthStatusChangedFinishDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param PrevStatus ECharacterHealthStatus
---@param NewStatus ECharacterHealthStatus
function FPlayerHealthStatusChangedFinishDelegate:Broadcast(PrevStatus, NewStatus) end


---@class FCharacterMovementBaseChangedDelegate : ULuaMulticastDelegate
FCharacterMovementBaseChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ACharacter, NewMovementBase: UPrimitiveComponent) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterMovementBaseChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ACharacter
---@param NewMovementBase UPrimitiveComponent
function FCharacterMovementBaseChangedDelegate:Broadcast(Character, NewMovementBase) end


---@class FCharacterBecomeOrEndViewTarget : ULuaMulticastDelegate
FCharacterBecomeOrEndViewTarget = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PC: APlayerController) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterBecomeOrEndViewTarget:Add(Callback, Obj) end

---触发 Lua 广播
---@param PC APlayerController
function FCharacterBecomeOrEndViewTarget:Broadcast(PC) end


---@class FOnPlayerSwitchWeaponDelegate : ULuaMulticastDelegate
FOnPlayerSwitchWeaponDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Slot: ESurviveWeaponPropSlot) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchWeaponDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Slot ESurviveWeaponPropSlot
function FOnPlayerSwitchWeaponDelegate:Broadcast(Slot) end


---@class FOnCharacterHpChange : ULuaMulticastDelegate
FOnCharacterHpChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentHP: number, MaxHP: number, PrevHP: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterHpChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentHP number
---@param MaxHP number
---@param PrevHP number
function FOnCharacterHpChange:Broadcast(CurrentHP, MaxHP, PrevHP) end


---@class FOnCharacterSignalHPChange : ULuaMulticastDelegate
FOnCharacterSignalHPChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentSignalHP: number, PrevSignal: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterSignalHPChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentSignalHP number
---@param PrevSignal number
function FOnCharacterSignalHPChange:Broadcast(CurrentSignalHP, PrevSignal) end


---@class FOnCharacterReceiveHealthChangeHistory : ULuaMulticastDelegate
FOnCharacterReceiveHealthChangeHistory = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, HealthChangeHistory: ULuaArrayHelper<number>, bUseCache: boolean, bIsShotGunDamage: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterReceiveHealthChangeHistory:Add(Callback, Obj) end

---触发 Lua 广播
---@param HealthChangeHistory ULuaArrayHelper<number>
---@param bUseCache boolean
---@param bIsShotGunDamage boolean
function FOnCharacterReceiveHealthChangeHistory:Broadcast(HealthChangeHistory, bUseCache, bIsShotGunDamage) end


---@class FOnCharacterHpMaxChange : ULuaMulticastDelegate
FOnCharacterHpMaxChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentHPMax: number, CurrentHP: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterHpMaxChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentHPMax number
---@param CurrentHP number
function FOnCharacterHpMaxChange:Broadcast(CurrentHPMax, CurrentHP) end


---@class FOnCharacterHpChangeV2 : ULuaMulticastDelegate
FOnCharacterHpChangeV2 = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, PlayerKey: number, CurrentHP: number, MaxHP: number, PrevHP: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterHpChangeV2:Add(Callback, Obj) end

---触发 Lua 广播
---@param PlayerKey number
---@param CurrentHP number
---@param MaxHP number
---@param PrevHP number
function FOnCharacterHpChangeV2:Broadcast(PlayerKey, CurrentHP, MaxHP, PrevHP) end


---@class FOnCharacterTeamIDChange : ULuaSingleDelegate
FOnCharacterTeamIDChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterTeamIDChange:Bind(Callback, Obj) end

---执行委托
function FOnCharacterTeamIDChange:Execute() end


---@class FCharacterPropChanged : ULuaMulticastDelegate
FCharacterPropChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfRef: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterPropChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfRef ASTExtraBaseCharacter
function FCharacterPropChanged:Broadcast(SelfRef) end


---@class FOnScopeInComplete : ULuaSingleDelegate
FOnScopeInComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnScopeInComplete:Bind(Callback, Obj) end

---执行委托
function FOnScopeInComplete:Execute() end


---@class FOnScopeOutComplete : ULuaSingleDelegate
FOnScopeOutComplete = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnScopeOutComplete:Bind(Callback, Obj) end

---执行委托
function FOnScopeOutComplete:Execute() end


---@class FOnPostAttachmentReplication : ULuaMulticastDelegate
FOnPostAttachmentReplication = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, AttachParent: AActor, AttachParent_Direct: AActor, AttachComponent: USceneComponent, AttachSocket: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPostAttachmentReplication:Add(Callback, Obj) end

---触发 Lua 广播
---@param AttachParent AActor
---@param AttachParent_Direct AActor
---@param AttachComponent USceneComponent
---@param AttachSocket string
function FOnPostAttachmentReplication:Broadcast(AttachParent, AttachParent_Direct, AttachComponent, AttachSocket) end


---@class FOnSetCurrentVehicle : ULuaMulticastDelegate
FOnSetCurrentVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, CurrentAttachVehicle: ASTExtraVehicleBase, SelfRef: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSetCurrentVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param CurrentAttachVehicle ASTExtraVehicleBase
---@param SelfRef ASTExtraBaseCharacter
function FOnSetCurrentVehicle:Broadcast(CurrentAttachVehicle, SelfRef) end


---@class FOnCharacterHiddenChange : ULuaMulticastDelegate
FOnCharacterHiddenChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsHidden: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCharacterHiddenChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsHidden boolean
function FOnCharacterHiddenChange:Broadcast(IsHidden) end


---@class FOnPlayerTryToPlayEmote : ULuaMulticastDelegate
FOnPlayerTryToPlayEmote = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteId: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerTryToPlayEmote:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteId number
function FOnPlayerTryToPlayEmote:Broadcast(EmoteId) end


---@class FOnPlayerEmoteBePlayedSuccessfully : ULuaMulticastDelegate
FOnPlayerEmoteBePlayedSuccessfully = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteId: number, EmoteMontage: UAnimMontage, SelfRef: ASTExtraBaseCharacter, IsEmoteLooping: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerEmoteBePlayedSuccessfully:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteId number
---@param EmoteMontage UAnimMontage
---@param SelfRef ASTExtraBaseCharacter
---@param IsEmoteLooping boolean
function FOnPlayerEmoteBePlayedSuccessfully:Broadcast(EmoteId, EmoteMontage, SelfRef, IsEmoteLooping) end


---@class FOnPlayerStartPlayEmoteDS : ULuaMulticastDelegate
FOnPlayerStartPlayEmoteDS = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EmoteId: number, SelfRef: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerStartPlayEmoteDS:Add(Callback, Obj) end

---触发 Lua 广播
---@param EmoteId number
---@param SelfRef ASTExtraBaseCharacter
function FOnPlayerStartPlayEmoteDS:Broadcast(EmoteId, SelfRef) end


---@class FOnEmoteAIEventFireDS : ULuaMulticastDelegate
FOnEmoteAIEventFireDS = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Event: EEmoteAIEvent, EmoteId: number, SelfRef: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnEmoteAIEventFireDS:Add(Callback, Obj) end

---触发 Lua 广播
---@param Event EEmoteAIEvent
---@param EmoteId number
---@param SelfRef ASTExtraBaseCharacter
function FOnEmoteAIEventFireDS:Broadcast(Event, EmoteId, SelfRef) end


---@class FShowActicityUIDelegate : ULuaMulticastDelegate
FShowActicityUIDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bShow: boolean, ActivityUIName: string, ActivityActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FShowActicityUIDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bShow boolean
---@param ActivityUIName string
---@param ActivityActor AActor
function FShowActicityUIDelegate:Broadcast(bShow, ActivityUIName, ActivityActor) end


---@class FOnPlayerOpenDoorDelegate : ULuaMulticastDelegate
FOnPlayerOpenDoorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Door: APUBGDoor, DoorState: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerOpenDoorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Door APUBGDoor
---@param DoorState number
function FOnPlayerOpenDoorDelegate:Broadcast(Door, DoorState) end


---@class FThrowGrenadeModeChangedDelegate : ULuaMulticastDelegate
FThrowGrenadeModeChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewMode: EThrowGrenadeMode, PrevMode: EThrowGrenadeMode) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FThrowGrenadeModeChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewMode EThrowGrenadeMode
---@param PrevMode EThrowGrenadeMode
function FThrowGrenadeModeChangedDelegate:Broadcast(NewMode, PrevMode) end


---@class FOnPlayerPreStartFireDelegate : ULuaSingleDelegate
FOnPlayerPreStartFireDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerPreStartFireDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerPreStartFireDelegate:Execute() end


---@class FOnPlayerPreScopeInDelegate : ULuaSingleDelegate
FOnPlayerPreScopeInDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerPreScopeInDelegate:Bind(Callback, Obj) end

---执行委托
function FOnPlayerPreScopeInDelegate:Execute() end


---@class FNightVersionTypeChangeDelegate : ULuaSingleDelegate
FNightVersionTypeChangeDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNightVersionTypeChangeDelegate:Bind(Callback, Obj) end

---执行委托
function FNightVersionTypeChangeDelegate:Execute() end


---@class FOnPlayerSwitchPoseCDFinish : ULuaSingleDelegate
FOnPlayerSwitchPoseCDFinish = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerSwitchPoseCDFinish:Bind(Callback, Obj) end

---执行委托
function FOnPlayerSwitchPoseCDFinish:Execute() end


---@class FOnPlayerPersonModeChange : ULuaMulticastDelegate
FOnPlayerPersonModeChange = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InCharacter: ASTExtraBaseCharacter, InIsFPP: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnPlayerPersonModeChange:Add(Callback, Obj) end

---触发 Lua 广播
---@param InCharacter ASTExtraBaseCharacter
---@param InIsFPP boolean
function FOnPlayerPersonModeChange:Broadcast(InCharacter, InIsFPP) end


---@class USTBaseBuffEventType_EnterPawnState: USTBaseBuffEventType
---@field PawnStates ULuaArrayHelper<EPawnState>
local USTBaseBuffEventType_EnterPawnState = {}


---@class USTBaseBuffEventType_LeavePawnState: USTBaseBuffEventType
---@field PawnStates ULuaArrayHelper<EPawnState>
local USTBaseBuffEventType_LeavePawnState = {}


---主角类（PlayerPawn）
---@class ASTExtraBaseCharacter: ASTExtraCharacter, ISTExtraInputInterface, IPickupProxyFactory, ISTExtraBaseCharacter_UGCEventInterface, IGISPlayerInterface, IGenericAbilityCarrierInterface, IItemSkillV2RecevierInterface, IInteractorInterface, IDamageNumberInterface, IMeleeAttackOwnerInterface
---@field OnPlayerTeleport FOnPlayerTeleportDelegate
---@field OnPlayerBeforeTeleport FOnPlayerBeforeTeleportDelegate
---@field OnPlayerHealthStatusChangedDelegate FPlayerHealthStatusChangedDelegate
---@field OnPlayerHealthStatusChangedFinishDelegate FPlayerHealthStatusChangedFinishDelegate
---@field OnBulletChange FOnBulletChangeDelegate
---@field OnPlayerEnterRescueingStatus FOnCharacterEnterRescueingStatusDelegate
---@field OnPlayerEnterBeRescueingStatus FOnCharacterEnterBeRescueingStatusDelegate
---@field OnPlayerCarringStatus FOnCharacterCarringStatusDelegate
---@field OnPlayerEnterCallingForRevivalStatus FOnCharacterEnterCallingForRevivalStatus
---@field OnPlayerPickUp FOnCharacterPickUpActorDelegate
---@field OnPlayerFinishPickUpAnim FOnCharacterPickUpActorDelegate
---@field OnPlayerWeaponChangeState FOnCharacterWeaponStateChanged
---@field OnPlayerStandByIdleAnimChangeState FOnCharacterStandByIdleAnimStateChanged
---@field OnPlayerWeaponReloadLastBullet FOnCharacterWeaponReloadLastBullet
---@field OnBulletHitOnceDelegate FOnBulletHitOnceDelegate
---@field OnWeaponFireModeChangeDelegate FOnWeaponFireModeChangeDelegate
---@field OnWeaponShootIntervalModeChangeDelegate FOnWeaponShootIntervalModeChangeDelegate
---@field OnHideUIAfterPlayerDeadDelegate FOnHideUIAfterPlayerDeadDelegate
---@field OnPreAttachmentReplication FOnPostAttachmentReplication
---@field OnPostAttachmentReplication FOnPostAttachmentReplication
---@field OnSetCurrentVehicle FOnSetCurrentVehicle
---@field OnPlayerHandFoldedChanged FOnHandFoldedChanged
---@field IsEnterNearDeathDelegate FIsEnterNearDeathDelegate
---@field OnCharacterAimModeChanged FCharacterAimModeChanged
---@field OnDeathDelegate FOnDeathDelegate
---@field OnEnterOrLeaveInteractivingState FOnEnterOrLeaveInteractivingState
---@field OnCharacterMoveVoiceCheckDisModify FOnMoveVoiceCheckDisModify
---@field OnTakeDamageModify_Override FOnTakeDamageEndModify
---@field OnTakeDamageModify_ExHealth FOnTakeDamageModify
---@field OnModifyBodyPartDurability FOnModifyBodyPartDurability
---@field OnPostTakeDamage FOnPostTakeDamage
---@field OnPostTakeDamageNew FOnPostTakeDamageNew
---@field OnNotifyAddHealth FOnNotifyAddHealth
---@field OnTakeFallingDamageModify_Override FOnTakeFallingDamageModify
---@field OnTakeVehicleDamageModify_Override FOnTakeVehicleDamageModify
---@field bBroadcastNotifyInitialDamageDelegate boolean
---@field OnNotifyInitialDamage FOnNotifyInitialDamage
---@field OnSelfEnterState FOnEnterState
---@field OnSelfLeaveState FOnEnterState
---@field OnReconnectNotifyDelegate FOnReconnectNotifyDelegate
---@field OnStartInitDelegate FOnStartInitDelegate
---@field AnimMontagePlayDelegate FAnimMontagePlayEvent
---@field SequenceMontagePlayDelegate FAnimMontagePlayEvent
---@field AnimMontageJumpSectionDelegate FAnimMontageJumpSectionEvent
---@field AnimPlaySlotAnimDelegate FAnimPlaySlotAnimEvent
---@field NotifyHurtDetailsDelegate FOnNotifyHurtDetailsEvent
---@field PlayerSwitchPoseCDFinishDelegate FOnPlayerSwitchPoseCDFinish
---@field OnCharacterStartFireDelegate FCharacterStartFireDelegate
---@field OnCharacterStopFireDelegate FCharacterStopFireDelegate
---@field OnCharacterShootDelegate FCharacterShootDelegate
---@field OnChangedFlyWingStateDelegate FOnChangedFlyWingStateDelegate
---@field OnCharacterBecomeViewTarget FCharacterBecomeOrEndViewTarget
---@field OnCharacterEndViewTarget FCharacterBecomeOrEndViewTarget
---@field OnPostLocalEquipWeapon FOnPostLocalEquipWeaponEvent
---@field OnPostEquipWeaponCommon FOnPostLocalEquipWeaponEvent
---@field OnPostLocalEquipWeaponSimulate FOnPostLocalEquipWeaponEvent
---@field OnWeaponEquipmentUpdateDelegate FOnWeaponEquipmentUpdate
---@field OnCharacterHpChange FOnCharacterHpChange
---@field OnCharacterHpChangeV2 FOnCharacterHpChangeV2
---@field OnCharacterReceiveHealthChangeHistory FOnCharacterReceiveHealthChangeHistory
---@field OnCharacterHpMaxChange FOnCharacterHpMaxChange
---@field OnCharacterTeamIDChange FOnCharacterTeamIDChange
---@field OnCharacterTeamIDChangeWithPtr FCharacterPropChanged
---@field OnCharacterNameChanged FCharacterPropChanged
---@field OnCharacterSignalHPChange FOnCharacterSignalHPChange
---@field OnPlayerSwitchWeaponDelegate FOnPlayerSwitchWeaponDelegate
---@field OnCharacterHiddenChange FOnCharacterHiddenChange
---@field ShowActicityUIDelegate FShowActicityUIDelegate
---@field OnPlayerOpenDoorDelegate FOnPlayerOpenDoorDelegate
---@field ServerOnPlayerOpenDoorDelegate FOnPlayerOpenDoorDelegate
---@field OnPlayerPreStartFireDelegate FOnPlayerPreStartFireDelegate
---@field OnPlayerPreScopeInDelegate FOnPlayerPreScopeInDelegate
---@field bDisableOpenDoorAnim boolean
---@field bRefreshHPWithCache boolean
---@field CurrentDamageReduceDurability number
---@field bCurrentDamageBreakArmor boolean
---@field bShowName number
---@field bShowDamageToOther number
---@field NetDelayMinAniCompensate number
---@field bIsFPPOnVehicle boolean
---@field FPPOnVehicleName string
---@field Money number
---@field bHasHandleDead boolean
---@field bDying number
---@field bIgnoreInput number
---@field FriendThread boolean
---@field bUseSameTeamDamage boolean
---@field MaxSwimSprintSpeed number
---@field IsFiveTimesWalkSpeed number
---@field OverrideTombBox APlayerTombBox
---@field bIsDrawLocation boolean
---@field bOpenCostSpecMotion boolean
---@field bAllowUserToggleADS boolean
---@field bAllowToggleADS boolean
---@field AllowToggleADSCoolDown number
---@field AllowToggleADSCoolDownLength number
---@field PreviousValueToSetForHealthPredict number
---@field ValueLimitForHealthPredict number
---@field ValueLimitForSignalHPPredict number
---@field ValueForSignalHPPredict number
---@field bShouldReplicatedServerLastTransformUpdateTimeStamp boolean
---@field CurEnableEffectShootWeaponList ULuaArrayHelper<ASTExtraShootWeapon>
---@field HeadSocketName string
---@field LFootSocketName string
---@field RFootSocketName string
---@field bHasReportCriticalRepMoveCheckFailed boolean
---@field bIsWeaponFiring boolean
---@field ServerControlRotation FRotator
---@field PoseState ESTEPoseState
---@field CurEquipBodyDurability number
---@field CurEquipHeadDurability number
---@field CurVehicleVelocity number
---@field ReplicatedNowShovelingSpeed number
---@field ReplicatedShovelingRotation FRotator
---@field SkipOpenParachute boolean
---@field IsDoingPickUp boolean
---@field bLeftHandHasWeaponMesh boolean
---@field bIsOpenShovelAbility boolean
---@field CurBulletFlyPassEarCount number
---@field bHasTriggeredBulletFlyPassEarCheckReport boolean
---@field RadialDamageScale number
---@field OverrideVoiceGender number
---@field LastPoseState ESTEPoseState
---@field bEnablePoseStateChangeOptimize boolean
---@field bEnableSwoop boolean
---@field AnimDeathLifeSpan number
---@field AnimDeathLifeSpan_PC number
---@field RequestPaintDecalCD number
---@field MaxRequestPaintDecalCD number
---@field SwitchSlotTimeDataList ULuaArrayHelper<FWeaponSlotSwitchTimeData>
---@field PlayerSlotData ULuaArrayHelper<AActor>
---@field InventoryData ULuaArrayHelper<AActor>
---@field IsAmbientSoundPlaying boolean
---@field bUseFootPrint boolean
---@field FallLandingSound_Light_MaxVelocityZ number
---@field FallLandingSound_Heavy_MinVelocityZ number
---@field SpecialMapAmbientSoundConfig ULuaMapHelper<string, FSpecialAmbientData>
---@field bUpdateContainerLocation boolean
---@field bVaultIsOpen boolean
---@field bDoubleVaultIsOpen boolean
---@field bEnableDoubleVault boolean
---@field DoubleVaultParam FDoubleVaultParam
---@field bIsUseFpsVault boolean
---@field bEnableAutoVaultWhenJumpBtnPressed boolean
---@field AutoVaultFirstCheckDelay number
---@field AutoVaultCheckInterval number
---@field CachedAutoVaultCheckInterval number
---@field UseShootVerifyEx boolean
---@field bForbidAiPronePull boolean @<模拟端AI从卧倒状态起身时是否累加高度
---@field Temp_ChangeSwitchLogic_VehSeat boolean
---@field FinishCDBarUIMultiDelegate FFinishCDBarUIMultiDelegate
---@field CancelCDBarUIMultiDelegate FCancelCDBarUIMultiDelegate
---@field CarryRepData FCarryRepData
---@field CarryDeadBoxRepData FCarryDeadBoxRepData
---@field EnterNearDeathCDTimeInitValue number
---@field EnterNearDeathCDServerTime number
---@field bIsRescuingOther boolean
---@field IsBeingRescued boolean
---@field DonntLooseBreath number
---@field RescueUIDataForReplay FRescueUIDataForReplay
---@field RescueOtherDuration number
---@field bRescueSelfForbidden boolean
---@field BreathDecreasingSpeed number
---@field bInRescuingDelayTime boolean
---@field DetectionInterval number
---@field CachedDetectionInterval number
---@field bDisablePlaySwitchWeaponAnim boolean
---@field bIsCallingForRevival boolean
---@field GiftType FGiftTypeData
---@field OnEnterLandingHeavy FEnterLandingEvent
---@field OnEnterLandingCombat FEnterLandingEvent
---@field OnEnterLanding FEnterLandingEvent
---@field LandingEventBlockTime number @着陆事件屏蔽计时器，大于0时不触发OnEnterLanding相关事件
---@field OnCharacterHpGoZero FCharacterHpGoZeroDelegate @掩体杀接入：当玩家的HP被扣为0时触发
---@field ScopeNewIdleLoc FVector
---@field ScopeNewAimLoc FVector
---@field ScopeMoveInOutSpeed number
---@field ScopeAimShootSpreadDir FVector
---@field ScopeAimShootSpreadAddDirValSpeed number
---@field ScopeAimShootSpreadDecDirValSpeed number
---@field ScopeAimShootSpreadDirValMax number
---@field ScopeAimShootSpreadRot FRotator
---@field ScopeAimShootSpreadAddRotValSpeed number
---@field ScopeAimShootSpreadDecRotValSpeed number
---@field ScopeAimShootSpreadRotValMax number
---@field ScopeLagScale number
---@field ScopeAimCrosshairUIScale number
---@field TempFPPDefaultFov number
---@field TempTPPDefaultFov number
---@field TempScopeFov number
---@field TempScopeZoomValue number
---@field DeadInventoryBoxOverrideFindPutDownPointZThreshold number
---@field FirstDamageTypeSpesificID number
---@field RefreshUITimeAfterSpawn number
---@field RefreshUITimeAfterSpawnInterval number
---@field FistIconOverride number
---@field ScopeNewTargetLoc FVector
---@field bMarkScopeLocDirty boolean
---@field CameraPriorityMap ULuaMapHelper<string, number>
---@field CallServerMoveFrame number
---@field OnPreCalCamera FOnPreCalCamera
---@field bHasStuckOperation boolean
---@field SyncAKEvent FSyncAKEvent
---@field OnJoyStickInteruptDelegate FOnJoyStickInteruptDelegate
---@field OnPlayerAttrChangeDelegate FOnPlayerAttrChangeDelegate
---@field OnCharacterAttrChangedWithDetail FOnCharacterAttrChangedWithDetail
---@field OnCharacterAttrChangedWithDetailExtra FOnCharacterAttrChangedWithDetailExtra
---@field OnMovementBaseChanged FCharacterMovementBaseChangedDelegate
---@field bIsDelayingMove boolean
---@field bDebugNewWeaponSystem boolean
---@field ProneBoxRelativeLocation FVector
---@field IsProneBoxOverlapEventEnable boolean
---@field bCreateSecondCapsule boolean
---@field DamageCauserRecords ULuaArrayHelper<FDamageCauserRecordData>
---@field DamageRecords ULuaArrayHelper<FDamageCauserRecordData>
---@field PickUpRadius number
---@field SimulateViewData FSimViewData
---@field LastRepSimulateViewData FSimViewData
---@field VehicleViewPitchYaw number
---@field RepControlRotationCompressed number
---@field CacheMeshOffsetOnRepMove FVector
---@field CacheWorldTimeOnRepMove number
---@field AimCameraRotatorOffset FRotator
---@field MedalClubID string
---@field MedalClubLevel number
---@field AnchorPlat FAnchorPlatData
---@field PassCardBuyType number
---@field PassCardBuyLevel number
---@field NeedShowEnjoyCard boolean
---@field Likedlevel number
---@field ShouldShowLikeLevel number
---@field OnRepCommonFlagDataNeedUpdate boolean
---@field ShoudldCheckFlagData ULuaArrayHelper<FCommonFlagData>
---@field CommonFlagData ULuaArrayHelper<FCommonFlagData>
---@field CommonFlagDataCustom ULuaArrayHelper<FCommonFlagData>
---@field CommonFlagDataMap ULuaMapHelper<string, string>
---@field SceneFlagIDMap ULuaMapHelper<number, number>
---@field CommonFlagDataChange FCommonFlagDataChangeDelegate
---@field OnCarryDelegate FOnCarryDelegate
---@field OnStartCarryDelegate FOnStartCarryDelegate
---@field OnCarryDeadBoxDelegate FOnCarryDeadBoxDelegate
---@field OnStartCarryDeadBoxDelegate FOnStartCarryDeadBoxDelegate
---@field OnCameraModeChangeDelegate FOnCameraModeChangeDelegate
---@field bIsSkipCheckMeshRotate boolean
---@field OnPlayerUnderAttackedDelegate FOnPlayerUnderAttack
---@field IgnoreCheckCanSetBase boolean
---@field NewReplicatedMovement any
---@field ProneTrailMarkClass ATrailMarkActor
---@field LocalHealthChangePostShotHitSimulateMaxCount number
---@field LocalHealthHistoryListPostShotHit ULuaArrayHelper<number>
---@field LocalHealthHistoryListPostShotHitNew ULuaArrayHelper<FHealthChangeRecordItem>
---@field LocalHealthHistoryListNoneShotHit ULuaArrayHelper<number>
---@field LocalHealthHistoryListNoneShotHitNew ULuaArrayHelper<FHealthChangeRecordItem>
---@field LastRefreshHPUIHealth number
---@field ClientGetShotBuffName string
---@field SmoothRotateMeshYawSpeed number
---@field DynamicMovementBaseTags ULuaArrayHelper<string>
---@field HoldADSState ULuaArrayHelper<EPawnState>
---@field OnScopeInComplete FOnScopeInComplete
---@field OnScopeOutComplete FOnScopeOutComplete
---@field bCheckSwim boolean
---@field PlayFallingAkEventMinZSpeed number
---@field CachedFallingAkEventID number
---@field bPossessCharacter boolean
---@field bHasReportSimulateSwitchPoseStateException boolean
---@field MeleeCombatHitInfo FMeleeCombatHitInfo
---@field MeleeCombatPhaseInfo FMeleeCombatPhaseInfo
---@field EndedAttackKey number
---@field FootStepSoundCheckNotWalkStates ULuaArrayHelper<EPawnState>
---@field CheckFootStepSoundInterval number
---@field LastTimeUIUpdateFootStep number
---@field LastTimeFootStepSoundPlayed number
---@field LastTimeCallPlayFootStepSound number
---@field LastFootSoundTypeCalled EFootStepState
---@field LastFootSoundTypePlayed EFootStepState
---@field LastTimeBeginMoving number
---@field NoSoundPlayTime number
---@field MaxNoSoundPlayTime number
---@field IsHasReportedNoSoundException boolean
---@field FootStepSoundMissingReason ULuaMapHelper<number, number>
---@field FootSoundIgnoreDist number
---@field FootSoundTraceDist number
---@field CacheFootstepSurfaceType EPhysicalSurface
---@field FootprintMap ULuaMapHelper<EPhysicalSurface, FFootprintActorArrayInfo>
---@field MaxDispalyFootprintDistance number
---@field DefaultMeshRot FRotator
---@field CachedAmbientSoundActors ULuaArrayHelper<AAmbientSoundActor>
---@field MainCharAnimClass any
---@field MainCharTPPAnimClass any
---@field SimulateMeshUpdateFlag EMeshComponentUpdateFlag
---@field SimulateMeshUpdateFlag_ByCVar EMeshComponentUpdateFlag
---@field SimulateMeshUpdateFlag_WinRelease EMeshComponentUpdateFlag
---@field IsFPP boolean
---@field CurrentCameraMode EPlayerCameraMode
---@field CurrentCameraModeSaved EPlayerCameraMode
---@field IsInUpdatePersonMode boolean
---@field IsInSetCurrentPersonMode boolean
---@field ResultPersonFPP boolean
---@field IsSetResultPersonFPP boolean
---@field IsSetResultPersonFPPSimulate boolean
---@field PersonModeServerValue number
---@field PersonModeClientValue number
---@field PersonModeExpectList ULuaArrayHelper<FPersonModeTypeData>
---@field CachePersonCameraMode EPlayerCameraMode
---@field CustomPlayerPersonModeChange FOnPlayerPersonModeChange
---@field ResultPlayerPersonModeChange FOnPlayerPersonModeChange
---@field bSkillLockTPP boolean
---@field EmoteMontageFinishedEvent FEmoteMontageFinishedDelegate
---@field OnPlayerTryToPlayEmote FOnPlayerTryToPlayEmote
---@field OnPlayerEmoteBePlayedSuccessfully FOnPlayerEmoteBePlayedSuccessfully
---@field OnPlayerStartPlayEmoteDS FOnPlayerStartPlayEmoteDS
---@field OnEmoteAIEventFireDS FOnEmoteAIEventFireDS
---@field TempEmoteResource UAnimationAsset
---@field isInWater boolean
---@field HurtByBulletAnimCDTime number
---@field bDotDamageTriggerHurtAim boolean
---@field JoystickInputState FVector
---@field JoystickInputStateNormal8 FVector_NetQuantizeNormal8
---@field MoveInputState FVector
---@field MoveInputStateNormal8 FVector_NetQuantizeNormal8
---@field IsAutoFollow boolean
---@field bPressedShoveling number @When true, player wants to crouch
---@field ShovelingKeyHoldTime number @Crouch key Held Time. This is the time when the player held the jump key, in seconds.
---@field bHasEnteredShoveling number
---@field CurInputVector FVector
---@field bEnableSpringArmOptimization boolean
---@field PhysicsAssetOverride_DeadForReplay UPhysicsAsset
---@field bEnableRPCDestoryBrokenInventory boolean
---@field OnCharacterInventoryBrokenDestroy FCharacterInventoryBrokenDestroy
---@field RefreshMoveAttrCacheContext FRefreshMoveAttrCacheContext
---@field bIsEightWayUniformSpeedEnabled boolean
---@field voiceCheckCD number
---@field voiceCheckShowCD number
---@field voiceCheckDis number
---@field voiceDistScale number
---@field VoiceCheckDistance number
---@field voiceBeginCheckDisWhenUAV number @DS端 当Character和当前载具超过该距离之和 进行声音检查 其他情况都是客户端检查
---@field DanyinCompletedIDSet ULuaSetHelper<number>
---@field MovementModeBeforeNearDeath EMovementMode
---@field MoveableSwitchPoseTime number
---@field WhoKillMeRecordData FDamageCauserRecordData
---@field KnockDownMeRecordIndex number
---@field HandFolderRatio number
---@field bIsVehicleHandFolder boolean
---@field bIsIgnoreRecoverty boolean
---@field IgnoreRecovertyPropertyName string
---@field SwimUpRate number
---@field CandidateWaterBoxes ULuaArrayHelper<UWaterBoxComponent>
---@field SprintToProneDelayTimerHandle FTimerHandle
---@field SwitchPoseCD number
---@field bIsInBlueCircle boolean
---@field hHasCallGameModeKill boolean
---@field CollideByTeammateCDConfig number
---@field LandedLogCDConfig number
---@field SwitchPoseTime FPoseChangeTime
---@field HitBoxLeanTransL FTransform
---@field HitBoxLeanTransR FTransform
---@field DelaySpawnDeadTombBox number
---@field bHideInventoryBox boolean
---@field bUsePCDeadDataInWinClient boolean
---@field DelayHideDuration number
---@field bEnableRagdollAfterDead boolean
---@field bForceOpenMeshPhysicTick boolean
---@field DelayEnableRagdollDuration number
---@field MaxRagdollActiveDuration number
---@field MaxRagdollActiveDuration_PC number
---@field DelayHideDuration_SimulatePhysicsDead number
---@field DelayHideDuration_SimulatePhysicsDead_PC number
---@field bShouldGenerateOffset boolean
---@field CurPlayerAnimList FPlayerAnimList
---@field CurPlayerVehAnimList FPlayerVehAnimList
---@field CurAnimVehParamList FAnimVehParamList
---@field CacheVehicleControlRot FRotator
---@field CheckNeedUpdate_LastIsOB boolean
---@field LastUpdateStatusKeyList FAnimStatusKeyList
---@field CurUpdateStatusKeyList FAnimStatusKeyList
---@field ThrowGrenadeModeChangedDelegate FThrowGrenadeModeChangedDelegate
---@field ThrowGrenadeMode EThrowGrenadeMode
---@field PrevThrowGrenadeMode EThrowGrenadeMode
---@field PeekMark EPeekMark
---@field IsPeekLeft boolean
---@field bSprintStopPeek boolean
---@field PeekCheckAdditionalLen number
---@field IsEnablePeek boolean
---@field PeekCheckCollisionTimer number
---@field PeekCheckCollisionTimerFPP number
---@field PeekHasCollision boolean
---@field AutoScopeDelayTimeWhenPeek number
---@field IsEnableReportPlayerBehavior number
---@field OnCharacterPeek FOnCharacterPeekDelegate
---@field bHitEnemyHeadFlag boolean
---@field OnceRegisterAttrNumber number
---@field TempRegAttrCache ULuaArrayHelper<FTempAttrRegisterItem>
---@field RegAttrCache ULuaArrayHelper<FAttrRegisterItem>
---@field HighWalkSpeed number
---@field WalkSpeedChangeRate number
---@field WalkSpeedThreshold number
---@field MaxCrouchSpeed number
---@field MaxProneSpeed number
---@field MaxSprintSpeed number
---@field MaxSprintCrouchSpeed number
---@field MaxSwimSpeed number
---@field HealthPredict number
---@field BreathAmount number
---@field bIsUnderMaxBreath boolean
---@field Breath number
---@field TurnInPlaceAngel number
---@field NearDeathYawLimit number
---@field NearDeathYawOffset number
---@field NearDeathYawTurnRate number
---@field NearDeathYawTurnRateDefault number
---@field HealthStatus ECharacterHealthStatus
---@field LastHitDownDataCache FNearDeathHitDownDataStruct
---@field DamageScale ULuaMapHelper<string, FDamageScale>
---@field BodyPartDamageScaleMap ULuaMapHelper<number, FBodyPartDamageScaleCfg>
---@field BodyPartConfigMap ULuaMapHelper<EAvatarDamagePosition, FBodyPartCfg>
---@field ExtraDamageReduceList ULuaArrayHelper<FExtraDamageReduceCfg>
---@field ArmorCoverAvatarPositionDataMap ULuaMapHelper<EAvatarDamagePosition, EAvatarDamagePosition>
---@field bIsLastTwoCircle boolean
---@field ExplosionRangeScale number
---@field EnergySpeedScale number
---@field bEnableAdditionalSpeedAttribute boolean
---@field AdditiveSpeedValueWrapper FGameAttributeProperty
---@field PawnBackpackCapacity number
---@field SkillBackpackCapacity number
---@field SuitBackpackCapacity number
---@field ArmorDurableReducePercent number
---@field ArmorDamageReduceIgnore number
---@field bShouldDisableFaceRotation boolean
---@field CurRadiationImmuneTime number
---@field RadiationImmuneAbsoluteLayerCount number
---@field SignalImmuneLayerCount number
---@field Energy FCharacterEnergyData
---@field EnergyAntiAgingTime number
---@field TemperaturePhaseList ULuaArrayHelper<FCharacterEnergyPhase>
---@field bCheckRelevantWithFOV boolean
---@field FarDistanceAimFOV number
---@field FarRelevantDistanceSqured number
---@field MiddleDistanceAimFOV number
---@field MiddleRelevantDistanceSqured number
---@field ReplicatedAndOverridedSwimSpeed number
---@field DelayNotifyDeathEnd number
---@field bDelayNotifyDeathEndNextTime boolean
---@field bIsInTheInvincible number
---@field VerticalSpeedFallingDamageThrehod number
---@field VerticalFallingDamageCoefficient number
---@field HorizontalSpeedFallingDamageThrehod number
---@field HorizontalFallingDamageCoefficient number
---@field DamageShakeClass USTDamageCameraShake
---@field BonfireLinkComponentTemplate USTCharacterBonfireLinkComp
---@field StandHalfHeight number
---@field CrouchHalfHeight number
---@field ProneHalfHeight number
---@field CrouchEnableCheckTolerance number
---@field FPPCollisionRadius number
---@field StandRadius number
---@field DyingRadius number
---@field CollisionRadiusOverride number
---@field HealthPredictShowDataList ULuaArrayHelper<FHealthPredictShowData>
---@field SignalHPPredictShowDataList ULuaArrayHelper<FHealthPredictShowData>
---@field bIsDetachingFromVehicleNoFall boolean
---@field OverlapsOnVehicleTimerInterval number
---@field bWasOnVehicle boolean
---@field VehicleSeatIdx number
---@field bForceSetRepMovLocationOnAttachmentRep boolean
---@field LeaveVehicleVelocityKeepTime number
---@field bCanCharacterHideOnVehicle boolean
---@field bHideOnVehicle boolean
---@field HideOnVehicleChange FHideOnVehicleChange
---@field CurActivePassengerAttachedCameraOffsetOnVehicle ECameraDataType
---@field LocalActivePassengerAttachedCameraOffsetOnVehicle ECameraDataType
---@field VehicleLaunchControlEffectData FVehicleLaunchControlEffectData
---@field LaunchControlPassengerCameraFadeInDataOffsetCurrentType ECameraDataType
---@field LaunchControlPassengerCameraLaunchDataOffsetCurrentType ECameraDataType
---@field LaunchControlPassengerCameraFadeOutDataOffsetCurrentType ECameraDataType
---@field LocalActiveCurActivePassengerLaunchControllCameraOffsetOnVehicle ECameraDataType
---@field VehicleLaunchControlEffectFadeOutHandle FTimerHandle
---@field PreAttachedToVehicle FPreAttachToVehicleDelegate
---@field OnAttachedToVehicle FOnAttachedToVehicleDelegate
---@field PreDetachedFromVehicle FPreDetachedFromVehicleDelegate
---@field OnDetachedFromVehicle FOnDetachedFromVehicleDelegate
---@field OnChangedVehicleSeat FOnChangedVehicleSeatDelegate
---@field OnPlayerStateUpdated FOnPlayerStateUpdated
---@field OnSimulateViewDataUpdated FOnCharacterPickUpActorDelegate
---@field CharacterOffsetOnVehicle FVector
---@field fCalcUseCustomSpringArmOffsetZ number
---@field bUniqCapsuleSize boolean
---@field SwitchAngledSightEventDelegate FOnSwitchAngledSight
---@field AngledSightRotOffset FRotator
---@field bHasInitOnClientWithGameState boolean
---@field EnableSprintSync boolean
---@field NetCullingDistanceOnVeryLowDevice number
---@field DamageMagnifierIdx number
---@field STReplicateParchuteState FSTParachuteState
---@field STReplicatedMoveState FSTReplicatedMoveState
---@field STReplicatedMoveState_New FSTReplicatedMoveState_New
---@field bReplicatedIsStartParachute boolean
---@field bParaglidingMode boolean
---@field bEnableManualParachute boolean
---@field bCanAutoForceOpenParachute boolean
---@field MoveForwardInputValue number
---@field MoveRightInputValue number
---@field bIsParachuteLandingAnimEnabled boolean
---@field ParachuteLandingHeightAdded number
---@field bIsParachuteLanding boolean
---@field TargetPlayerAIPolicyDecisionLogInterval number
---@field RelevantPlayerAIPolicyDecisionLogInterval number
---@field FlyingTeam ULuaArrayHelper<ASTExtraBaseCharacter> @跟随跳伞
---@field RideTogetherTeam ULuaArrayHelper<ASTExtraBaseCharacter>
---@field FollowState EFollowState
---@field OnParachuteFollowStateChanged FParachuteFollowStateChanged
---@field OnCalculatePickUpItemFlowDelegate FOnCalculatePickUpItemFlow
---@field TeammateParachuteFollowState ULuaArrayHelper<FParachuteFollowState>
---@field ParachuteRideInvitationList FParachuteRideInvitationList
---@field LatestInviter string
---@field IsDuringTransferLeader boolean
---@field bIsDuringTransferDriver boolean
---@field NotAllowInvitedTime number
---@field bIsConnectedWithEmergencyCallActor boolean
---@field maxShowAlpha number
---@field MoveMaxShowDis number
---@field WeaponMaxShowDis number
---@field VehicleMaxShowDis number
---@field FPPPutDownWeaponCoolingStart number
---@field FPPPutDownWeaponCoolingEnd number
---@field FPPSprintWeaponSmoothTime number
---@field FPPSwitchPoseWeaponSmoothTime number
---@field bDynamicHoldGun boolean
---@field IsEnableReportRoute number
---@field IsEnableLogAIPlayerPos number
---@field PaintDecalClientCallBackDelegate FPaintDecalClientCallBack
---@field PaintDecalMaxDistance number
---@field bDetectingPaintDecalTarget boolean
---@field bValidPaintDecalTarget boolean
---@field bSkillFreeCamera boolean
---@field bEnableMoveExitSkillFreeCamera boolean
---@field bInFreeCamera boolean
---@field bEnableCompVisionOptimization boolean
---@field bBPEnableCompVisionOptimization boolean
---@field bNightVisionUse boolean
---@field OnNightVersionTypeChange FNightVersionTypeChangeDelegate
---@field NightVisionTypes number
---@field DisableNightVisionTypes number
---@field ClientNightVisionTypes number
---@field ClientDisableNightVisionTypes number
---@field NightVisionTypesDisableMap ULuaMapHelper<ENightVisionType, number>
---@field ShowNightFrameType number
---@field MaxRelavantDistance number
---@field IsEnableReportPlayerKillFlow number
---@field IsEnableReportGameSetting number
---@field EnableReportGameSettingLevel number
---@field bEnableMainMeshAnimNodeInitOptimization boolean
---@field IsEnableReportMrpcsInCircleFlow number
---@field IsEnableReportMrpcsInPartCircleFlow number
---@field IsEnableReportMrpcsFlow number
---@field EquipingScopeDelay number
---@field OnEquipZoomScope FOnEquipZoomScope
---@field OnScopeZoomValueChange FScopeZoomValueChange
---@field OnOriginJoystickInputChangeDelegate FOriginJoystickInputChange
---@field DistSquaredInterruptRevival number
---@field WeaponOverrideAttrs FWeaponOverrideAttrs
---@field CharacterOverrideAttrs FCharacterOverrideAttrs
---@field CharacterFallingVelocityZFactor number
---@field LandVelocityZSpeed_LightMax number
---@field LandVelocityZSpeed_HardMax number
---@field LandStopTime_Light number
---@field LandStopTime_Hard number
---@field bForceUseWalkAnim boolean
---@field ShowingHeadWidgetParam number
---@field EnableOutline boolean
---@field bDisableDrawDying boolean
---@field ExtraShootLineTraceIgnoreActors ULuaArrayHelper<AActor>
---@field bHasFinishedRegisterPlayerPickUpList boolean
---@field BuildUIHideState ULuaArrayHelper<EPawnState>
---@field bDieInHeadShot boolean
---@field CurrentTaskTriggerAreaID number
---@field SignalHPBeforeEnterBreath number
---@field bProduceSoundOnServer boolean
---@field ProduceSoundInterval number
---@field ProduceSoundVelocitySquared number
---@field ProduceWeaponSoundInterval number
---@field HearRadius number
---@field bUsedAsAMonster boolean
---@field bMonsterShowKillInfo boolean
---@field bClassicModeGuard boolean
---@field AIReplicatedMovementMode number
---@field AIHostReplicatedMovement FRepMovement
---@field AIHostReplicatedBasedMovement any
---@field FirstGuide_SafeZoneCountDownTime number
---@field isUsingEnergyPoison boolean
---@field IsShowRevivalPointIcon boolean
---@field bSupplyBulletOnBorn boolean
---@field bIsGiveupWhenMatchGoalAchieved boolean
---@field SignalHPRemainingTime number
---@field MurderWeaponID number
---@field SmoothNetUpdateRotationTime number
---@field bAddPoseStateCheckResponse boolean
---@field bTemperoryDisableFallingDamage boolean
---@field FixMovementOnVehicleInterval number @ClientTickOnVehicle的调用间隔 <0 则永不调用
---@field voiceCheckUAVOperatorDeltaTime number
---@field DefaultParticleAttachTransform FTransform
---@field DefaultParticleAttachLocationType EAttachLocation
---@field ParticleAttachOffsetArray ULuaArrayHelper<FInjuryParticleAttachOffset>
---@field ParticleShowingInterval number
---@field bIsShowingInjuryEffect boolean
---@field bIsShowingToxicEffect boolean
---@field InjuryAndToxicParticleEffect UParticleSystem
---@field bLogAIFloatInfo boolean
---@field ObjectPoolCheckIgnorePropertyNames ULuaArrayHelper<string>
---@field bDisableAutoUsePickWeapon boolean
---@field JoystickSensitivity number
---@field SwitchWeaponCD number
---@field CurSwitchWeaponCD number
---@field bIsInFortress boolean
---@field ShouldPauseAnim boolean
---@field OnClientBeFallDownHurtDelegate FOnClientBeFallDownHurtDelegate
---@field MainAnimInstance UAnimInstance
---@field TPPAnimInstance UAnimInstanceBase
---@field FPPAnimInstance UAnimInstanceBase
---@field NewFPPAnimInstance UAnimInstanceBase
---@field OnLockAnimInstanceLOD FOnChangeAnimInstanceLOD
---@field OnUnlockAnimInstanceLOD FOnChangeAnimInstanceLOD
---@field OnGetAnimInstanceLOD FGetAnimInstanceLOD
---@field VehicleDetailedTraceDist number
---@field SpringArmTraceDist number
---@field BodyRelativeOffsetConfig ULuaMapHelper<ESTEPoseState, FCharacterBodyOffset>
---@field OnDSSkillStartDelegate FOnDSSkillStartDelegate
---@field bUseCustomAnimUpdateRateParams boolean
---@field MaxDistFromMainChar number
---@field BaseNonRenderedUpdateRate number
---@field BaseNonRenderedUpdateRateHigh number
---@field CustomAnimUpdateRateParams ULuaArrayHelper<number>
---@field bUseCustomAnimUpdateRateParams_WinRelease boolean
---@field MaxDistFromMainChar_WinRelease number
---@field BaseNonRenderedUpdateRate_WinRelease number
---@field BaseNonRenderedUpdateRateHigh_WinRelease number
---@field CustomAnimUpdateRateParams_WinRelease ULuaArrayHelper<number>
---@field ShootWeaponADSTime number
---@field ShootWeaponFireAnimAlphaRate number
---@field ShootWeaponFireAnimADSAlphaRate number
---@field DonotPlayFootstepSound boolean
---@field DonotPlayNotSprintSound boolean
---@field MontageQueue ULuaSetHelper<FPlayMontageData>
---@field IsHelmetFightingHide boolean
---@field IsBackpackFightingHide boolean
---@field bSkipLandSkill boolean
---@field bCanBeControlledByLimitZone number
---@field CurrentNetCullDistanceSquared number
---@field IsBunkerEscaped boolean
---@field IsCanHiddenInReplay boolean
---@field HealthChangeHistoryPerFrame ULuaArrayHelper<number>
---@field HealthChangeHistoryPerFrameNew ULuaArrayHelper<FHealthChangeRecordItem>
---@field LastSyncHealthChange number
---@field CheckNetRelevantInScript boolean
---@field ReplicationPausedInScript boolean
---@field bIgnoreBlueCircle boolean
---@field CheckCircleIndex number
---@field CheckTLogMoveDist_Duration number
---@field OnMainCharAnimInstanceInit FOnMainCharAnimInstanceInit
---@field OnClientPlayerLanded FOnClientPlayerLanded
---@field ActivityMoveSpeedScale number
---@field UGCGeneralMoveSpeedScale FGameAttributeProperty
---@field RescueOtherDurationRate FGameAttributeProperty
---@field JumpCountLimit FGameAttributeProperty
---@field JumpZSpeed FGameAttributeProperty
---@field FallingDamageRatio FGameAttributeProperty
---@field HitBackIntensity FGameAttributeProperty
---@field HitBackResist FGameAttributeProperty
---@field UGCMoveSpeedScale number
---@field UGCMoveSpeedModifyList ULuaArrayHelper<FUGCMoveSpeedScaleModifyItem>
---@field UGCMoveSpeedModifyValueItemList ULuaArrayHelper<FUGCMoveSpeedScaleModifyValueItem>
---@field bSkipDeadBox boolean
---@field bUGCDeadBoxItemScattered boolean
---@field OnBecomeOBViewTarget FBroadcastOneCharacterDelegate
---@field OnLeaveOBViewTarget FBroadcastOneCharacterDelegate
---@field DefaultModifys ULuaArrayHelper<FCameraModifyData>
---@field CoverAllAvatarMeshInfo FCoverAllAvatarMeshInfo
---@field CoverAllMeshAnimBPPath FSoftClassPath
---@field OnAnimInstanceChangeEvent FAnimInstanceChangeDelegate
---@field bHasLastAnimChange boolean
---@field CurrentGravityScale number
---@field CheckCurWeaponMeshVisibleInterval number
---@field CheckCurWeaponMaxFailedCount number
---@field CurCheckCurWeaponMeshVisibleInterval number
---@field bHasReportWeaponMeshVisibleCheck boolean
---@field DistanceBetweenLastShootHitPosAndSelfLoc number
---@field PlayerHitBoxPositionOffsetCheckInterval number
---@field PlayerHitBoxPositionOffsetCheckThreshold number
---@field CheckPlayerHitBoxPositionOffsetFailedCntThreshold number
---@field ReportPlayerHitBoxPositionOffsetCheckColdTimeSecs number
---@field ReportPlayerHitBoxPositionMaxDisToCamera number
---@field PhysBoxBoneName string
---@field CurCheckPlayerHitBoxPositionOffsetInterval number
---@field CurCheckPlayerHitBoxPositionOffsetFailedCnt number
---@field CurCheckPlayerHitBoxPositionOffsetFailedInfoList ULuaArrayHelper<string>
---@field LastReportPlayerHitBoxPositionOffsetCheckTimeSecs number
---@field PlayerPickupAvailableActorPoolCheckInterval number
---@field CheckPlayerPickupAvailableActorPoolFailedCntThreshold number
---@field CurCheckPlayerPickupAvailableActorPoolInterval number
---@field bHasReportPlayerPickupAvailableActorPoolMiss boolean
---@field CachePlayerPickupAvailableActorPoolMissData ULuaMapHelper<AActor, number>
---@field CheckAutoFireFailedCntThreshold number
---@field bHasReportCheckAutoFire boolean
---@field CurCheckAutoFireFailedCnt number
---@field SwitchWeaponStateLeakCheckFailedCnt number
---@field CurSwitchWeaponStateLeakCheckInterval number
---@field bHasReportBulletIgnoreDiffBPTeammate boolean
---@field HitEffectSwitch boolean
---@field bLockAddControllerInput boolean
---@field CameraDebugReportCount number
---@field CameraLocationErrorThreshold number
---@field bCalcCameraIgnoreAbsolute boolean
---@field SuddenDeathDamageTypes ULuaArrayHelper<EDamageType>
---@field bIsOpenWeaponSight boolean
---@field f_MaxFallingSpeed number
---@field HideWeaponSlot ESurviveWeaponPropSlot
---@field ShowWeaponSlot ESurviveWeaponPropSlot
---@field EnterCirclePainVolume FOnChangeInCircle
---@field LeaveCirclePainVolume FOnChangeInCircle
---@field EnergyChangeEvent FOnEnergyChange
---@field bInCirclePainVolume boolean
---@field ReplaceCustomNetRelevant ICustomNetRelevantInterface @Array of ActorComponents that have been added by the user on a per-instance basis.
---@field AddtiveCustomNetRelevant ULuaArrayHelper<ICustomNetRelevantInterface>
---@field ClientOverwriteSuits ULuaMapHelper<number, FItemDefineID>
---@field bIsClientOverwriteSuits boolean
---@field GalaxyCompClassTemp UGalaxyFaceUtils
---@field LerpFOVCameraData FCameraOffsetData
---@field LerpFOVModify FCameraModifyData
---@field bCheckPlayerStateCharacter boolean
---@field SwitchPPEventDelegate FSwitchPPEvent
---@field ShotGunDamageCacheDataMap ULuaMapHelper<ASTExtraShootWeapon, FShotGunDamageCacheData>
---@field bTakingDamageByShootWeapon boolean
---@field MeleeAttackControllerClsPtr UMeleeAttackController
---@field AbsorbRepData FMeleeAttackAbsorbRepData
---@field MeleeDamageIgnoreHurtAnimStates ULuaArrayHelper<EPawnState>
---@field MeleeAttackControllerCls UMeleeAttackController
---@field ViewRotErrorTime number
---@field ViewRotErrorTimeThreshold number
---@field Redundant_AvatarSyncData ULuaArrayHelper<FMeshSynData>
---@field Redundant_PlayerBackPackCapacity number
---@field Redundant_GlideGlobalVisible boolean
---@field Redundant_NetEmoteData FNetEmoteData
---@field Redundant_NetFacialEmoteData FNetEmoteData
---@field Redundant_ThrowComponent_ThrowObjectData FThrowObjectData
---@field Redundant_FaceInfoData FGalaxyFaceReplicatedData
---@field Redundant_FaceState FFaceState
---@field OnOpenTreasureBox FOnOpenTreasureBox
---@field bOverlapForHandCart boolean
---@field CriticalVerifyFailedCountRepOnReplay number
---@field TeammateOBTransformForbidKeys ULuaArrayHelper<string>
---@field TeammateOBRecoverForbidKeys ULuaArrayHelper<string>
---@field LocalPlayerMoveCacheDataList ULuaArrayHelper<FLocalPlayerMoveCacheData>
---@field CurrentCheckArea ULuaArrayHelper<UOverlapCheckAreaComponent>
---@field CheckAreaPath ULuaArrayHelper<string>
---@field OBItemList ULuaArrayHelper<FOBSimpleItemInfo>
---@field bPendingExitHidden boolean
---@field ToClientScopeZoomValue number
---@field LastActiveReplicateMovementTime number
---@field IllegalTeamTickCounts number
---@field CheckIllegalTeamInfo ULuaMapHelper<number, number>
---@field CheckIllegalTeamBeginTime ULuaMapHelper<number, number>
---@field bStillCheck boolean
---@field bHasReportIlleaglTeam boolean
---@field bIllegalMoveState boolean
---@field IllegalDanceTime number
---@field IllegalTransformTime number
---@field IllegalAirAttackTime number
---@field IllegalDropItemTime number
---@field OnReceiveIllegalPunishEvent FIllegalPunishTypeForReplay
---@field OnVaultStateChange FOnVaultStateChange
---@field bInCounterDownTime boolean
---@field LastNonVisibilityForLineTraceTime number
---@field InstigateDamageOBControllersMap ULuaMapHelper<ASTExtraPlayerController, number>
---@field bEnableReplicatedMovementOptimize boolean
---@field bEnableDynamicBaseOpenSimulateMovementTickOptimize boolean
---@field ShovelingModifyCameraDataName string
---@field CharacterGARepData FGenericAbilityRepData
---@field MountedGenericAbilities ULuaMapHelper<FGenericAbilityKey, UGenericAbilityBase>
---@field GenericAbilityTagQueryTable ULuaMapHelper<FGameplayTag, FGenericAbilityKeyArray>
---@field vehicleHitData FVehicleHitData
---@field b_EnableAnimSpeedScale boolean
---@field f_AnimSpeedScale number
---@field EnableWeaponAbilityDataArray ULuaArrayHelper<FEnableWeaponAbilityData>
---@field EnableWeaponAbilityDataMap ULuaMapHelper<number, FEnableWeaponAbilityData>
---@field EnableWeaponAbility ULuaMapHelper<number, UBackpackWeaponNotifyEnableAbilityHandle>
---@field bIsOperatingMachineForceFPP boolean
---@field bInBattleFieldDeath boolean
---@field bIsEscapeUnderCover boolean
---@field bIsMechaUnderCover boolean
---@field bIsLeader boolean
---@field bAddDamageInstigatorAnyWay boolean
---@field bIsFindBuildSystemCom boolean
---@field NewFPPUpperBodyMeshTag string
---@field EnableCutParachute boolean
---@field IsCutParachutingFallingProtect boolean
---@field IgnoreFellOutOfWorld boolean
---@field GotoDieHandleAssistsDelegate FOnGotoDieHandleAssistsDelegate
---@field TmpGotoDieAssists ULuaArrayHelper<ASTExtraPlayerState>
---@field OnCharacterEnterTurnDelegate FCharacterEnterTurnEvent
---@field CheckCanProneComponentList ULuaArrayHelper<USceneComponent>
---@field LowFrequencyTickDeltaTime number
---@field LowFrequencyTickInterval number
---@field DefaultGroundDust UGroundDustEffectDataAsset
---@field GroundDustTraceDist number
---@field GroundDustSocketName string
---@field DyingWithPistolCameraYawThs number
---@field DyingWithPistolCameraYawThs_NewFPP number
---@field DyingCameraRotSensibilityDecreaseThs number
---@field DyingCameraRotSensibilityDecreaseThs_NewFPP number
---@field MinDyingCameraSensDecreaseTime number
---@field DyingCameraSensDecreaseCD number
---@field CurDyingFaceRotBlendType EDyingFaceRotBlendType
---@field FaceRotBlendSpeedMove number
---@field FaceRotBlendSpeedMove_NewFPP number
---@field FaceRotBlendSpeedOutThs number
---@field FaceRotBlendSpeedOutThs_NewFPP number
---@field FaceRotBlendSpeedUnEquip number
---@field bHasDisableFaceRotOnDying boolean
---@field DyingCameraRotSensibilityScale number
---@field DyingCameraRotSensibilityScale_NewFPP number
---@field DyingCameraRotMaxDiff number
---@field DyingCameraRotMaxDiff_NewFPP number
---@field AvatarCustomSyncData FAvatarCustomSyncData
---@field bSimulatorForceUseObserverSmoothMove boolean
---@field OnCharacterVehAnimNeedUpdateDelegate FPlayerVehAnimNeedUpdate
---@field OnCharacterWeaponTriggerEventDelegate FOnCharacterWeaponTriggerEventDelegate
---@field UGCCustomModeShootTargetCalLocationDelegate FUGCCustomModeShootTargetCalLocationDelegate
---@field UGCCustomModeShootTargetRoughHitModeCheckDelegate FUGCCustomModeShootTargetRoughHitModeCheckDelegate
---@field UGCCustomModeShootTargetTraceStartLocDelegate FUGCCustomModeShootTargetTraceStartLocDelegate
---@field UGCCustomModeShootTargetTraceEndLocDelegate FUGCCustomModeShootTargetTraceEndLocDelegate
---@field UGCCustomModeShootTargetTraceShootRotDelegate FUGCCustomModeShootTargetTraceShootRotDelegate
---@field bOpenKillTrackerZOffset boolean
---@field KillTrackerZOffset number
---@field RevertSwitchWeaponAnimSlotList ULuaArrayHelper<string>
---@field ShootDamageInOneFrameMap ULuaMapHelper<number, FShootDamageValueData>
---@field DSRecordShootDamageMap ULuaMapHelper<number, number>
---@field OnBaseCharacterTickDelegate FOnBaseCharacterTickDelegate
---@field bDriverEnableShootingUI boolean
---@field fHorseMaxSpeedScale number
---@field fHorseMaxSpeedScaleMax number
---@field fHorseMaxJumpHightScale number
local ASTExtraBaseCharacter = {}

---暂停大世界移动反外挂
---@param InTime number
function ASTExtraBaseCharacter:PauseBigHomeMoveAcc(InTime) end

---恢复大世界移动反外挂
function ASTExtraBaseCharacter:ResumeBigHomeMoveAcc() end

---执行移动反外挂的强制处罚
---@param InTag string
---@param InTime number
function ASTExtraBaseCharacter:StartForcePunish(InTag, InTime) end

---停止移动反外挂的强制处罚
function ASTExtraBaseCharacter:StopForcePunish() end

---@param FirstPS ASTExtraPlayerState
---@param SecondPS ASTExtraPlayerState
---@return boolean
function ASTExtraBaseCharacter:SameInterestRelationship(FirstPS, SecondPS) end

function ASTExtraBaseCharacter:OnRep_OpenCostSpecMotion() end

---@param InOpenCostSpecMotion boolean
function ASTExtraBaseCharacter:ServerSetOpenCostSpecMotion(InOpenCostSpecMotion) end

---@param InAllow boolean
function ASTExtraBaseCharacter:SetAllowUserToggleADS(InAllow) end

---@return number
function ASTExtraBaseCharacter:GetValueLimitForHealthPredict() end

---@param PredictValueLimit number
function ASTExtraBaseCharacter:SetValueLimitForHealthPredict(PredictValueLimit) end

function ASTExtraBaseCharacter:ResetValueLimitForHealthPredict() end

---@param InUserData ULuaArrayHelper<number>
function ASTExtraBaseCharacter:OnRepFRRUserData(InUserData) end

function ASTExtraBaseCharacter:TryManualEnterParachute() end

function ASTExtraBaseCharacter:OnRep_ThePlane() end

---@return boolean
function ASTExtraBaseCharacter:IsAutoVaultBtnPressed() end

---@param ShootWeapon ASTExtraShootWeapon
---@param Victim ASTExtraCharacter
function ASTExtraBaseCharacter:ServerHandlePlayBulletFlyPassEarSoundCheck(ShootWeapon, Victim) end

---@return number
function ASTExtraBaseCharacter:GetLastStartFireTime() end

---@param Duration number
function ASTExtraBaseCharacter:SkipFallLandingSoundForPeriod(Duration) end

---@param _bVaultIsOpen boolean
---@param _bDoubleVaultIsOpen boolean
function ASTExtraBaseCharacter:SetVaultOpening(_bVaultIsOpen, _bDoubleVaultIsOpen) end

function ASTExtraBaseCharacter:UpdateVaultCompensatoryOption() end

---@param PrevParam FDoubleVaultParam
function ASTExtraBaseCharacter:Onrep_DoubleVaultParam(PrevParam) end

---@param NewState EDoubleVaultState
---@param bLift boolean
---@param Height number
function ASTExtraBaseCharacter:SetDoubleVaultState(NewState, bLift, Height) end

---@param Location FVector
---@param Rotation FRotator
function ASTExtraBaseCharacter:SetDoubleVaultLocAndRot(Location, Rotation) end

---@param VaultMate ASTExtraBaseCharacter
function ASTExtraBaseCharacter:SetDoubleVaultMate(VaultMate) end

function ASTExtraBaseCharacter:OnRep_WaterObj() end

---@param bShow boolean
---@param PromptText string
---@param LeftTime number
---@param Duration number
---@param SoftAnimMontagePath FSoftObjectPath
---@return boolean
function ASTExtraBaseCharacter:ShowCDBarUI(bShow, PromptText, LeftTime, Duration, SoftAnimMontagePath) end

function ASTExtraBaseCharacter:ForceHideCDBarUI() end

---@param bShow boolean
---@param PromptText string
---@param LeftTime number
---@param Duration number
---@param SoftAnimMontagePath FSoftObjectPath
function ASTExtraBaseCharacter:ClientShowCDBarUI(bShow, PromptText, LeftTime, Duration, SoftAnimMontagePath) end

function ASTExtraBaseCharacter:UserPressCancelBtnInCDBarUI() end

---@param SoftObjectPath FSoftObjectPath
function ASTExtraBaseCharacter:OnLoadCDBarAnimCompleted(SoftObjectPath) end

function ASTExtraBaseCharacter:UserCancelRescue() end

function ASTExtraBaseCharacter:RequestUserCancleRescue() end

---@param Rescuer ASTExtraBaseCharacter
---@param TheRescued ASTExtraBaseCharacter
function ASTExtraBaseCharacter:HandleRescueInterrupted(Rescuer, TheRescued) end

---@param bIsBeingRescued boolean
function ASTExtraBaseCharacter:SetIsBeingRescued(bIsBeingRescued) end

---@return boolean
function ASTExtraBaseCharacter:IsCarringOther() end

---@return boolean
function ASTExtraBaseCharacter:IsBeingCarried() end

---@return boolean
function ASTExtraBaseCharacter:IsCarringDeadBox() end

---@param bResetRescue boolean
---@param bResetCarry boolean
function ASTExtraBaseCharacter:ResetRescueAndCarryData(bResetRescue, bResetCarry) end

---@param bResetRescue boolean
---@param bResetCarryPawn boolean
---@param bResetCarryDeadBox boolean
function ASTExtraBaseCharacter:ResetRescueAndCarryPawnAndCarryDeadBoxData(bResetRescue, bResetCarryPawn, bResetCarryDeadBox) end

function ASTExtraBaseCharacter:bShouldDumpCallstackWhenMovingfast_ToTrue() end

function ASTExtraBaseCharacter:bShouldDumpCallstackWhenMovingfast_Tofalse() end

function ASTExtraBaseCharacter:OnRep_IsRescuingOtherStatusChange() end

function ASTExtraBaseCharacter:OnRep_IsBeingRescuedStatusChange() end

function ASTExtraBaseCharacter:OnRep_RescueUIDataForReplay() end

function ASTExtraBaseCharacter:OnRep_CarryRepData() end

function ASTExtraBaseCharacter:OnRep_CarryDeadBoxRepData() end

function ASTExtraBaseCharacter:OnRep_VoiceGenderNotify() end

function ASTExtraBaseCharacter:OnRep_BeCarriedByWho() end

function ASTExtraBaseCharacter:OnRep_bIsCallingForRevival() end

---@return boolean
function ASTExtraBaseCharacter:CanStartReceive() end

---@param candidate ASTExtraBaseCharacter
---@param tempGiftType EUTGiftType
---@param SubGiftType number
function ASTExtraBaseCharacter:SetMyGiftGiverCandidate(candidate, tempGiftType, SubGiftType) end

function ASTExtraBaseCharacter:OnRep_GiftGiverCandidateChanged() end

function ASTExtraBaseCharacter:OnRep_GiftGiverCandidateTypeChanged() end

---@param newBonfire ABonfireActor
function ASTExtraBaseCharacter:SetCurBonfire(newBonfire) end

function ASTExtraBaseCharacter:OnRep_CurBonFire() end

function ASTExtraBaseCharacter:GrenadeBackToWeaponServerCall() end

---@param grenadeID number
function ASTExtraBaseCharacter:SpawnAndSwithToGrenadeServerCall(grenadeID) end

---@param ID FItemDefineID
function ASTExtraBaseCharacter:SpawnAndSwithToGrenadeServerCallWithID(ID) end

---@param grenadeType number
---@return string
function ASTExtraBaseCharacter:GetGrenadeNameByGrenadeType(grenadeType) end

---@param EmoteID number
---@return boolean
function ASTExtraBaseCharacter:GetIsEffectMotionEmote(EmoteID) end

---@return boolean
function ASTExtraBaseCharacter:ShouldUpdateHPOnUI() end

---@return boolean
function ASTExtraBaseCharacter:PlayerConfirmToRescue() end

---@return boolean
function ASTExtraBaseCharacter:PlayerConfirmToCarry() end

---@param Vehicle ASTExtraVehicleBase
---@return boolean
function ASTExtraBaseCharacter:PlayerConfirmToPutDown(Vehicle) end

---@return boolean
function ASTExtraBaseCharacter:PlayerConfirmToCarryDeadBox() end

---@return boolean
function ASTExtraBaseCharacter:PlayerConfirmToPutDownDeadBox() end

---@return boolean
function ASTExtraBaseCharacter:WhetherShowAbandonBtnOnCarring() end

function ASTExtraBaseCharacter:OnRescueOtherSucceed() end

---@param bRescueOther boolean
---@param Self ASTExtraBaseCharacter
---@param Other ASTExtraBaseCharacter
function ASTExtraBaseCharacter:OnRescueOtherStart(bRescueOther, Self, Other) end

---@param bRescueOther boolean
---@param Self ASTExtraBaseCharacter
---@param Other ASTExtraBaseCharacter
function ASTExtraBaseCharacter:OnRescueOtherEnd(bRescueOther, Self, Other) end

---设置着陆事件屏蔽时间
---@param InBlockTime number
function ASTExtraBaseCharacter:SetLandingEventBlockTime(InBlockTime) end

---@param oldMode EPlayerCameraMode
---@param newMode EPlayerCameraMode
function ASTExtraBaseCharacter:OnCameraModeChange(oldMode, newMode) end

---@param InFov number
function ASTExtraBaseCharacter:SetCurScopeFov(InFov) end

---@param NewZoomIndex number
function ASTExtraBaseCharacter:SetScopeZoomValue(NewZoomIndex) end

---@return number
function ASTExtraBaseCharacter:GetFPPDefaultFov() end

---@return number
function ASTExtraBaseCharacter:GetTPPDefaultFov() end

---@param InFov number
function ASTExtraBaseCharacter:SetFPPDefaultFov(InFov) end

---@param InFov number
function ASTExtraBaseCharacter:SetTPPDefaultFov(InFov) end

---@return number
function ASTExtraBaseCharacter:IsUseCameraProcess() end

---@return FRotator
function ASTExtraBaseCharacter:GetReplicatedControlRotation() end

function ASTExtraBaseCharacter:OnRep_SimulateViewData() end

function ASTExtraBaseCharacter:OnRep_AimCameraRotatorOffset() end

---@param InOffset FRotator
function ASTExtraBaseCharacter:ReportAimCameraRotatorOffset(InOffset) end

function ASTExtraBaseCharacter:OnRep_VehicleViewPitchYaw() end

function ASTExtraBaseCharacter:OnRep_MedalPicUrl() end

function ASTExtraBaseCharacter:OnRep_AnchorPlat() end

function ASTExtraBaseCharacter:OnRep_PassCardBuyType() end

function ASTExtraBaseCharacter:OnRep_ReplicatedMovementCriticalFrame() end

---@param InFlagDataList ULuaArrayHelper<FCommonFlagData>
function ASTExtraBaseCharacter:SetCommonFlagData(InFlagDataList) end

---@param InFlagData FCommonFlagData
function ASTExtraBaseCharacter:AddOneCommonFlagDataCustom(InFlagData) end

---@param InFlagData FCommonFlagData
function ASTExtraBaseCharacter:RemoveOneCommonFlagDataCustom(InFlagData) end

function ASTExtraBaseCharacter:OnRep_CommonFlagData() end

---@param InFlagName string
---@param OutStr string
---@return boolean
function ASTExtraBaseCharacter:GetCommonFlagDataItemString(InFlagName, OutStr) end

---@param InFlagName string
---@param OutInt64 number
---@return boolean
function ASTExtraBaseCharacter:GetCommonFlagDataItemInt64(InFlagName, OutInt64) end

---@param InFlagName string
---@param OutBool boolean
---@return boolean
function ASTExtraBaseCharacter:GetCommonFlagDataItemBoolean(InFlagName, OutBool) end

function ASTExtraBaseCharacter:UpdateCommonFlagData() end

---@return boolean
function ASTExtraBaseCharacter:CheckDisableShootImpact() end

---@param bNewHidden boolean
---@return boolean
function ASTExtraBaseCharacter:BPCanSetWeaponActorHiddenInGame(bNewHidden) end

---@param bNewHidden boolean
---@return boolean
function ASTExtraBaseCharacter:BPCanSetActorHiddenInGame(bNewHidden) end

function ASTExtraBaseCharacter:OnRep_TeamID() end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraBaseCharacter:TakeDamage(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param bNewUnderAttack boolean
function ASTExtraBaseCharacter:OnPlayerUnderAttacked(bNewUnderAttack) end

function ASTExtraBaseCharacter:BPLua_PostNetInit() end

function ASTExtraBaseCharacter:CheckBaseIsClear() end

---设置Base，给蓝图调用的接口 注意：只用于热更解决bug，正常情况下不要使用。
---@param NewBase UPrimitiveComponent
---@param BoneName string
---@param bNotifyActor boolean
function ASTExtraBaseCharacter:SetBaseSlow(NewBase, BoneName, bNotifyActor) end

---DS设置客户端的Base的RPC，给蓝图调用的接口 注意：1、只用于热更解决bug，正常情况下不要使用。 2、可靠的RPC，不要频繁调用
---@param NewBase UPrimitiveComponent
---@param BoneName string
---@param bNotifyActor boolean
function ASTExtraBaseCharacter:ClientForceSetBase(NewBase, BoneName, bNotifyActor) end

---@param AnimMontage UAnimMontage
---@param InPlayRate number
---@param StartSectionName string
function ASTExtraBaseCharacter:ClientPlayAnimMontage(AnimMontage, InPlayRate, StartSectionName) end

---@param AnimMontage UAnimMontage
---@param InPlayRate number
---@param InStartPosition number
---@param StartSectionName string
---@param PlayType EMainCharMontagePlayType
function ASTExtraBaseCharacter:PlayAnimMontageWithPlayType(AnimMontage, InPlayRate, InStartPosition, StartSectionName, PlayType) end

---@param AnimMontage UAnimMontage
---@param InPlayRate number
---@param InStartPosition number
---@param StartSectionName string
---@param PlayType EMainCharMontagePlayType
function ASTExtraBaseCharacter:PlayAnimMontageWithPlayType_Internal(AnimMontage, InPlayRate, InStartPosition, StartSectionName, PlayType) end

---@return FVector
function ASTExtraBaseCharacter:GetVelocitySafety() end

---@return number
function ASTExtraBaseCharacter:GetVelocitySize() end

---@param AnimMontage UAnimMontage
---@param InPlayRate number
function ASTExtraBaseCharacter:SetAnimMontagePlayRate(AnimMontage, InPlayRate) end

---@param AnimMontage UAnimMontage
---@return number
function ASTExtraBaseCharacter:GetAnimMontagePlayRate(AnimMontage) end

function ASTExtraBaseCharacter:OnRep_ReplicatedBasedMovement() end

function ASTExtraBaseCharacter:OnRep_NewReplicatedMovement() end

---@param AnimSequence UAnimSequenceBase
---@param SlotName string
---@param InPlayRate number
---@param blendTime number
---@return number
function ASTExtraBaseCharacter:PlaySlotAnim(AnimSequence, SlotName, InPlayRate, blendTime) end

---@param AnimSequence UAnimSequenceBase
---@param SlotName string
---@param blendTime number
---@return number
function ASTExtraBaseCharacter:StopSlotAnim(AnimSequence, SlotName, blendTime) end

---@param AnimMontage UAnimMontage
---@return boolean
function ASTExtraBaseCharacter:Montage_IsPlaying(AnimMontage) end

---@param AnimMontage UAnimMontage
---@return number
function ASTExtraBaseCharacter:Montage_GetPosition(AnimMontage) end

---@param Rule FDamageReductionRule
---@param Key number
---@return number
function ASTExtraBaseCharacter:AddDamageReductionData(Rule, Key) end

---@param Key number
function ASTExtraBaseCharacter:RemoveDamageReductionData(Key) end

function ASTExtraBaseCharacter:ResetDamageReductionData() end

---非OB模式返回玩家的controlrotation  OB模式返回玩家的controlrotation 可以屏蔽OB模式下玩家转动小眼睛的干扰
---@return FRotator
function ASTExtraBaseCharacter:GetCachedControlRotation() end

function ASTExtraBaseCharacter:UpdateLocalHealthHistoryList() end

function ASTExtraBaseCharacter:BP_ForceDie() end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param DamageInstigatorPawn APawn
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsDeath(Damage, DamageEvent, DamageInstigatorPawn, IsHeadShotDamage) end

---@param Damage number
---@param DamageEvent FShootWeaponDamageEvent
---@param DamageInstigatorPawn APawn
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientDeath_ShootWeaponDamage(Damage, DamageEvent, DamageInstigatorPawn, IsHeadShotDamage) end

---@param Damage number
---@param DamageInstigatorPawn APawn
---@param IsHeadShotDamage boolean
---@param AvatarDamagePosition number
---@param ImpactPoint FVector_NetQuantize
---@param DamageTypeClass UDamageType
---@param ShootDir FVector_NetQuantizeNormal
---@param HitBone string
---@param DamageEventFlags number
---@param bClientSimulateDamage boolean
function ASTExtraBaseCharacter:BroadcastClientDeath_ShootWeaponDamageNew(Damage, DamageInstigatorPawn, IsHeadShotDamage, AvatarDamagePosition, ImpactPoint, DamageTypeClass, ShootDir, HitBone, DamageEventFlags, bClientSimulateDamage) end

---@param BaseDamage number
---@param PointDamageEvent FRadialDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateRadialDamage(BaseDamage, PointDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param PointDamageEvent FSTPointDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulatePointDamage(BaseDamage, PointDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param PoisonDamageEvent FPoisonDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulatePoisonDamage(BaseDamage, PoisonDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DrowningDamageEvent FDrowningDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateDrowningDamage(BaseDamage, DrowningDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param FallingDamageEvent FFallingDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateFallingDamage(BaseDamage, FallingDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param BurningDamageEvent FSTBurningDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateBurningDamage(BaseDamage, BurningDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param MeleeDamageEvent FMeleeDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateMeleeDamage(BaseDamage, MeleeDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param VehicleDamageEvent FVehicleDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateVehicleDamage(BaseDamage, VehicleDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageEvent FLastBreathWithoutRescueDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_LastBreathWithoutRescue(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageEvent FElectricDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_Electric(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageEvent FShootWeaponDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param DamageEventFlags EDamageEventFlags
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_ShootWeapon(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, DamageEventFlags) end

---@param BaseDamage number
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param DamageEventFlags number
---@param AvatarDamagePosition number
---@param ImpactPoint FVector_NetQuantize
---@param DamageTypeClass UDamageType
---@param ShootDir FVector_NetQuantizeNormal
---@param HitBone string
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_ShootWeaponNew(BaseDamage, DamageInstigatorPawn, ServerCurHealth, DamageEventFlags, AvatarDamagePosition, ImpactPoint, DamageTypeClass, ShootDir, HitBone) end

---@param VictimTargetPackageList ULuaArrayHelper<FSyncInstigatorDamagePackage_VictimTarget>
function ASTExtraBaseCharacter:RPC_Owner_SyncInstigatorDamagePackageList(VictimTargetPackageList) end

---@param VictimTargetPackageList ULuaArrayHelper<FSyncInstigatorDamagePackage_VictimTarget>
function ASTExtraBaseCharacter:HandleSyncInstigatorDamagePackageList(VictimTargetPackageList) end

---@param CurHP number
---@param ShootWeapon ASTExtraShootWeapon
---@param DamageCauserPlayer ASTExtraCharacter
---@param ImpactPoint FVector_NetQuantize
---@param ImpactNormal FVector_NetQuantizeNormal8
---@param SurfaceType number
---@param HitBodyType number
---@param bIsUnderWater boolean
---@param HitBoneName string
---@param RelativeHitPos FVector_NetQuantize
---@param ShootID number
---@param HitLocalFrame number
---@param DSTimestamp number
---@param FinalDamage number
function ASTExtraBaseCharacter:RPC_OwnerClient_NotifyShootDamage(CurHP, ShootWeapon, DamageCauserPlayer, ImpactPoint, ImpactNormal, SurfaceType, HitBodyType, bIsUnderWater, HitBoneName, RelativeHitPos, ShootID, HitLocalFrame, DSTimestamp, FinalDamage) end

---@param CurHP number
---@param ShootWeapon ASTExtraShootWeapon
---@param DamageCauserPlayer ASTExtraCharacter
---@param ImpactPoint FVector_NetQuantize
---@param ImpactNormal FVector_NetQuantizeNormal8
---@param SurfaceType number
---@param HitBodyType number
---@param bIsUnderWater boolean
---@param HitBoneName string
---@param RelativeHitPos FVector_NetQuantize
---@param ShootID number
---@param HitLocalFrame number
---@param DSTimestamp number
---@param FinalDamage number
function ASTExtraBaseCharacter:LocalHandleDSNotifyShootDamage(CurHP, ShootWeapon, DamageCauserPlayer, ImpactPoint, ImpactNormal, SurfaceType, HitBodyType, bIsUnderWater, HitBoneName, RelativeHitPos, ShootID, HitLocalFrame, DSTimestamp, FinalDamage) end

---@param ShootWeapon ASTExtraShootWeapon
---@param HitDataArray ULuaArrayHelper<FBulletHitInfoRepData>
function ASTExtraBaseCharacter:RPC_NotifyShootWeaponBulletHitInfoForReplay(ShootWeapon, HitDataArray) end

---@param BaseDamage number
---@param DamageEvent FSTCustomRadialDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateSTCustomRadialDamage(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageEvent FSTRadialDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_STRadial(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param AirAttackDamageEvent FSTAirAttackRadialDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateAirAttackDamage(BaseDamage, AirAttackDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param PoisonWaterDamageEvent FSTPoisonWaterDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulatePoisonWaterDamage(BaseDamage, PoisonWaterDamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageEvent FLowTemperatureDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_LowTemperature(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageEvent FUGCPointDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_UGCPointDamage(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageEvent FUGCRadialDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_UGCRadialDamage(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageEvent FCampCaptainDeadDamageEvent
---@param DamageInstigatorPawn APawn
---@param ServerCurHealth number
---@param _isFatalHealthCost boolean
---@param IsHeadShotDamage boolean
function ASTExtraBaseCharacter:BroadcastClientsSimulateCampCaptainDeadDamageEvent(BaseDamage, DamageEvent, DamageInstigatorPawn, ServerCurHealth, _isFatalHealthCost, IsHeadShotDamage) end

---@param BaseDamage number
---@param DamageInstigatorPawn APawn
function ASTExtraBaseCharacter:BroadcastClientsSimulateDamage_ShootWeapon_BP(BaseDamage, DamageInstigatorPawn) end

---@param DamageType number
---@param Damage number
---@param InstiagatorPawn APawn
---@param CurHealth number
---@param bFatalDamage boolean
---@param bHeadShot boolean
---@param HitLocation FVector
---@param HitFromDirection FVector
function ASTExtraBaseCharacter:UGCClientTakeDamage(DamageType, Damage, InstiagatorPawn, CurHealth, bFatalDamage, bHeadShot, HitLocation, HitFromDirection) end

---@param bOutIsTurning boolean
---@param bOutIsTurningLeft boolean
function ASTExtraBaseCharacter:GetIsTurning(bOutIsTurning, bOutIsTurningLeft) end

function ASTExtraBaseCharacter:ServerTriggerJump() end

function ASTExtraBaseCharacter:OnGameEnterFightMulticast() end

function ASTExtraBaseCharacter:OnGameEnterFightServer() end

---@param State string
function ASTExtraBaseCharacter:OnGamemodeStateChanged(State) end

---@return boolean
function ASTExtraBaseCharacter:HasDynamicMovementBase() end

---@param Component UPrimitiveComponent
---@return boolean
function ASTExtraBaseCharacter:IsDynamicMovementBase(Component) end

---@param JumpZVelocity number
function ASTExtraBaseCharacter:SetJumpZVelocity(JumpZVelocity) end

function ASTExtraBaseCharacter:ResetJumpZVelocity() end

---@param ComponentClass UClass
---@param IsActive boolean
function ASTExtraBaseCharacter:SetComponentsActive(ComponentClass, IsActive) end

---@param ComponentClass UClass
function ASTExtraBaseCharacter:SyncComponentsActiveAndTickEnable(ComponentClass) end

---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
---@param _finalDamage number
---@param _hitImpulseDir FVector
---@param _hitInfo FHitResult
---@param bIsHeadShot boolean
function ASTExtraBaseCharacter:GotoDie(EventInstigator, DamageCauser, DamageEvent, _finalDamage, _hitImpulseDir, _hitInfo, bIsHeadShot) end

---@return FRotator
function ASTExtraBaseCharacter:GetViewRotation() end

---@param Damage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
---@return number
function ASTExtraBaseCharacter:BPTakeDamage(Damage, EventInstigator, DamageCauser, DamageEvent) end

---@param KillingDamage number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageEvent FDamageEvent
---@param IsClient boolean
---@param IsPointDamage boolean
---@param IsHeadShotDamage boolean
---@param damageTypeID number
function ASTExtraBaseCharacter:BPDie(KillingDamage, EventInstigator, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageEvent, IsClient, IsPointDamage, IsHeadShotDamage, damageTypeID) end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function ASTExtraBaseCharacter:BPNotifyStartDying(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageType UDamageType
function ASTExtraBaseCharacter:BPNotifyDeathEnd(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageType) end

---@param DamageReceived number
---@param DamageType UDamageType
---@param Origin FVector
---@param Radius number
---@param HitInfo FHitResult
---@param InstigatedBy AController
---@param DamageCauser AActor
---@param ImpulseDir FVector
function ASTExtraBaseCharacter:BPReceiveRadialDamage(DamageReceived, DamageType, Origin, Radius, HitInfo, InstigatedBy, DamageCauser, ImpulseDir) end

---@param Damage number
---@param DamageType UDamageType
---@param HitLocation FVector
---@param HitNormal FVector
---@param HitComponent UPrimitiveComponent
---@param BoneName string
---@param ShotFromDirection FVector
---@param InstigatedBy AController
---@param DamageCauser AActor
---@param HitInfo FHitResult
function ASTExtraBaseCharacter:BPReceivePointDamage(Damage, DamageType, HitLocation, HitNormal, HitComponent, BoneName, ShotFromDirection, InstigatedBy, DamageCauser, HitInfo) end

---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
function ASTExtraBaseCharacter:BPReceiveMeleeDamage(Damage, DamageType, InstigatedBy, DamageCauser) end

---@param Damage number
---@param DamageType UDamageType
---@param InstigatedBy AController
---@param DamageCauser AActor
---@param DamageEventFlags EDamageEventFlags
function ASTExtraBaseCharacter:BPReceiveDamage(Damage, DamageType, InstigatedBy, DamageCauser, DamageEventFlags) end

---@param NewType ESTEScopeType
---@param ForceInterrupt boolean
function ASTExtraBaseCharacter:ScopeInterrupt(NewType, ForceInterrupt) end

function ASTExtraBaseCharacter:OnScopeHandFold() end

function ASTExtraBaseCharacter:OnScopeNotHandFold() end

---@param NewType ESTEScopeType
---@param InCheckDelayFlag number
---@return boolean
function ASTExtraBaseCharacter:ScopeIn(NewType, InCheckDelayFlag) end

---@param DeltaTime number
---@return boolean
function ASTExtraBaseCharacter:DelayScopeIn(DeltaTime) end

function ASTExtraBaseCharacter:InvalidDelayScopeIn() end

---@param NewType ESTEScopeType
---@param bIsOB boolean
---@param InCheckDelayFlag number
function ASTExtraBaseCharacter:ScopeOut(NewType, bIsOB, InCheckDelayFlag) end

---@param DeltaTime number
---@return boolean
function ASTExtraBaseCharacter:DelayScopeOut(DeltaTime) end

function ASTExtraBaseCharacter:InvalidDelayScopeOut() end

---@param NewType ESTEScopeType
function ASTExtraBaseCharacter:Scoping(NewType) end

---@return boolean
function ASTExtraBaseCharacter:IsAllowScopeIn() end

function ASTExtraBaseCharacter:BPResetCharacter() end

---@param IsOpenScope boolean
function ASTExtraBaseCharacter:OpenScope(IsOpenScope) end

---@return boolean
function ASTExtraBaseCharacter:GetIsAutoAimEnabled() end

---@param IsEnable boolean
function ASTExtraBaseCharacter:SetIsAutoAimEnabled(IsEnable) end

function ASTExtraBaseCharacter:RecordScopeInAttempts() end

function ASTExtraBaseCharacter:RecordScopeInSuccess() end

---@param OldVehWeapon ASTExtraShootWeapon
---@param NewVehWeapon ASTExtraShootWeapon
function ASTExtraBaseCharacter:UseVehWeaponView(OldVehWeapon, NewVehWeapon) end

---@param bIsSwimming boolean
function ASTExtraBaseCharacter:OnPlayerSwimStateChange(bIsSwimming) end

---@return boolean
function ASTExtraBaseCharacter:IsProneMove() end

---@return boolean
function ASTExtraBaseCharacter:IsFirstPerson() end

---@return boolean
function ASTExtraBaseCharacter:IsInFallingState() end

---@param otherPS APlayerState
---@return boolean
function ASTExtraBaseCharacter:IsSameTeamWithPlayerState(otherPS) end

---@param isforce boolean
---@return boolean
function ASTExtraBaseCharacter:Melee(isforce) end

function ASTExtraBaseCharacter:MeleeReleased() end

---@param NewController AController
function ASTExtraBaseCharacter:PossessedBy(NewController) end

---@return boolean
function ASTExtraBaseCharacter:StartFireFilter() end

function ASTExtraBaseCharacter:FixPawnCollisionResponses() end

---@return boolean
function ASTExtraBaseCharacter:StopFireFilter() end

---@param state ESTEPoseState
---@param ShouldShowPrompt boolean
---@return boolean
function ASTExtraBaseCharacter:CheckPoseStateChange(state, ShouldShowPrompt) end

---@param state ESTEPoseState
---@param bIgnoreCD boolean
---@param bIgnoreCheck boolean
---@param ShouldShowPrompt boolean
---@param IsTriggerByPressBtn boolean
---@return boolean
function ASTExtraBaseCharacter:SwitchPoseState(state, bIgnoreCD, bIgnoreCheck, ShouldShowPrompt, IsTriggerByPressBtn) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param InPoseState ESTEPoseState
---@param TimeStamp number
function ASTExtraBaseCharacter:SwitchPoseStateServer(TargetCharacter, InPoseState, TimeStamp) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param FailedPoseState ESTEPoseState
---@param CurPoseState ESTEPoseState
function ASTExtraBaseCharacter:SwitchPoseStateFailedResponse(TargetCharacter, FailedPoseState, CurPoseState) end

---@param TargetCharacter ASTExtraBaseCharacter
---@param InPoseState ESTEPoseState
function ASTExtraBaseCharacter:SwitchPoseStateClient(TargetCharacter, InPoseState) end

---@param FailedPoseState ESTEPoseState
---@param CurPoseState ESTEPoseState
---@return boolean
function ASTExtraBaseCharacter:CheckSwitchPoseStateFailedResponseValidate(FailedPoseState, CurPoseState) end

---@param InRotation FRotator
---@param AdjustFloorNormal boolean
---@return boolean
function ASTExtraBaseCharacter:CheckCanProne(InRotation, AdjustFloorNormal) end

---@return boolean
function ASTExtraBaseCharacter:CheckCanCrouch() end

---@return boolean
function ASTExtraBaseCharacter:CheckCanStand() end

---@return boolean
function ASTExtraBaseCharacter:SimulatedUpdatePoseCollisionForceUpdateLocation() end

---@param curState ESTEPoseState
---@param preState ESTEPoseState
function ASTExtraBaseCharacter:UpdatePoseCollisionCpp(curState, preState) end

---@param InPoseState ESTEPoseState
function ASTExtraBaseCharacter:UpdatePoseCollisionShapes(InPoseState) end

---@param isAuto ESTEWeaponShootType
function ASTExtraBaseCharacter:OnStartFire(isAuto) end

function ASTExtraBaseCharacter:OnStopFire() end

---@param slot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:OnEquipWeapon(slot) end

function ASTExtraBaseCharacter:OnUnEquipWeapon() end

---@param time number
function ASTExtraBaseCharacter:DelayCustomDepth(time) end

function ASTExtraBaseCharacter:OnBeforeGetUp() end

function ASTExtraBaseCharacter:HandleWeaponOnShoot() end

function ASTExtraBaseCharacter:OnRep_MoneyNotify() end

---@return boolean
function ASTExtraBaseCharacter:ReloadCurrentWeapon() end

function ASTExtraBaseCharacter:OnRep_BreathAmmountChange() end

function ASTExtraBaseCharacter:BulletChange() end

---@param RemoteURL string
---@return string
function ASTExtraBaseCharacter:ParsePlayerNameFromRemoteURL(RemoteURL) end

function ASTExtraBaseCharacter:OnRep_MeleeCombatHitInfo() end

function ASTExtraBaseCharacter:OnRep_MeleeCombatPhaseInfo() end

function ASTExtraBaseCharacter:OnRep_EndedAttackKey() end

---@param AttachKey number
---@param bAttackOnce boolean
function ASTExtraBaseCharacter:ServerStartMeleeAttack(AttachKey, bAttackOnce) end

function ASTExtraBaseCharacter:ServerMeleeAttackRelease() end

---@param Seed number
function ASTExtraBaseCharacter:ServerNotifyMeleeCombatCompRandomSeed(Seed) end

---@param AttackKey number
function ASTExtraBaseCharacter:ClientForceStopAttack(AttackKey) end

---@param bIncludeWrapprsOnGround boolean
---@param bIncludeWrapprsInBox boolean
function ASTExtraBaseCharacter:SearchPickUpWrapperActors(bIncludeWrapprsOnGround, bIncludeWrapprsInBox) end

function ASTExtraBaseCharacter:SearchTombBoxes() end

---@param In ULuaArrayHelper<FSearchedTombBoxAndWrapperListResult>
function ASTExtraBaseCharacter:CustomFilterSearchedTombBoxs(In) end

---@param OutGroundWrappers ULuaArrayHelper<FSearchedPickUpItemResult>
---@param OutTombBoxes ULuaArrayHelper<FSearchedTombBoxAndWrapperListResult>
---@return boolean
function ASTExtraBaseCharacter:SearchGroundWrappersAndTombBoxes(OutGroundWrappers, OutTombBoxes) end

---@param FootStepState EFootStepState
---@param DSNotifyLocation FVector
---@param LastFrameVelocity FVector
function ASTExtraBaseCharacter:PlayFootstepSound(FootStepState, DSNotifyLocation, LastFrameVelocity) end

---@param DeltaTime number
function ASTExtraBaseCharacter:CheckFootstepSound(DeltaTime) end

---@return boolean
function ASTExtraBaseCharacter:BPCheckFootStepSound() end

---@param Reason number
---@param Extra string
function ASTExtraBaseCharacter:RecordFootstepSoundSkipReason(Reason, Extra) end

---@param ErrorMsg string
function ASTExtraBaseCharacter:ReportFootStepException(ErrorMsg) end

function ASTExtraBaseCharacter:PlayLoadBulletSound() end

function ASTExtraBaseCharacter:PlayChangeMagazineSound() end

function ASTExtraBaseCharacter:PlayMagINSound() end

function ASTExtraBaseCharacter:PlayMagOUTSound() end

function ASTExtraBaseCharacter:PlayPullBoltSound() end

---@param SoundType EWeaponSpecialSoundType
---@param ShootWeapon ASTExtraShootWeapon
---@param TppSound UAkAudioEvent
---@param NewFppSound UAkAudioEvent
---@param SoundSimulate UAkAudioEvent
---@return number
function ASTExtraBaseCharacter:PlayShootWeaponSpecialSound(SoundType, ShootWeapon, TppSound, NewFppSound, SoundSimulate) end

function ASTExtraBaseCharacter:PlayAmbientSound() end

---@param TargetSound UAkAudioEvent
function ASTExtraBaseCharacter:PlaySpecialAmbientSound(TargetSound) end

---@param FootprintType EFootprintType
function ASTExtraBaseCharacter:SpawnFootprint(FootprintType) end

---@param RTPC string
---@param Value number
function ASTExtraBaseCharacter:SetAmbientRTPC(RTPC, Value) end

---@return boolean
function ASTExtraBaseCharacter:IsInEditor() end

---@param BankName string
---@param SoundName string
function ASTExtraBaseCharacter:PlayOperateItemSound(BankName, SoundName) end

---@param BankName string
---@param SoundName string
function ASTExtraBaseCharacter:HandlePlayOperateItemSoundOnServer(BankName, SoundName) end

function ASTExtraBaseCharacter:PlayLocalShellDropFX() end

---@param shootType ESTEWeaponShootType
---@param TargetWeapon ASTExtraShootWeapon
function ASTExtraBaseCharacter:SetWeaponShootType(shootType, TargetWeapon) end

function ASTExtraBaseCharacter:ToggleCurWeaponMultiFunctionalShootModeType() end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:OnChangeCurrentUsingWeapon(TargetChangeSlot) end

function ASTExtraBaseCharacter:ClearMoveInput() end

---@param forward number
---@param right number
---@param up number
function ASTExtraBaseCharacter:AddMoveOffSet(forward, right, up) end

---@param LastState EFreshWeaponStateType
---@param State EFreshWeaponStateType
function ASTExtraBaseCharacter:OnCurEquipedShootWeaponChangeState(LastState, State) end

---@param slot ESurviveWeaponPropSlot
---@param bSwitchWeapon boolean
function ASTExtraBaseCharacter:EquipWeapon(slot, bSwitchWeapon) end

function ASTExtraBaseCharacter:AttachWeapon() end

function ASTExtraBaseCharacter:EquipWeaponFinish() end

---@param slot ESurviveWeaponPropSlot
---@param bSwitchWeapon boolean
function ASTExtraBaseCharacter:UnequipWeapon(slot, bSwitchWeapon) end

function ASTExtraBaseCharacter:DettachWeapon() end

function ASTExtraBaseCharacter:UnequipWeaponFinish() end

function ASTExtraBaseCharacter:RefreshAllWeaponVisibility() end

function ASTExtraBaseCharacter:GMShowName() end

---@param _IsShow boolean
---@param _Name string
function ASTExtraBaseCharacter:OnShowName(_IsShow, _Name) end

function ASTExtraBaseCharacter:OnNotifyHurt() end

---@param LastState ESTEPoseState
---@param CurState ESTEPoseState
function ASTExtraBaseCharacter:OnPoseStateChange(LastState, CurState) end

---@param LastState ESTEPoseState
function ASTExtraBaseCharacter:OnRep_PoseStateNotify(LastState) end

function ASTExtraBaseCharacter:CheckSimulatePoseState() end

function ASTExtraBaseCharacter:OnRep_AKEventNotify() end

function ASTExtraBaseCharacter:ResetCamera() end

---@param time number
function ASTExtraBaseCharacter:DelayMove(time) end

function ASTExtraBaseCharacter:ClearMoveAntiCheat() end

---@return boolean
function ASTExtraBaseCharacter:IsCarrierAI() end

---@param ChildComp UUAECharAnimListCompBase
---@param Add boolean
---@param AddLayer EAnimLayerType
---@param AnimOverrideType ECharacterAnimOverrideType
function ASTExtraBaseCharacter:SetAnimListComponentChild(ChildComp, Add, AddLayer, AnimOverrideType) end

---@param AnimLayer EAnimLayerType
function ASTExtraBaseCharacter:ClearAnimListChild(AnimLayer) end

function ASTExtraBaseCharacter:HandleOnCharAnimLoadingFinished() end

---@param OutForceUpdateFlag number
---@return boolean
function ASTExtraBaseCharacter:CheckPlayerNeedUpdateAnimation(OutForceUpdateFlag) end

function ASTExtraBaseCharacter:ForcePlayerUpdateAnimation() end

function ASTExtraBaseCharacter:ForceUpdateSpringArm() end

---@param AnimEventType ECharAnimEventType
---@param AnimListOverride ECharaAnimListType
---@param PoseTypeOverride ECharacterPoseType
---@return FPlayerAnimData
function ASTExtraBaseCharacter:GetPlayerAnimationByEventType(AnimEventType, AnimListOverride, PoseTypeOverride) end

function ASTExtraBaseCharacter:SetPlayerVehAnimationNeedUpdate() end

function ASTExtraBaseCharacter:PostGetPlayerAnimation() end

---@param InAnimList FPlayerAnimList
function ASTExtraBaseCharacter:FillPlayerAnimRate(InAnimList) end

---@param InPoseState ESTEPoseState
---@return ECharacterPoseType
function ASTExtraBaseCharacter:ConvertCharacterPoseStateToPoseType(InPoseState) end

---@return FVector
function ASTExtraBaseCharacter:GetPlayerMovementDir() end

---@return boolean
function ASTExtraBaseCharacter:IsCharacterSprinting() end

---@param out_Rotation FRotator
---@return boolean
function ASTExtraBaseCharacter:OverrideBaseAimRotationBP(out_Rotation) end

function ASTExtraBaseCharacter:OnRep_PersonModeServerValue() end

---@param InPersonTypeName string
---@return number
function ASTExtraBaseCharacter:FindExistPersonModeIndex(InPersonTypeName) end

---@return boolean
function ASTExtraBaseCharacter:GetResultPersonFPP() end

---@param InPersonTypeName string
---@param InIsFPP boolean
---@param InPriorityOffset number
---@param InPriorityType EPersonPriority
function ASTExtraBaseCharacter:AddPersonModeValue(InPersonTypeName, InIsFPP, InPriorityOffset, InPriorityType) end

---@param InPersonTypeName string
---@param InIsFPP boolean
---@param InPriority number
function ASTExtraBaseCharacter:AddPersonModeValueInner(InPersonTypeName, InIsFPP, InPriority) end

---@param InPersonTypeName string
function ASTExtraBaseCharacter:RemovePersonModeValue(InPersonTypeName) end

---@param InForce boolean
function ASTExtraBaseCharacter:UpdatePersonModeValue(InForce) end

---@param InForce boolean
---@param IsUseLerp boolean
function ASTExtraBaseCharacter:UpdatePersonMode(InForce, IsUseLerp) end

---@param IsNewFPP boolean
---@param IsInitSetting boolean
function ASTExtraBaseCharacter:SetCurrentPersonMode(IsNewFPP, IsInitSetting) end

---@param IsNewFPP boolean
---@param IsUseLerp boolean
---@param IsForceSwitch boolean
---@return boolean
function ASTExtraBaseCharacter:LocalSwitchPersonMode(IsNewFPP, IsUseLerp, IsForceSwitch) end

---@param InCameraMode EPlayerCameraMode
function ASTExtraBaseCharacter:LocallySetCurrentCameraMode(InCameraMode) end

---@param InCameraMode EPlayerCameraMode
function ASTExtraBaseCharacter:ServerSetCurrentCameraMode(InCameraMode) end

---@param bCurIsFpp boolean
function ASTExtraBaseCharacter:RPC_Client_PlayerDisuseFixWeapon(bCurIsFpp) end

---@param bCurIsFpp boolean
function ASTExtraBaseCharacter:LocalHandlePlayerDisuseFixWeapon(bCurIsFpp) end

---@param IsNewFPP boolean
---@param IsInitSetting boolean
---@param bMustUpdateSetting boolean
---@param bVehicleForceTPP boolean
---@param bEnableInterpCameraSwitch boolean
---@return boolean
function ASTExtraBaseCharacter:SetCurrentPersonPerspective(IsNewFPP, IsInitSetting, bMustUpdateSetting, bVehicleForceTPP, bEnableInterpCameraSwitch) end

---@param LockReason ELockTPPReason
function ASTExtraBaseCharacter:LockTPP(LockReason) end

---@param LockReason ELockTPPReason
function ASTExtraBaseCharacter:UnLockTPP(LockReason) end

---@return boolean
function ASTExtraBaseCharacter:CheckCanSwitchPP() end

function ASTExtraBaseCharacter:OnRep_IsFPPChanged() end

function ASTExtraBaseCharacter:DoRepOnceFPP() end

function ASTExtraBaseCharacter:OnRep_CurrentCameraMode() end

---@param IsNewFPP boolean
---@param IsUseLerp boolean
---@param IsForceSwitch boolean
---@param CustomCameraTypeName string
---@param bIsEnableCustomCameraType boolean
---@return boolean
function ASTExtraBaseCharacter:LocalSwitchPersonPerspective(IsNewFPP, IsUseLerp, IsForceSwitch, CustomCameraTypeName, bIsEnableCustomCameraType) end

function ASTExtraBaseCharacter:SetViewTargetAgainForOB() end

function ASTExtraBaseCharacter:RefreshPersonPerspective() end

---@param AnimName string
---@param ActorTemplateIndex number
---@param Rotation FQuat
---@param RelativeLocation FVector
function ASTExtraBaseCharacter:ServerAnimationSpawnActor(AnimName, ActorTemplateIndex, Rotation, RelativeLocation) end

function ASTExtraBaseCharacter:OnFollowNearPlayerEmote() end

---@param Enable boolean
function ASTExtraBaseCharacter:EnableFollowPlayEmote(Enable) end

---@return boolean
function ASTExtraBaseCharacter:GlobalFollowPlayEmoteSwitch() end

---@return boolean
function ASTExtraBaseCharacter:BornIslandFollowPlayEmoteSwitch() end

---@return boolean
function ASTExtraBaseCharacter:CanPlayPairEmote() end

---@return ECharacterJumpType
function ASTExtraBaseCharacter:GetPlayerJumpType() end

---@param LastPose ESTEPoseState
---@param NewPose ESTEPoseState
function ASTExtraBaseCharacter:HandlePlayerPoseChanged(LastPose, NewPose) end

---@param WrapperActor AActor
---@param TargetZLoc number
function ASTExtraBaseCharacter:HandlePlayerPickUpActor(WrapperActor, TargetZLoc) end

---@param Target AActor
---@param AdditionalParam number
---@param pickCount number
function ASTExtraBaseCharacter:PickUpActor(Target, AdditionalParam, pickCount) end

---@param Target AActor
---@param AdditionalParam number
---@param pickCount number
---@return boolean
function ASTExtraBaseCharacter:ClientPrePickUpActorCheck(Target, AdditionalParam, pickCount) end

---@param Target AActor
---@param AdditionalParam number
---@param PickCount number
---@return boolean
function ASTExtraBaseCharacter:ClientPrePickUpActorCheckVehicle(Target, AdditionalParam, PickCount) end

---@param Target AActor
---@param ItemData FPickUpItemData
---@param pickCount number
function ASTExtraBaseCharacter:PickUpWrapperActor(Target, ItemData, pickCount) end

---@param Target AActor
---@param ItemData FPickUpItemData
---@param PickupAdditionalInfo FCustomPickupAdditionalInfo
---@param pickCount number
function ASTExtraBaseCharacter:PCSpecialPickUpWrapperActor(Target, ItemData, PickupAdditionalInfo, pickCount) end

---@param Target AActor
---@param ItemData FPickUpItemData
---@param PickupAdditionalInfo FEscapePickupAdditionalInfo
---@param pickCount number
function ASTExtraBaseCharacter:EscapePickUpWrapperActor(Target, ItemData, PickupAdditionalInfo, pickCount) end

---@return boolean
function ASTExtraBaseCharacter:IsAlive() end

---@return boolean
function ASTExtraBaseCharacter:IsHealthAlive() end

---@param causer AController
---@param HSChangeMargin number
---@param DamageEvent FDamageEvent
---@param IsHeadshot boolean
---@param DamageCauser AActor
function ASTExtraBaseCharacter:AddOneDamageCauserRecord(causer, HSChangeMargin, DamageEvent, IsHeadshot, DamageCauser) end

---@param causer AController
---@param HSChangeMargin number
---@param DamageEvent FDamageEvent
---@param IsHeadshot boolean
---@param DamageCauser AActor
---@param deadToFinished boolean
function ASTExtraBaseCharacter:TryToBroadcastFatalDamageEvent(causer, HSChangeMargin, DamageEvent, IsHeadshot, DamageCauser, deadToFinished) end

---@return boolean
function ASTExtraBaseCharacter:IsNearDeath() end

---@param ThrowMode EThrowGrenadeMode
function ASTExtraBaseCharacter:SetThrowGrenadeMode(ThrowMode) end

---@param ThrowMode EThrowGrenadeMode
function ASTExtraBaseCharacter:ServerChangeThrowGrenadeMode(ThrowMode) end

---@param PrevMode EThrowGrenadeMode
function ASTExtraBaseCharacter:OnRep_ThrowGrenadeMode(PrevMode) end

---@param OverrideFindPutDownPointZThreshold number
---@param ShouldPutDownOffset boolean
---@return FVector
function ASTExtraBaseCharacter:GetRandomPutDownLocation(OverrideFindPutDownPointZThreshold, ShouldPutDownOffset) end

---@param Slot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:SetLastUseWeaponSlotOnServer(Slot) end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param bForceFinishPreviousSwitch boolean
---@param ignoreState boolean
---@param bAllowSwitch boolean
---@param SwitchWeaponFlag number
function ASTExtraBaseCharacter:SwitchWeaponBySlot(Slot, bUseAnimation, bForceFinishPreviousSwitch, ignoreState, bAllowSwitch, SwitchWeaponFlag) end

function ASTExtraBaseCharacter:DestroyGrenadeAndSwitchBackToPreviousWeaponOnServer() end

function ASTExtraBaseCharacter:SwitchBackToPreviousDiffSlotWeaponOnServer() end

---@param SpesificID number
---@param Count number
---@param Location FVector
---@param SourceType number
---@param AdditionalParam number
function ASTExtraBaseCharacter:CalculatePickUpItemFlow(SpesificID, Count, Location, SourceType, AdditionalParam) end

---@param InEventID FTLog_ActivityEventType
---@param InCount number
function ASTExtraBaseCharacter:CalculateActivityEventFlow(InEventID, InCount) end

---@param EventID number
---@param InCount number
---@param ExtraParam number
---@param Loc FVector
---@param Str string
function ASTExtraBaseCharacter:CalculateActivityEventFlowExt(EventID, InCount, ExtraParam, Loc, Str) end

---@param InEventID FTLog_ActivityEventType
---@param InCount number
function ASTExtraBaseCharacter:CalculateActivityEventDistinctFlow(InEventID, InCount) end

---@param Tag string
function ASTExtraBaseCharacter:GetSkillIndicesByTag(Tag) end

---@param EntryEvent EUTSkillEntry
---@return boolean
function ASTExtraBaseCharacter:TriggerEntryEvent_Implementation(EntryEvent) end

function ASTExtraBaseCharacter:PreSkillCacheWeaponSolt() end

---@param stateID number
---@param interruptedBy number
function ASTExtraBaseCharacter:OnStateInterrupted(stateID, interruptedBy) end

---@param EnteredState EPawnState
function ASTExtraBaseCharacter:OnStateEnter(EnteredState) end

---@param LeavedState EPawnState
function ASTExtraBaseCharacter:OnStateLeave(LeavedState) end

---@param NewDisabledState EPawnState
function ASTExtraBaseCharacter:OnStateDisabled(NewDisabledState) end

function ASTExtraBaseCharacter:OnWeaponEquipmentUpdate() end

---@param bEnable boolean
function ASTExtraBaseCharacter:EnableCurrentWeaponInfiniteBullets(bEnable) end

function ASTExtraBaseCharacter:HandleConsumeItemSkillBreak() end

function ASTExtraBaseCharacter:HandleAutoSwitchWeaponDelay() end

function ASTExtraBaseCharacter:HandleCheckGrenadeShowStateDelay() end

---@return boolean
function ASTExtraBaseCharacter:IsHandleInFold() end

---@return boolean
function ASTExtraBaseCharacter:IsVehicleHandleInFold() end

---@param Input FVector
function ASTExtraBaseCharacter:ServerSetMovementState(Input) end

---@param Input FVector
function ASTExtraBaseCharacter:ServerSetJoystickState(Input) end

---@param Input FVector_NetQuantizeNormal8
function ASTExtraBaseCharacter:ServerSetMovementStateNormal8(Input) end

---@param Input FVector_NetQuantizeNormal8
function ASTExtraBaseCharacter:ServerSetJoystickStateNormal8(Input) end

function ASTExtraBaseCharacter:OnRep_JoystickInputStateNormal8() end

function ASTExtraBaseCharacter:OnRep_MoveInputStateNormal8() end

---@param bForceOpenWithReplay boolean
function ASTExtraBaseCharacter:DynamicSetupMoveInputStateExRep(bForceOpenWithReplay) end

---@param val boolean
---@param IFollowWho ASTExtraBaseCharacter
function ASTExtraBaseCharacter:SetIsAutoFollow(val, IFollowWho) end

---@param isvaultting boolean
---@param IsValidVault boolean
---@param vaultCharacter ASTExtraBaseCharacter
---@param startPos FVector
function ASTExtraBaseCharacter:VaultStartPosNotifyBPToCpp(isvaultting, IsValidVault, vaultCharacter, startPos) end

---@param CheckActor AActor
function ASTExtraBaseCharacter:NotifyVaultEnd(CheckActor) end

---@return boolean
function ASTExtraBaseCharacter:IsLocalViewed() end

---@param BornPos FVector
---@param EndPos FVector
---@param MeshComp UPrimitiveComponent
---@param BulletActor AActor
function ASTExtraBaseCharacter:BulletLineTrace(BornPos, EndPos, MeshComp, BulletActor) end

---@param BornPos FVector
---@param EndPos FVector
---@param InstigatorCharacter ASTExtraBaseCharacter
function ASTExtraBaseCharacter:ClientBulletLineTrace(BornPos, EndPos, InstigatorCharacter) end

---@param newTags ULuaArrayHelper<string>
---@param oldTags ULuaArrayHelper<string>
function ASTExtraBaseCharacter:SyncServerTagsChange(newTags, oldTags) end

---@param newTags ULuaArrayHelper<string>
---@param oldTags ULuaArrayHelper<string>
function ASTExtraBaseCharacter:ClientSyncServerTagsChange(newTags, oldTags) end

---@return boolean
function ASTExtraBaseCharacter:IsNowUpWater() end

---@return boolean
function ASTExtraBaseCharacter:IsSwimOnWaterSuface() end

---@return boolean
function ASTExtraBaseCharacter:IsEnterWaterSuface() end

function ASTExtraBaseCharacter:EnableGameModeOverrideAttrs() end

function ASTExtraBaseCharacter:Shoveling() end

function ASTExtraBaseCharacter:StopShoveling() end

---@param SpesificLogicGrenadeSlot string
---@param GrenadeID number
---@param UseSwitchAnim boolean
function ASTExtraBaseCharacter:RPC_Server_SpawnAndSwitchToGrenade(SpesificLogicGrenadeSlot, GrenadeID, UseSwitchAnim) end

---@param SpesificLogicGrenadeSlot string
---@param GrenadeID number
---@param UseSwitchAnim boolean
function ASTExtraBaseCharacter:RPC_Client_SpawnAndSwitchToGrenade(SpesificLogicGrenadeSlot, GrenadeID, UseSwitchAnim) end

---@param SpesificLogicGrenadeSlot string
---@param GrenadeID number
function ASTExtraBaseCharacter:PostSpawnAndSwitchToGrenadOnClientBP(SpesificLogicGrenadeSlot, GrenadeID) end

function ASTExtraBaseCharacter:RPC_Server_DestroyGrenadeAndSwitchBackToPreviousWeapon() end

function ASTExtraBaseCharacter:RPC_Client_DestroyGrenadeAndSwitchBackToPreviousWeapon() end

function ASTExtraBaseCharacter:RPC_Server_SwitchBackToPreviousDiffSlotWeapon() end

---@param bEnable boolean
function ASTExtraBaseCharacter:RPC_Server_EnableCurrentWeaponInfiniteBullets(bEnable) end

---@param bEnable boolean
function ASTExtraBaseCharacter:RPC_Client_EnableCurrentWeaponInfiniteBullets(bEnable) end

---@param DamageEventFlags EDamageEventFlags
---@param ContainsFlags EDamageEventFlags
---@return boolean
function ASTExtraBaseCharacter:BPDamageEnumHasAnyFlags(DamageEventFlags, ContainsFlags) end

function ASTExtraBaseCharacter:StopCharacterAfterDead() end

---@param Damage number
---@param DamageFlags EDamageEventFlags
---@param EventInstigator AController
---@param DamageCauser AActor
---@param DamageEvent FDamageEvent
function ASTExtraBaseCharacter:AddShowHitDamage(Damage, DamageFlags, EventInstigator, DamageCauser, DamageEvent) end

function ASTExtraBaseCharacter:DisablePawnCollision() end

---@param KillingHitImpulseDir FVector
---@param DamageEvent FDamageEvent
---@param KillingHitInfo FHitResult
function ASTExtraBaseCharacter:PlayCharacterDeadAnim(KillingHitImpulseDir, DamageEvent, KillingHitInfo) end

---@return number
function ASTExtraBaseCharacter:GetDeadBodyDisappearTime() end

---@param DelayTime number
function ASTExtraBaseCharacter:HideDeadBody(DelayTime) end

function ASTExtraBaseCharacter:ResetPawnCollision() end

---@param CanEnable boolean
function ASTExtraBaseCharacter:SetCanEnableRagdollOnce(CanEnable) end

function ASTExtraBaseCharacter:OnBPHealthChange() end

function ASTExtraBaseCharacter:OnBPMoneyChange() end

---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param DamageEvent FDamageEvent
---@param bIsPointDamage boolean
function ASTExtraBaseCharacter:BroadcastOtherClientsDie(Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, DamageEvent, bIsPointDamage) end

---@param NewController AController
function ASTExtraBaseCharacter:ClientOnPossessBy(NewController) end

---@param itemDefineID number
---@return string
function ASTExtraBaseCharacter:GetShootWeaponNameByWeapon(itemDefineID) end

---@param DamagerID number
---@param bAI boolean
---@param fHealth number
---@param OtherHealthStatus number
---@param ShootDistance number
---@param damageType number
---@param CauserName string
---@param ItemID number
function ASTExtraBaseCharacter:RPC_Client_OnDamageNotifyRecord(DamagerID, bAI, fHealth, OtherHealthStatus, ShootDistance, damageType, CauserName, ItemID) end

---@param VictimName string
---@param VictimUID string
---@param SpectatorName string
---@param AttackerUID string
---@param bSpectatorIsAI boolean
---@param bAttackerIsMLAI boolean
---@param bForce boolean
function ASTExtraBaseCharacter:RPC_Client_OnDeathStopRecordingNotify(VictimName, VictimUID, SpectatorName, AttackerUID, bSpectatorIsAI, bAttackerIsMLAI, bForce) end

---@param VictimName string
---@param VictimUID string
---@param SpectatorName string
---@param AttackerUID string
---@param bSpectatorIsAI boolean
---@param bAttackerIsMLAI boolean
function ASTExtraBaseCharacter:RPC_Client_OnNearDeathRecordingNotify(VictimName, VictimUID, SpectatorName, AttackerUID, bSpectatorIsAI, bAttackerIsMLAI) end

---@param WalkSpeed number
function ASTExtraBaseCharacter:SetHighWalkSpeed(WalkSpeed) end

---@param Hit FHitResult
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
function ASTExtraBaseCharacter:GetDamageCameraShakeConfig(Hit, DamageEvent, EventInstigator, DamageCauser) end

---@param OutMaxSpeed number
---@return boolean
function ASTExtraBaseCharacter:BlueprintUpdateMoveSpeed(OutMaxSpeed) end

---@return boolean
function ASTExtraBaseCharacter:CheckOnMoveablePlatform() end

---@param HitPosition EAvatarDamagePosition
---@param DamageCauser AActor
function ASTExtraBaseCharacter:RPC_Multicast_DestoryBrokenInventory(HitPosition, DamageCauser) end

function ASTExtraBaseCharacter:DelayMoveEnd() end

---@param DeltaTime number
---@param OldLocation FVector
---@param OldVelocity FVector
function ASTExtraBaseCharacter:CharacterMovementUpdatedCallback(DeltaTime, OldLocation, OldVelocity) end

---@param Ratio number
function ASTExtraBaseCharacter:RPC_Server_SetHandFoldRatio(Ratio) end

function ASTExtraBaseCharacter:RefreshMoveAttrModifier() end

---@param Ratio number
function ASTExtraBaseCharacter:RefreshHandFoldRatio(Ratio) end

---@param PoseType ECharacterPoseType
function ASTExtraBaseCharacter:DisableAllMoveAttrModifier(PoseType) end

function ASTExtraBaseCharacter:EnableAllMoveAttrModifier() end

---@param ModifierName string
---@param IsEnable boolean
function ASTExtraBaseCharacter:SetCharacterAttrModifierEnable(ModifierName, IsEnable) end

---@param InPoseState ESTEPoseState
---@param Enable boolean
function ASTExtraBaseCharacter:SetPoseStateAttrModifierEnable(InPoseState, Enable) end

---@param Value number
---@param Dir number
---@param OutValue string
---@param PoseType ECharacterPoseType
---@return boolean
function ASTExtraBaseCharacter:GetMovementAttrModifier(Value, Dir, OutValue, PoseType) end

---@return boolean
function ASTExtraBaseCharacter:BlueprintRefreshMoveAttrModifier() end

---@param PoseType ECharacterPoseType
---@return boolean
function ASTExtraBaseCharacter:BlueprintDisableAllMoveAttrModifier(PoseType) end

---@return boolean
function ASTExtraBaseCharacter:BlueprintEnableAllMoveAttrModifier() end

---@param ModifierName string
---@param bNewEnable boolean
---@return boolean
function ASTExtraBaseCharacter:BlueprintSetCharacterAttrModifierEnable(ModifierName, bNewEnable) end

---@param InPoseState ESTEPoseState
---@param bNewEnable boolean
---@return boolean
function ASTExtraBaseCharacter:BlueprintSetPoseStateAttrModifierEnable(InPoseState, bNewEnable) end

---@param Value number
---@param Dir number
---@param OutValue string
---@param PoseType ECharacterPoseType
---@param bIsValid boolean
---@return boolean
function ASTExtraBaseCharacter:BlueprintGetMovementAttrModifier(Value, Dir, OutValue, PoseType, bIsValid) end

---@param bIsEnabled boolean
function ASTExtraBaseCharacter:SetEightWayUniformSpeedEnabled(bIsEnabled) end

---@param Ratio number
---@param bSkipCheckTryLeanInOut boolean
function ASTExtraBaseCharacter:SetHandFoldRatio(Ratio, bSkipCheckTryLeanInOut) end

---@param val boolean
---@param bHandleNearDeathAnim boolean
function ASTExtraBaseCharacter:SetAnimParamIsNearDeathStatus(val, bHandleNearDeathAnim) end

---@param bIsEnter boolean
function ASTExtraBaseCharacter:HandleNearDeathStatusAnim(bIsEnter) end

---@param bIsRescuing boolean
---@param bIsRescuingSelf boolean
---@param bNeedCrouchWhenRescuing boolean
function ASTExtraBaseCharacter:SetAnimParamIsRescueing(bIsRescuing, bIsRescuingSelf, bNeedCrouchWhenRescuing) end

---@param bEnter boolean
---@param bCarried boolean
function ASTExtraBaseCharacter:SetAnimParamCarringState(bEnter, bCarried) end

---@param bIsCalling boolean
function ASTExtraBaseCharacter:SetAnimParamCallingForRevival(bIsCalling) end

---@param val boolean
function ASTExtraBaseCharacter:SetDelayNotifyDeadEnd(val) end

function ASTExtraBaseCharacter:OnRep_HandFolderRatio() end

---@param NewModifier number
function ASTExtraBaseCharacter:SetCheatSpeedModifier(NewModifier) end

---@return boolean
function ASTExtraBaseCharacter:IsInNoWaterVolume() end

---@return boolean
function ASTExtraBaseCharacter:IsUsingGrenade() end

---@return boolean
function ASTExtraBaseCharacter:IsReplayViewTarget() end

---@return boolean
function ASTExtraBaseCharacter:IsTeammateWithReplayTarget() end

---@param itemDefineID number
---@return string
function ASTExtraBaseCharacter:GetEmote(itemDefineID) end

function ASTExtraBaseCharacter:ClearSprintToProneDelayTimer() end

---@param EventInstigater AController
---@param DamageEvent FDamageEvent
function ASTExtraBaseCharacter:PutDownAllPropAndGenerateInventoryBox(EventInstigater, DamageEvent) end

---@return FVector
function ASTExtraBaseCharacter:GetMoveInputLocalDir() end

function ASTExtraBaseCharacter:ShowDebugRecordData() end

function ASTExtraBaseCharacter:ShowDebugRole() end

function ASTExtraBaseCharacter:ShowDebugPickUpFlow() end

function ASTExtraBaseCharacter:ShowDebugEquipOrUnequipFlow() end

---@param bInHasCallGameModeKill boolean
function ASTExtraBaseCharacter:SetHasCallGameModeKill(bInHasCallGameModeKill) end

function ASTExtraBaseCharacter:DisappearOnDeath() end

---@param RecoverVal number
function ASTExtraBaseCharacter:CalculateHeathRecoverVal(RecoverVal) end

---@return boolean
function ASTExtraBaseCharacter:IsSameCampWithLocal() end

---@param WrapperItem FPickUpWrapperItem
---@param Count number
---@param BoxType EPickUpBoxType
---@param OwnerUniqeID number
function ASTExtraBaseCharacter:HanlePlayerFinishPickUpTombBox(WrapperItem, Count, BoxType, OwnerUniqeID) end

---@param KillerPlayer ASTExtraBaseCharacter
---@param VictimPlayer ASTExtraBaseCharacter
---@param RealKillerPlayerState ASTExtraPlayerState
---@param DamageCauser AActor
---@param AdditionalData FKillDataAdditional
function ASTExtraBaseCharacter:CalculateKillDataAdditional(KillerPlayer, VictimPlayer, RealKillerPlayerState, DamageCauser, AdditionalData) end

---@param InCauserWeaponAvatarHandle UBattleItemHandleBase
---@return boolean
function ASTExtraBaseCharacter:IsWeaponSkinKillNeedReportBattleResult(InCauserWeaponAvatarHandle) end

function ASTExtraBaseCharacter:PlaySelfThrowAwayWeaponSound() end

function ASTExtraBaseCharacter:PlaySwitchFireModeSound() end

---@param IsEnter boolean
function ASTExtraBaseCharacter:PlaySwitchSightSound(IsEnter) end

function ASTExtraBaseCharacter:PlayMountAccessoriesSound() end

---@param InEnergy number
function ASTExtraBaseCharacter:SetCharacterEnergy(InEnergy) end

---@param bAddBuff boolean
---@param PhaseIndex number
---@param BuffName string
function ASTExtraBaseCharacter:AddOrRemoveBuffToEnergyPhaseEffact(bAddBuff, PhaseIndex, BuffName) end

function ASTExtraBaseCharacter:FreshEnergyPhaseEffact() end

---@param InEnergyMax number
---@param InIsUpdatePhase boolean
function ASTExtraBaseCharacter:SetCharacterMaxEnergy(InEnergyMax, InIsUpdatePhase) end

function ASTExtraBaseCharacter:ResetCharacterEnergy() end

function ASTExtraBaseCharacter:OnRep_EnergyChange() end

---@param PrevValue number
function ASTExtraBaseCharacter:OnAttr_Energy(PrevValue) end

function ASTExtraBaseCharacter:OnRep_EnergyAntiAgingTime() end

---@return boolean
function ASTExtraBaseCharacter:CanChangeThrowMode() end

---@param NewState EPawnState
---@return boolean
function ASTExtraBaseCharacter:CanEnterState(NewState) end

---@param DataToAdd FHealthPredictShowData
function ASTExtraBaseCharacter:AddHealthPredictShowData(DataToAdd) end

---@param KeyString string
---@return boolean
function ASTExtraBaseCharacter:RemoveHealthPredictShowData(KeyString) end

---@param KeyString string
---@param ValueToAdd number
function ASTExtraBaseCharacter:AddHealthPredictShowDataValue(KeyString, ValueToAdd) end

---@param DataToAdd FHealthPredictShowData
function ASTExtraBaseCharacter:AddSignalHPPredictShowData(DataToAdd) end

---@param KeyString string
---@return boolean
function ASTExtraBaseCharacter:RemoveSignalHPPredictShowData(KeyString) end

---@param IsLeft boolean
---@param ButtonDown boolean
---@param IsManual boolean
---@param IgnoreAlreadyPeekCheck boolean
function ASTExtraBaseCharacter:TryPeek(IsLeft, ButtonDown, IsManual, IgnoreAlreadyPeekCheck) end

---@param IsLeft boolean
---@param ButtonDown boolean
---@param SprintStopPeek boolean
---@param IgnoreAlreadyPeekCheck boolean
function ASTExtraBaseCharacter:ServerSetPeekState(IsLeft, ButtonDown, SprintStopPeek, IgnoreAlreadyPeekCheck) end

---@param Enable boolean
---@param IsLeft boolean
function ASTExtraBaseCharacter:NM_SetPeekState(Enable, IsLeft) end

function ASTExtraBaseCharacter:Rec_TryPeekCount() end

function ASTExtraBaseCharacter:Rec_PeekSuccessCount() end

---@param PeekFrame number
---@param IsLeft boolean
---@param ButtonDown boolean
---@param SprintStopPeek boolean
---@param IgnoreAlreadyPeekCheck boolean
---@param ForceStopPeek boolean
function ASTExtraBaseCharacter:RPC_Server_TryPeek(PeekFrame, IsLeft, ButtonDown, SprintStopPeek, IgnoreAlreadyPeekCheck, ForceStopPeek) end

---@param Enable boolean
---@param IsLeft boolean
function ASTExtraBaseCharacter:RPC_Multicast_SetPeekState(Enable, IsLeft) end

---@param PeekFrame number
---@param Enable boolean
---@param IsLeft boolean
---@param bForceSync boolean
function ASTExtraBaseCharacter:RPC_Client_VerifyPeekState(PeekFrame, Enable, IsLeft, bForceSync) end

---@param Enable boolean
---@param IsLeft boolean
function ASTExtraBaseCharacter:LocalPeek(Enable, IsLeft) end

function ASTExtraBaseCharacter:StopPeek() end

---@param HasCollision boolean
function ASTExtraBaseCharacter:ServerSetPeekCollision(HasCollision) end

function ASTExtraBaseCharacter:OnRep_PeekHasCollision() end

function ASTExtraBaseCharacter:AutoScopeWhenPeek() end

---@return boolean
function ASTExtraBaseCharacter:ShouldAutoScopeWhenPeek() end

function ASTExtraBaseCharacter:BP_RegisterModifiedAttributes() end

function ASTExtraBaseCharacter:UpdateOverlapsMannually() end

---@param AffectedAttrS ULuaArrayHelper<FAttrAffected>
function ASTExtraBaseCharacter:OnAttrValueModified(AffectedAttrS) end

---@param AttrName string
---@return boolean
function ASTExtraBaseCharacter:GetUnregisteredAttr(AttrName) end

function ASTExtraBaseCharacter:UpdateAttrRegisteredData() end

---@param DamageType EDamageType
---@param InPosition EAvatarDamagePosition
---@param InScale number
function ASTExtraBaseCharacter:SetBodyPartDamageScale(DamageType, InPosition, InScale) end

---@param DamageType EDamageType
---@param InPosition EAvatarDamagePosition
---@return number
function ASTExtraBaseCharacter:GetBodyPartDamageScale(DamageType, InPosition) end

---@param DamageType EDamageType
---@param InPosition EAvatarDamagePosition
function ASTExtraBaseCharacter:RemoveBodyPartDamageScale(DamageType, InPosition) end

---@param AddCfg FExtraDamageReduceCfg
function ASTExtraBaseCharacter:AddDynamicExtraDamageReduceCfg(AddCfg) end

---@param AttachmentID string
function ASTExtraBaseCharacter:RemoveDynamicExtraDamageReduceCfg(AttachmentID) end

---@param AddCfg FArmorPartCoverCfg
function ASTExtraBaseCharacter:AddDynamicArmorPartCoverCfg(AddCfg) end

---@param RemoveCfg FArmorPartCoverCfg
function ASTExtraBaseCharacter:RemoveDynamicArmorPartCoverCfg(RemoveCfg) end

---@param InEnergySpeedScale number
function ASTExtraBaseCharacter:SetEnergySpeedScale(InEnergySpeedScale) end

---@return boolean
function ASTExtraBaseCharacter:CheckImmuneRadiation() end

function ASTExtraBaseCharacter:OnRep_ReplicatedAndOverridedSwimSpeed() end

---@param prevStatus ECharacterHealthStatus
function ASTExtraBaseCharacter:OnRep_HealthStatusChanged(prevStatus) end

function ASTExtraBaseCharacter:OnRep_LastHitDownDataChanged() end

function ASTExtraBaseCharacter:OnRep_HealthPredict() end

---@param PrevVal number
function ASTExtraBaseCharacter:OnRep_SignalHP(PrevVal) end

---@param LastValue number
function ASTExtraBaseCharacter:OnRep_Temperature(LastValue) end

function ASTExtraBaseCharacter:OnRep_CurSignalHPIsFullOrRecovering() end

---@return number
function ASTExtraBaseCharacter:GetStandHalfHeight() end

---@return number
function ASTExtraBaseCharacter:GetStandRadius() end

---@return number
function ASTExtraBaseCharacter:GetCrouchHalfHeight() end

---@return number
function ASTExtraBaseCharacter:GetProneHalfHeight() end

---@return number
function ASTExtraBaseCharacter:GetDyingRadius() end

---@param InputHalfHeight number
function ASTExtraBaseCharacter:SetStandHalfHeight(InputHalfHeight) end

---@param InputHalfHeight number
function ASTExtraBaseCharacter:SetCrouchHalfHeight(InputHalfHeight) end

function ASTExtraBaseCharacter:OnRep_CollisionRadiusOverride() end

---@return number
function ASTExtraBaseCharacter:GetAreaIDInSecury() end

function ASTExtraBaseCharacter:OnRep_VehicleSeatIdx() end

function ASTExtraBaseCharacter:OnRep_HideOnVehicle() end

function ASTExtraBaseCharacter:OnRep_CurActivePassengerAttachedCameraOffsetOnVehicle() end

function ASTExtraBaseCharacter:OnRep_CurActivePassengerAttachedCameraOffsetOnVehicleBP() end

---@param InName ECameraDataType
function ASTExtraBaseCharacter:ServerEnableAttachedPassengerCameraOffsetOnVehicle(InName) end

function ASTExtraBaseCharacter:ServerClearAttachedPassengerCameraOffsetOnVehicle() end

---@param Enable boolean
---@param InCameraDataType ECameraDataType
function ASTExtraBaseCharacter:ClientEnablePassengerCameraOffsetOnVehicle(Enable, InCameraDataType) end

function ASTExtraBaseCharacter:OnRep_VehicleLaunchControlEffectData() end

function ASTExtraBaseCharacter:OnRep_VehicleLaunchControlEffectDataBP() end

---@param Data FVehicleLaunchControlEffectData
function ASTExtraBaseCharacter:SetVehicleLaunchControlEffectData(Data) end

function ASTExtraBaseCharacter:OnVehicleLaunchControlEffectFadeOutFinish() end

---@return number
function ASTExtraBaseCharacter:GetAvatarAppearanceGender() end

---@param InLockDisuseReason EBattleItemDisuseReason
---@return boolean
function ASTExtraBaseCharacter:LockAvatarAssemblingDisuseReason(InLockDisuseReason) end

---@param InLockDisuseReason EBattleItemDisuseReason
function ASTExtraBaseCharacter:UnLockAvatarAssemblingDisuseReason(InLockDisuseReason) end

---@return boolean
function ASTExtraBaseCharacter:LockToAvatarAssemblingState() end

---@param InIsCheckDefaultFallback boolean
function ASTExtraBaseCharacter:UnlockAvatarAssemblingState(InIsCheckDefaultFallback) end

---@return boolean
function ASTExtraBaseCharacter:LockToAvatarDisassemblingState() end

function ASTExtraBaseCharacter:UnlockAvatarDisassemblingState() end

---@param InAvatarIDList ULuaArrayHelper<number>
function ASTExtraBaseCharacter:SetAvatarAssembleInfo(InAvatarIDList) end

function ASTExtraBaseCharacter:ResetAvatarAssembleInfo() end

---@param InTestSuitItemID number
---@return number
function ASTExtraBaseCharacter:FetchSuitFallbackItemID(InTestSuitItemID) end

---@return boolean
function ASTExtraBaseCharacter:UpdateShovelingState() end

---@param TimeStamp number
function ASTExtraBaseCharacter:ClientAckGoodMove(TimeStamp) end

---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param CompressedMoveFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param ExtraParams FServerMoveExtraParams
function ASTExtraBaseCharacter:ServerMoveEx(TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, ExtraParams) end

---@param TimeStamp0 number
---@param InAccel0 FVector_NetQuantize10
---@param PendingFlags number
---@param View0 number
---@param TimeStamp number
---@param InAccel FVector_NetQuantize10
---@param ClientLoc FVector_NetQuantize100
---@param NewFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param ExtraParams FServerMoveDualExtraParams
function ASTExtraBaseCharacter:ServerMoveDualEx(TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, ExtraParams) end

---@param OldTimeStamp number
---@param OldAccel FVector_NetQuantize10
---@param OldClientLoc FVector_NetQuantize100
---@param OldMoveFlags number
---@param OldClientRoll number
---@param OldView number
---@param OldClientMovementBase UPrimitiveComponent
---@param OldClientBaseBoneName string
---@param OldClientMovementMode number
---@param OldExtraParams FServerMoveExtraParams
function ASTExtraBaseCharacter:ServerMoveOldEx(OldTimeStamp, OldAccel, OldClientLoc, OldMoveFlags, OldClientRoll, OldView, OldClientMovementBase, OldClientBaseBoneName, OldClientMovementMode, OldExtraParams) end

---@param TimeStamp number
---@param InAccel FRotator_NetQuantize2
---@param ClientLoc FVector_NetQuantize100
---@param CompressedMoveFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param ExtraParams FServerMoveExtraParams
function ASTExtraBaseCharacter:ServerMoveExRotator(TimeStamp, InAccel, ClientLoc, CompressedMoveFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, ExtraParams) end

---@param TimeStamp0 number
---@param InAccel0 FRotator_NetQuantize2
---@param PendingFlags number
---@param View0 number
---@param TimeStamp number
---@param InAccel FRotator_NetQuantize2
---@param ClientLoc FVector_NetQuantize100
---@param NewFlags number
---@param ClientRoll number
---@param View number
---@param ClientMovementBase UPrimitiveComponent
---@param ClientBaseBoneName string
---@param ClientMovementMode number
---@param ExtraParams FServerMoveDualExtraParams
function ASTExtraBaseCharacter:ServerMoveDualExRotator(TimeStamp0, InAccel0, PendingFlags, View0, TimeStamp, InAccel, ClientLoc, NewFlags, ClientRoll, View, ClientMovementBase, ClientBaseBoneName, ClientMovementMode, ExtraParams) end

---@param OldTimeStamp number
---@param OldAccel FRotator_NetQuantize2
---@param OldClientLoc FVector_NetQuantize100
---@param OldMoveFlags number
---@param OldClientRoll number
---@param OldView number
---@param OldClientMovementBase UPrimitiveComponent
---@param OldClientBaseBoneName string
---@param OldClientMovementMode number
---@param OldExtraParams FServerMoveExtraParams
function ASTExtraBaseCharacter:ServerMoveOldExRotator(OldTimeStamp, OldAccel, OldClientLoc, OldMoveFlags, OldClientRoll, OldView, OldClientMovementBase, OldClientBaseBoneName, OldClientMovementMode, OldExtraParams) end

---@param StartPos FVector
---@param ShovelingRotation FRotator
---@param ConsecutivelyShovelingCount number
---@param TimeStamp number
function ASTExtraBaseCharacter:ServerUpdateShovelingState(StartPos, ShovelingRotation, ConsecutivelyShovelingCount, TimeStamp) end

---@param StartPos FVector
---@param ShovelingRotation FRotator
---@param ConsecutivelyShovelingCount number
function ASTExtraBaseCharacter:ClientUpdateShovelingState(StartPos, ShovelingRotation, ConsecutivelyShovelingCount) end

function ASTExtraBaseCharacter:ClientCheckStartShovelingFail() end

function ASTExtraBaseCharacter:ClientStopShoveling() end

function ASTExtraBaseCharacter:UpdateShovelingHoldStatePressed() end

function ASTExtraBaseCharacter:UpdateShovelingHoldStateRelease() end

---@param ishold boolean
function ASTExtraBaseCharacter:ServerUpdateShovelingHoldState(ishold) end

---@param startPos FVector
---@param topPos FVector
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param isjump boolean
---@param movedir FRotator
---@param blobkthick number
function ASTExtraBaseCharacter:FpsPawnVaultToServer(startPos, topPos, crossblockMaxFall, crossblockMaxDis, isjump, movedir, blobkthick) end

---@param startPos FVector
---@param topPos FVector
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param isjump boolean
---@param movedir FRotator
---@param blobkthick number
function ASTExtraBaseCharacter:FpsPawnVaultToAll(startPos, topPos, crossblockMaxFall, crossblockMaxDis, isjump, movedir, blobkthick) end

---@param content string
function ASTExtraBaseCharacter:VaultFailPawnCPP(content) end

---@param content string
function ASTExtraBaseCharacter:VaultFailPawnBluePrint(content) end

---@param dis number
---@param height number
---@param length number
---@param VaultKey string
---@param startPos FVector
---@param checkActor AActor
---@param CheckActorName string
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param hitpoint FVector
---@param WindowActor AActor
---@param movedir FVector
function ASTExtraBaseCharacter:PawnVaultServerCPP(dis, height, length, VaultKey, startPos, checkActor, CheckActorName, crossblockMaxFall, crossblockMaxDis, hitpoint, WindowActor, movedir) end

---@param dis number
---@param height number
---@param length number
---@param VaultKey string
---@param startPos FVector
---@param checkActor AActor
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param hitpoint FVector
---@param WindowActor AActor
---@param movedir FRotator
function ASTExtraBaseCharacter:PawnVaultServerBluePrint(dis, height, length, VaultKey, startPos, checkActor, crossblockMaxFall, crossblockMaxDis, hitpoint, WindowActor, movedir) end

---@param dis number
---@param height number
---@param length number
---@param VaultKey string
---@param startPos FVector
---@param checkActor AActor
---@param CheckActorName string
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param hitpoint FVector
---@param movedir FVector
function ASTExtraBaseCharacter:PawnVaultAllCPP(dis, height, length, VaultKey, startPos, checkActor, CheckActorName, crossblockMaxFall, crossblockMaxDis, hitpoint, movedir) end

---@param dis number
---@param height number
---@param length number
---@param VaultKey string
---@param startPos FVector
---@param checkActor AActor
---@param crossblockMaxFall number
---@param crossblockMaxDis number
---@param hitpoint FVector
---@param movedir FRotator
function ASTExtraBaseCharacter:PawnVaultAllBluePrint(dis, height, length, VaultKey, startPos, checkActor, crossblockMaxFall, crossblockMaxDis, hitpoint, movedir) end

function ASTExtraBaseCharacter:PawnVaultServerStopCheckCPP() end

function ASTExtraBaseCharacter:PawnVaultServerStopCheckBluePrint() end

function ASTExtraBaseCharacter:PawnVaultStopCPP() end

function ASTExtraBaseCharacter:PawnVaultStopBluePrint() end

function ASTExtraBaseCharacter:ServerForceStopVaultCPP() end

function ASTExtraBaseCharacter:ServerForceStopVaultBluePrint() end

---@return boolean
function ASTExtraBaseCharacter:TryEnterPreparingPose() end

---@return boolean
function ASTExtraBaseCharacter:TryStartDoubleVault() end

---@param door APUBGDoor
---@param doorState number
function ASTExtraBaseCharacter:OnOpenDoor(door, doorState) end

---@param retAsset UAnimationAsset
function ASTExtraBaseCharacter:AsyncAnimOpenDoorCallback(retAsset) end

---@param Enable boolean
function ASTExtraBaseCharacter:ChangeVehWeaponCameraData(Enable) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
function ASTExtraBaseCharacter:ServerSendPreAttachToVehicleToAllClinet(InVehicle, SeatType) end

---@param InVehicle ASTExtraVehicleBase
---@param SeatType ESTExtraVehicleSeatType
---@param LeavePos FVector
function ASTExtraBaseCharacter:ServerSendPreDetachFromVehicleToAllClinet(InVehicle, SeatType, LeavePos) end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraBaseCharacter:RefreshCharacterMovementOnVehicle(InVehicle) end

---@param InAnimType ECharacterVehicleAnimType
---@param Vehicle ASTExtraVehicleBase
---@param PlayRate number
function ASTExtraBaseCharacter:HandleUnmannedVehicleControlAnimLoadFinished(InAnimType, Vehicle, PlayRate) end

---@param LastVehicle ASTExtraVehicleBase
function ASTExtraBaseCharacter:OnRep_CurrentVehicle(LastVehicle) end

function ASTExtraBaseCharacter:OnRep_UnmannedVehicleSyncData() end

function ASTExtraBaseCharacter:HandleUnmannedVehicleChanged() end

function ASTExtraBaseCharacter:OnRep_CurRemoteControlPawn() end

function ASTExtraBaseCharacter:HandleRemoteControlChanged() end

function ASTExtraBaseCharacter:ForceNetUpdateAttachmentReplication() end

---在龙舟鼓位
---@return boolean
function ASTExtraBaseCharacter:InDragonBoatDrumSeat() end

---@param enterDrumSeat boolean
function ASTExtraBaseCharacter:ProcessDragonBoatDrumSeat(enterDrumSeat) end

---@param LeaveLocation FVector
---@param Floor UPrimitiveComponent
function ASTExtraBaseCharacter:ClientSetLeaveVehicleLocation(LeaveLocation, Floor) end

function ASTExtraBaseCharacter:LogWeaponsDataInWeaponManagerAndBackpack() end

function ASTExtraBaseCharacter:StopMove() end

function ASTExtraBaseCharacter:StopAutonomousSprint() end

---@param state EPawnState
---@return boolean
function ASTExtraBaseCharacter:EnterState(state) end

---@param state EPawnState
---@return boolean
function ASTExtraBaseCharacter:LeaveState(state) end

---@param state EPawnState
---@param bForce boolean
function ASTExtraBaseCharacter:LeaveServerState(state, bForce) end

---@param state EPawnState
function ASTExtraBaseCharacter:EnterServerState(state) end

---@param state EPawnState
function ASTExtraBaseCharacter:EnterStateFail(state) end

---@param States FGameplayTagContainer
---@return boolean
function ASTExtraBaseCharacter:HasAnyDynamicStates(States) end

function ASTExtraBaseCharacter:OnRep_AngleSightRotOffsetChanged() end

---@param OldState EPawnState
---@param NewState EPawnState
function ASTExtraBaseCharacter:InsertDelayStateRelation(OldState, NewState) end

function ASTExtraBaseCharacter:OnReconnectOnClient() end

function ASTExtraBaseCharacter:MustGoDie() end

---@param prevStates number
function ASTExtraBaseCharacter:OnRep_CurrentStates(prevStates) end

function ASTExtraBaseCharacter:OnRepPlayerKeyBP() end

function ASTExtraBaseCharacter:OnRep_PlayerName() end

function ASTExtraBaseCharacter:OnRep_PlayerKey() end

function ASTExtraBaseCharacter:OnRep_DamageMagnifierIdx() end

function ASTExtraBaseCharacter:OnRep_ReplicatedParachuteState() end

function ASTExtraBaseCharacter:OnRep_ReplicatedMoveState() end

function ASTExtraBaseCharacter:OnRep_ReplicatedMoveState_New() end

function ASTExtraBaseCharacter:OnRep_ReplicatedIsStartParachute() end

---@param NewParaglidingMode boolean
function ASTExtraBaseCharacter:SetParaglidingMode(NewParaglidingMode) end

function ASTExtraBaseCharacter:OnRep_ParaglidingMode() end

---@param bEnable boolean
function ASTExtraBaseCharacter:SetEnableManualParachute(bEnable) end

function ASTExtraBaseCharacter:RecordFinalParachuteLeader() end

---Pass current state to server
---@param InThrottleInput number
---@param InSteeringInput number
---@param State number
---@param ControlRotation FRotator
function ASTExtraBaseCharacter:STServerUpdateState(InThrottleInput, InSteeringInput, State, ControlRotation) end

---@param InThrottleInput FFloat_NetQuantize8
---@param InSteeringInput FFloat_NetQuantize8
---@param State number
---@param ControlRotation FRotator
function ASTExtraBaseCharacter:STServerUpdateState_New(InThrottleInput, InSteeringInput, State, ControlRotation) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function ASTExtraBaseCharacter:SendClientMoveToServerUnreliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function ASTExtraBaseCharacter:SendClientMoveToServerUnreliabyOld(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector_NetQuantize
---@param Rotation FRotator
---@param Velocity FVector_NetQuantize
function ASTExtraBaseCharacter:SendClientMoveToServerUnreliabyNew(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function ASTExtraBaseCharacter:SendClientMoveToServerReliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function ASTExtraBaseCharacter:SendServerMoveToClientUnreliaby(Timestamp, Position, Rotation, Velocity) end

---@param Timestamp number
---@param Position FVector
---@param Rotation FRotator
---@param Velocity FVector
function ASTExtraBaseCharacter:SendServerMoveToClientReliaby(Timestamp, Position, Rotation, Velocity) end

---@param Postion FVector
---@param Rotation FRotator
---@param Velocity FVector
function ASTExtraBaseCharacter:ForceCorrectClient(Postion, Rotation, Velocity) end

---@return number
function ASTExtraBaseCharacter:GetPlayerTeamIndex() end

---@param Teammate ASTExtraBaseCharacter
---@return number
function ASTExtraBaseCharacter:GetTeammateIndex(Teammate) end

---@param LastFollowState EFollowState
function ASTExtraBaseCharacter:OnRep_FollowState(LastFollowState) end

---@param follower ASTExtraBaseCharacter
---@return FVector
function ASTExtraBaseCharacter:GetFollowerLocOffset(follower) end

---@param InPlayerIndex number
---@return FParachuteFollowState
function ASTExtraBaseCharacter:GetParachuteFollowStateByPlayerIndex(InPlayerIndex) end

function ASTExtraBaseCharacter:OnRep_TeammateParachuteFollowState() end

function ASTExtraBaseCharacter:OnRep_ParachuteRideInvitationList() end

---@return string
function ASTExtraBaseCharacter:GetLatestInviter() end

---@return boolean
function ASTExtraBaseCharacter:IsInFlyingTeam() end

---@param isTransfer boolean
function ASTExtraBaseCharacter:SetIsDuringTransferLeader(isTransfer) end

---@param bIsTransfer boolean
function ASTExtraBaseCharacter:SetIsDuringTransferDriver(bIsTransfer) end

---ui接口
---@param Name string
---@param InvitationType EParachuteInvitationType
function ASTExtraBaseCharacter:InviteTeammate(Name, InvitationType) end

---@param SomeOne string
---@param Res EInviteResponceType
---@param InviteType EParachuteInvitationType
---@param NotAllowInvitedLater boolean
function ASTExtraBaseCharacter:ResponceInvite(SomeOne, Res, InviteType, NotAllowInvitedLater) end

---@param Name string
function ASTExtraBaseCharacter:TryFollowInitialParachuteLeader(Name) end

---@param Name string
---@param bCheckCanBeFollowed boolean
function ASTExtraBaseCharacter:FollowTeammate(Name, bCheckCanBeFollowed) end

function ASTExtraBaseCharacter:CancelFollow() end

---@param TargetName string
---@param bIgnoreStateCheck boolean
function ASTExtraBaseCharacter:CancelRideTogether(TargetName, bIgnoreStateCheck) end

---@param Name string
---@param InvitationType EParachuteInvitationType
function ASTExtraBaseCharacter:ServerInviteTeammate(Name, InvitationType) end

---通知客户端有人邀请自己
---@param SomeOne string
---@param InvitationType EParachuteInvitationType
function ASTExtraBaseCharacter:ClientSomeOneInviteMe(SomeOne, InvitationType) end

---@param pOtherChar ASTExtraBaseCharacter
function ASTExtraBaseCharacter:RPC_CollideByTeamMate(pOtherChar) end

---@param Someone string
---@param Res EInviteResponceType
---@param InviteType EParachuteInvitationType
---@param NotAllowInvitedLater boolean
function ASTExtraBaseCharacter:ServerResponseInvite(Someone, Res, InviteType, NotAllowInvitedLater) end

---@param BeInvitedName string
---@param Res EInviteResponceType
---@param InivationType EParachuteInvitationType
function ASTExtraBaseCharacter:ClientSomeOneResponseMe(BeInvitedName, Res, InivationType) end

---@param Res EInviteResponceType
function ASTExtraBaseCharacter:ClientResponseFeedback(Res) end

---@param bDoGroupSuccessfully boolean
function ASTExtraBaseCharacter:ClientShowAutoGroupParachuteTeamTips(bDoGroupSuccessfully) end

---@param Name string
---@param bCheckCanBeFollowed boolean
function ASTExtraBaseCharacter:ServerFollowTeammate(Name, bCheckCanBeFollowed) end

function ASTExtraBaseCharacter:ServerCancelFollow() end

---@param TargetName string
---@param bIgnoreStateCheck boolean
function ASTExtraBaseCharacter:ServerCancelRideTogether(TargetName, bIgnoreStateCheck) end

---@param Name string
function ASTExtraBaseCharacter:ExecFollowTeammate(Name) end

---@return boolean
function ASTExtraBaseCharacter:UseSimulateView() end

---@param TargetZLoc number
function ASTExtraBaseCharacter:RPC_NetMulticast_HandlePlayerPickUpActor(TargetZLoc) end

function ASTExtraBaseCharacter:PrintAIPolicyDecisionData() end

function ASTExtraBaseCharacter:UpdateDynamicHoldGunOption() end

function ASTExtraBaseCharacter:InitPlayerRouteFlow() end

function ASTExtraBaseCharacter:EndPlayerRoute() end

---@return boolean
function ASTExtraBaseCharacter:CanCollectPlayerRouteFlow() end

---@param IsCost boolean
---@param ItemID number
function ASTExtraBaseCharacter:CostEmoteSpecMotion(IsCost, ItemID) end

---@param EventInstigater AController
---@return boolean
function ASTExtraBaseCharacter:IsSkipSpawnDeadTombBox(EventInstigater) end

---@param EmoteId number
function ASTExtraBaseCharacter:OnPlayEmote(EmoteId) end

---@param EmoteID number
function ASTExtraBaseCharacter:ServerPlayDuoActionPerformance(EmoteID) end

function ASTExtraBaseCharacter:ServerInterruptDuoActionPerformance() end

---@param InPlayerKey number
---@param bFromUI boolean
function ASTExtraBaseCharacter:ServerCloseDuoActionPerformancePhotoUI(InPlayerKey, bFromUI) end

---@return boolean
function ASTExtraBaseCharacter:IsPlayingDuoActionPerformance() end

---@return boolean
function ASTExtraBaseCharacter:CanDirectPlayEmoteWhenInterruptDuoActionPerformance() end

---@param PlayEmoteIDList ULuaArrayHelper<number>
---@param Loop boolean
function ASTExtraBaseCharacter:OnPlayEmoteSequence(PlayEmoteIDList, Loop) end

---@return boolean
function ASTExtraBaseCharacter:IsPlayingEmoteSequence() end

---@param InItemDefineID number
---@return boolean
function ASTExtraBaseCharacter:HasItemFromBackPack(InItemDefineID) end

function ASTExtraBaseCharacter:OnInterruptCurrentEmote() end

---@return boolean
function ASTExtraBaseCharacter:GetIsPlayingEmote() end

---@param EmoteId number
function ASTExtraBaseCharacter:PlayEmoteClient(EmoteId) end

---@param DecalId number
---@return boolean
function ASTExtraBaseCharacter:RequestPaintDecal(DecalId) end

---@param DecalId number
---@param DecalData FPlayerDecalData
function ASTExtraBaseCharacter:ServerRequestPaintDecal(DecalId, DecalData) end

---@param DecalID number
---@param FancyDecalDyeNum number
function ASTExtraBaseCharacter:ClientPaintDecalResponse(DecalID, FancyDecalDyeNum) end

---@param ItemId number
---@param count number
---@param bUseDirectly boolean
function ASTExtraBaseCharacter:ServerSendToLobbyServerUseItem(ItemId, count, bUseDirectly) end

---@param ItemId number
---@param count number
---@param receiver ASTExtraBaseCharacter
---@param bUseDirectly boolean
function ASTExtraBaseCharacter:ServerSendToLobbyServerUseGiftItem(ItemId, count, receiver, bUseDirectly) end

---@param DecalId number
---@return boolean
function ASTExtraBaseCharacter:CanPaintDecal(DecalId) end

---@param OutvalidationType EPaintDecalTargetValidationType
---@param OutStart FVector
---@param OutEnd FVector
---@return boolean
function ASTExtraBaseCharacter:IsValidPaintDecalTarget(OutvalidationType, OutStart, OutEnd) end

---@param bStart boolean
function ASTExtraBaseCharacter:DoDetectPaintDecalTarget(bStart) end

---@param bStart boolean
function ASTExtraBaseCharacter:OnDetectPaintDecalTarget(bStart) end

---@return boolean
function ASTExtraBaseCharacter:CheckCanPaintDecalOnServer() end

---@param OutEnd FVector
---@return boolean
function ASTExtraBaseCharacter:IsValidFootEffectTarget(OutEnd) end

---@param bStart boolean
function ASTExtraBaseCharacter:DoFootEffectTarget(bStart) end

---@param bEnterFreeCamera boolean
function ASTExtraBaseCharacter:SetFreeCameraStateSever(bEnterFreeCamera) end

---@return FEquipmentData
function ASTExtraBaseCharacter:CustomSetEquipmentData() end

---@param ItemId number
---@param BattleItemDataList ULuaArrayHelper<FBattleItemData>
---@return number
function ASTExtraBaseCharacter:GetSkinIdByItemId(ItemId, BattleItemDataList) end

---@return boolean
function ASTExtraBaseCharacter:GetIsFPP() end

---@return boolean
function ASTExtraBaseCharacter:GetIsNewFPP() end

---@return boolean
function ASTExtraBaseCharacter:GetEnableNewFPPMode() end

---@return boolean
function ASTExtraBaseCharacter:GetGameEnableNewFPPMode() end

---@return boolean
function ASTExtraBaseCharacter:GetIsOldFPPAnimMode() end

---@return boolean
function ASTExtraBaseCharacter:GetIsUsingNewFPPInVehicle() end

---@return boolean
function ASTExtraBaseCharacter:GetIsDriveVehicleAndUseWeapon() end

function ASTExtraBaseCharacter:OnRep_bNightVisionUse() end

function ASTExtraBaseCharacter:OnRep_bNightVisionUseTest() end

function ASTExtraBaseCharacter:OnRep_NightVisionTypes() end

function ASTExtraBaseCharacter:OnRep_DisableNightVisionTypes() end

---@param InType ENightVisionType
function ASTExtraBaseCharacter:AddNightVision(InType) end

---@param InType ENightVisionType
function ASTExtraBaseCharacter:RemoveNightVision(InType) end

---@param InType ENightVisionType
---@param InAddDisable boolean
---@param InDisableType ENightVisionDisableType
function ASTExtraBaseCharacter:DisableNightVision(InType, InAddDisable, InDisableType) end

---@param InType ENightVisionType
---@param InDisableType ENightVisionDisableType
---@param InAddDisable boolean
function ASTExtraBaseCharacter:DisableNightVisionMulti(InType, InDisableType, InAddDisable) end

---@param InType ENightVisionType
---@return boolean
function ASTExtraBaseCharacter:IsOpenNightVision(InType) end

---@param InType ENightVisionType
---@return boolean
function ASTExtraBaseCharacter:IsExistNightVision(InType) end

---@param InType ENightVisionType
---@return boolean
function ASTExtraBaseCharacter:IsDisableNightVision(InType) end

---@param InIgnoreController boolean
function ASTExtraBaseCharacter:UpdateNightVisionUse(InIgnoreController) end

function ASTExtraBaseCharacter:UpdateNightVisionRenderState() end

---@param bUse boolean
function ASTExtraBaseCharacter:ServerNightVisionUse(bUse) end

function ASTExtraBaseCharacter:HandleOpenPickUpBoxAction() end

---@return boolean
function ASTExtraBaseCharacter:IsAngledSight() end

---@return boolean
function ASTExtraBaseCharacter:IsNormalSight() end

---@return boolean
function ASTExtraBaseCharacter:IsUseWeaponSight() end

---@return boolean
function ASTExtraBaseCharacter:HaveAngledSight() end

---@param killedPlayer ASTExtraBaseCharacter
function ASTExtraBaseCharacter:RPC_Client_ReportPlayerKillFlow(killedPlayer) end

---@return boolean
function ASTExtraBaseCharacter:IsExitingParachute() end

---@param ExitParachute boolean
function ASTExtraBaseCharacter:SetExitingParachute(ExitParachute) end

function ASTExtraBaseCharacter:SetParachuteServerAuthorized() end

---@param WeaponID number
---@param ScopeID number
function ASTExtraBaseCharacter:EquipZoomScope(WeaponID, ScopeID) end

function ASTExtraBaseCharacter:GMTestZengzuo() end

function ASTExtraBaseCharacter:ClearClientJump() end

---@return number
function ASTExtraBaseCharacter:GetCharacterXYPlaneVelocity() end

function ASTExtraBaseCharacter:OnRep_CharacterFallingVelocityZFactor() end

---@param IsAdd boolean
---@param InParam number
function ASTExtraBaseCharacter:RefreshHeadWidget(IsAdd, InParam) end

---@return boolean
function ASTExtraBaseCharacter:ShouldShowHeadWidget() end

---@return boolean
function ASTExtraBaseCharacter:ShouldShowAnchor() end

---@return boolean
function ASTExtraBaseCharacter:ShouldShowPassCardBuyType() end

---@return boolean
function ASTExtraBaseCharacter:ShouldShowMedal() end

---@return boolean
function ASTExtraBaseCharacter:ShouldShowCorp() end

---@return boolean
function ASTExtraBaseCharacter:ShouldShowEnjoyCard() end

---@return boolean
function ASTExtraBaseCharacter:ShouldShowLiked() end

---@return boolean
function ASTExtraBaseCharacter:ShouldShowCommonData() end

---@param InPC ASTExtraPlayerController
---@return boolean
function ASTExtraBaseCharacter:IsTeammateWith(InPC) end

---@return string
function ASTExtraBaseCharacter:GetCorpName() end

---@param SlotType number
---@param isEquipped boolean
function ASTExtraBaseCharacter:RefreshAvatar(SlotType, isEquipped) end

function ASTExtraBaseCharacter:GetExtraDisplayMeshComps() end

---@param bEnable boolean
function ASTExtraBaseCharacter:SetEnableOutline(bEnable) end

---@return number
function ASTExtraBaseCharacter:GetOutlineType() end

---@return number
function ASTExtraBaseCharacter:GetCurrentFOV() end

function ASTExtraBaseCharacter:NotifyClientStopFire() end

---@param Slot ESurviveWeaponPropSlot
---@param bIgnoreState boolean
---@param bCallFromDSOnly boolean
---@param SwitchWeaponFlag number
---@return boolean
function ASTExtraBaseCharacter:SwitchWeaponCheckBPCondition_BP(Slot, bIgnoreState, bCallFromDSOnly, SwitchWeaponFlag) end

---@param Weapon ASTExtraWeapon
---@param slot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:PostLocalEquipWeaponLeanInOutBP(Weapon, slot) end

---@param Weapon ASTExtraWeapon
---@param bEquip boolean
function ASTExtraBaseCharacter:OnPostEquipOrUnEquipWeapon(Weapon, bEquip) end

---@param Weapon ASTExtraWeapon
function ASTExtraBaseCharacter:OnPostGetWeapon(Weapon) end

---@return boolean
function ASTExtraBaseCharacter:CanSwitchWeaponInDeath() end

---@param Weapon ASTExtraWeapon
---@param slot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:ReceiveLocalEquipWeapon(Weapon, slot) end

---@param CamMode EPlayerCameraMode
---@return boolean
function ASTExtraBaseCharacter:IsGivenCameraMode(CamMode) end

---@param OwnerShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
function ASTExtraBaseCharacter:GetShootLineTraceExtraIgnoreActors(OwnerShootWeapon, ShootRot) end

---@param IgnoreActor AActor
function ASTExtraBaseCharacter:AddShootLineTraceIgnoreActor(IgnoreActor) end

---@param IgnoreActor AActor
function ASTExtraBaseCharacter:RemoveShootLineTraceIgnoreActor(IgnoreActor) end

function ASTExtraBaseCharacter:ClearShootLineTraceIgnoreActors() end

---@param OwnerShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
---@param Ret FVector
---@return FVector
function ASTExtraBaseCharacter:CalShootTargetLocationBP(OwnerShootWeapon, ShootRot, Ret) end

---@param OutActorList ULuaArrayHelper<AActor>
---@param ShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
---@param bLineTrace boolean
function ASTExtraBaseCharacter:GetWeaponShotIgnoreTargetListNew(OutActorList, ShootWeapon, ShootRot, bLineTrace) end

---@param ShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
---@param bLineTrace boolean
---@param bSkipLineTraceCheck boolean
function ASTExtraBaseCharacter:GetWeaponShotIgnoreTargetList(ShootWeapon, ShootRot, bLineTrace, bSkipLineTraceCheck) end

---@param OutActorList ULuaArrayHelper<AActor>
---@param ShootWeapon ASTExtraShootWeapon
---@param ShootRot FRotator
---@param bLineTrace boolean
function ASTExtraBaseCharacter:GetWeaponShotIgnoreTargetListConsiderLineTrace(OutActorList, ShootWeapon, ShootRot, bLineTrace) end

function ASTExtraBaseCharacter:RegisterPlayerPickUpList() end

function ASTExtraBaseCharacter:UnRegisterPlayerPickUpList() end

---@param Slot ESurviveWeaponPropSlot
---@param bUseAnimation boolean
---@param SwitchWeaponFlag number
function ASTExtraBaseCharacter:ForceSwitchWeaponBySlotOnServer(Slot, bUseAnimation, SwitchWeaponFlag) end

function ASTExtraBaseCharacter:UpdateCurrentShootWeaponTick() end

function ASTExtraBaseCharacter:HandleClientNetShutDownOnShowResultUI() end

---@param bRescued boolean
function ASTExtraBaseCharacter:ResetSignalOnServer(bRescued) end

---@param InDamge number
---@param EventInstigator AController
---@return number
function ASTExtraBaseCharacter:GetExtraDamageBySignalHP(InDamge, EventInstigator) end

---@return number
function ASTExtraBaseCharacter:GetHearRadius() end

function ASTExtraBaseCharacter:StopReloadOnServer() end

function ASTExtraBaseCharacter:RPC_Server_StopReload() end

---纯表现屏幕受击特效
function ASTExtraBaseCharacter:ShowInjuryScreenEffect() end

function ASTExtraBaseCharacter:OnRep_bIsAI() end

function ASTExtraBaseCharacter:OnRep_bIsAIHosting() end

function ASTExtraBaseCharacter:BPLua_OnRepbIsAIHosting() end

---@param bInIsAI boolean
function ASTExtraBaseCharacter:ReceiveInitPlayerOrAI(bInIsAI) end

---@param bCheckHasExtendDJ boolean
---@param bCheckAndConsumeBullet boolean
function ASTExtraBaseCharacter:SetAllWeaponBulletNumToMaxOnServer(bCheckHasExtendDJ, bCheckAndConsumeBullet) end

---@param ShootWeapon ASTExtraShootWeapon
---@param bCheckHasExtendDJ boolean
---@param bCheckAndConsumeBullet boolean
function ASTExtraBaseCharacter:SetTargetWeaponBulletNumToMaxOnServer(ShootWeapon, bCheckHasExtendDJ, bCheckAndConsumeBullet) end

---@param ShootWeapon ASTExtraShootWeapon
---@param BulletNum number
function ASTExtraBaseCharacter:ForceSetTargetWeaponBulletNumOnServer(ShootWeapon, BulletNum) end

---@param LastReplicatedMovementMode number
function ASTExtraBaseCharacter:OnRep_AIReplicatedMovementMode(LastReplicatedMovementMode) end

function ASTExtraBaseCharacter:OnRep_AIHostReplicatedMovement() end

function ASTExtraBaseCharacter:OnRep_AIHostReplicatedBasedMovement() end

---@param StartPos FVector
---@param EndPos FVector
---@param bCanNotSeeTarget boolean
function ASTExtraBaseCharacter:DrawTraceEnemyLine(StartPos, EndPos, bCanNotSeeTarget) end

function ASTExtraBaseCharacter:OnRep_ShowRevivalPointIcon() end

function ASTExtraBaseCharacter:OnRep_SignalHPRemainingTime() end

---玩家状态转为Finish
function ASTExtraBaseCharacter:OnPlayerFinished() end

function ASTExtraBaseCharacter:OnRep_ShowNicknameChangeEx() end

---@param InSTExtraVehicleType ESTExtraVehicleType
---@return ESVehAnimVehicleType
function ASTExtraBaseCharacter:ConversionESTExtraVehicleTypeToESVehAnimVehicleType(InSTExtraVehicleType) end

function ASTExtraBaseCharacter:OnRep_SmoothNetUpdateRotationTime() end

---操作无人载具时,服务端通知客户端声音可视化
---@param soundType EUAVCharacterMsgType
function ASTExtraBaseCharacter:OnServerCheckWarnSoundUAV(soundType) end

---@param bIsEnable boolean
function ASTExtraBaseCharacter:EnableStanbyAnim(bIsEnable) end

---@param attacher ASTExtraBaseCharacter
---@param InDamageVal number
---@param DamageDir FVector
---@return boolean
function ASTExtraBaseCharacter:TakeOtherDamage(attacher, InDamageVal, DamageDir) end

---@param CurrentAH number
---@param attacher ASTExtraBaseCharacter
---@param DamageDir FVector
function ASTExtraBaseCharacter:Client_All_ShowActivityHPOverUI(CurrentAH, attacher, DamageDir) end

function ASTExtraBaseCharacter:OnLoadActivityAudioCompleted() end

---@param SoftObjectPath FSoftObjectPath
---@param NeedOffset boolean
function ASTExtraBaseCharacter:OnLoadActivityParticleCompleted(SoftObjectPath, NeedOffset) end

---@param SoftObjectPath FSoftObjectPath
function ASTExtraBaseCharacter:OnLoadActivityAnimationCompleted(SoftObjectPath) end

---@return boolean
function ASTExtraBaseCharacter:CheckPickWeaponCanAutoUse() end

---生效范围：服务器
---传送主角，只有服务器上调用生效，客户端调用无效
---@param location FVector @位置
---@param rotation FRotator @旋转
---@param setLoc boolean @是否修改位置
---@param setRot boolean @是否修改旋转
---@param ResetVelocity boolean @是否重置速度
---@param bRecordTeleportInfo boolean @是否记录传送时间用于射击校验，如无特殊需求保持默认配置
function ASTExtraBaseCharacter:DSTeleportToLocationOrRotation(location, rotation, setLoc, setRot, ResetVelocity, bRecordTeleportInfo) end

---@param location FVector
---@param rotation FRotator
---@param setLoc boolean
---@param setRot boolean
function ASTExtraBaseCharacter:SetSimClientLocationOrRotation(location, rotation, setLoc, setRot) end

---@param location FVector
---@param rotation FRotator
---@param setLoc boolean
---@param setRot boolean
---@param ResetVelocity boolean
function ASTExtraBaseCharacter:SetClientLocationOrRotation(location, rotation, setLoc, setRot, ResetVelocity) end

---@param location FVector
---@param rotation FRotator
---@param setLoc boolean
---@param setRot boolean
---@param ResetVelocity boolean
function ASTExtraBaseCharacter:SetClientLocationOrRotationMulticast(location, rotation, setLoc, setRot, ResetVelocity) end

---@param location FVector
---@param rotation FRotator
---@param setLoc boolean
---@param setRot boolean
---@param ResetVelocity boolean
function ASTExtraBaseCharacter:SetClientLocationOrRotationToAutonomousProxy(location, rotation, setLoc, setRot, ResetVelocity) end

---@param location FVector
---@param rotation FRotator
---@param AttachScene USceneComponent
---@param SocketName string
function ASTExtraBaseCharacter:SetClientLocationOrRotationAndAttach(location, rotation, AttachScene, SocketName) end

---@param location FVector
---@param bDeactiveMov boolean
function ASTExtraBaseCharacter:ClientSetActorLocation(location, bDeactiveMov) end

---@param TargetLoc FVector
---@param Range number
---@return boolean
function ASTExtraBaseCharacter:CheckNearLocation(TargetLoc, Range) end

---@return boolean
function ASTExtraBaseCharacter:CheckLocationError() end

function ASTExtraBaseCharacter:ReportLocationError() end

---@return boolean
function ASTExtraBaseCharacter:CanHearWeaponLockSound() end

function ASTExtraBaseCharacter:OnRep_IsInFortress() end

---@param Weapon ASTExtraShootWeapon
---@param Mode EWeaponShootIntervalMode
function ASTExtraBaseCharacter:RPC_Server_SwitchWeaponShootInterval(Weapon, Mode) end

---@return FTransform
function ASTExtraBaseCharacter:GetActiveCameraTransform() end

---@return FVector
function ASTExtraBaseCharacter:GetActiveCameraLocation() end

---@return FRotator
function ASTExtraBaseCharacter:GetActiveCameraRotation() end

---@param LODLevel number
---@param ForceUpdate boolean
---@param LockKeyName string
function ASTExtraBaseCharacter:LockAnimInstanceLOD(LODLevel, ForceUpdate, LockKeyName) end

---@param LODLevel number
---@param ForceUpdate boolean
---@param LockKeyName string
function ASTExtraBaseCharacter:UnlockAnimInstanceLOD(LODLevel, ForceUpdate, LockKeyName) end

---@return number
function ASTExtraBaseCharacter:GetAnimInstanceLOD() end

---@param Origin FVector
---@param Radius number
---@param Strength number
---@param DamageTypeClass UDamageType
---@param bLinearFalloff boolean
---@param bVelChange boolean
function ASTExtraBaseCharacter:ReceiveAddRadialImpulse(Origin, Radius, Strength, DamageTypeClass, bLinearFalloff, bVelChange) end

---@param bSetUp boolean
---@param SubInstanceClass UAnimInstance
---@param SlotName string
---@param OwningActor AActor
---@param SubAnimTypes number
function ASTExtraBaseCharacter:SetUpSubAnimInstanceServer(bSetUp, SubInstanceClass, SlotName, OwningActor, SubAnimTypes) end

---@param bSetUp boolean
---@param TargetActor AActor
---@param BlendTime number
function ASTExtraBaseCharacter:SetUpSubViewTargetServer(bSetUp, TargetActor, BlendTime) end

---@param bSetUp boolean
---@param Param string
function ASTExtraBaseCharacter:SetUpUIMaskServer(bSetUp, Param) end

---@param bDo boolean
---@param ActionName ULuaArrayHelper<string>
---@param OwningActor AActor
function ASTExtraBaseCharacter:SetUpActivityActionServer(bDo, ActionName, OwningActor) end

function ASTExtraBaseCharacter:ClearActivityActionServer() end

---@param bSetUp boolean
---@param UserWidgetStyle UUserWidgetStyle
function ASTExtraBaseCharacter:SetUpUIStyleServer(bSetUp, UserWidgetStyle) end

---@param bSetUp boolean
---@param UserWidgetStyle UUserWidgetStyle
function ASTExtraBaseCharacter:GMTestUIStyleServer(bSetUp, UserWidgetStyle) end

function ASTExtraBaseCharacter:ReportUIStyleDSException() end

function ASTExtraBaseCharacter:PackupWeapons() end

function ASTExtraBaseCharacter:TakeoutWeapons() end

---@param ThemeID number
function ASTExtraBaseCharacter:SwitchWeaponModuleSystemModificationScheme(ThemeID) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function ASTExtraBaseCharacter:OnCharacterAvatarLoadFinish(AsyncLoadID, LoadEventFrom) end

---@return boolean
function ASTExtraBaseCharacter:ShouldClearWeaponDelegatesOnRecycle() end

---@return boolean
function ASTExtraBaseCharacter:ShouldClearWeaponDelegatesOnRecycleInner() end

function ASTExtraBaseCharacter:RefreshPlayerMeshPCShadowConfig() end

---@param ChangeHistory ULuaArrayHelper<number>
function ASTExtraBaseCharacter:OnFlushHealthChangeHistoryOnClient(ChangeHistory) end

---@param ChangeHistory ULuaArrayHelper<FHealthChangeRecordItem>
function ASTExtraBaseCharacter:OnFlushHealthChangeHistoryOnClientNew(ChangeHistory) end

function ASTExtraBaseCharacter:OnPostFlushHealthChangeHistoryOnServer() end

function ASTExtraBaseCharacter:OnRep_CurrentNetCullDistanceSquared() end

function ASTExtraBaseCharacter:CheckActivitySyncData() end

---@param CameraDataType ECameraDataType
---@param IsEnable boolean
function ASTExtraBaseCharacter:SetCameraDataEnable(CameraDataType, IsEnable) end

function ASTExtraBaseCharacter:ReadDefaultFov() end

---@param RealViewer AActor
---@param ViewTarget AActor
---@param SrcLocation FVector
---@return boolean
function ASTExtraBaseCharacter:IsNotRelevantInScript(RealViewer, ViewTarget, SrcLocation) end

---@param bIgnore boolean
function ASTExtraBaseCharacter:SetIgnoreBlueCircle(bIgnore) end

function ASTExtraBaseCharacter:OnRep_bIgnoreBlueCircle() end

---@param Damage number
---@param DamageType number
---@param EventInstigator AController
---@param DamageCauser AActor
---@param Hit FHitResult
---@return number
function ASTExtraBaseCharacter:OverrideDamageValueWhenTakeDamage(Damage, DamageType, EventInstigator, DamageCauser, Hit) end

---@param NewHealth number
---@param Reason ERecoveryReasonType
function ASTExtraBaseCharacter:SetHealth(NewHealth, Reason) end

---@return number
function ASTExtraBaseCharacter:GetHealth() end

---@param NewHealthMax number
---@param bAllowHealthShrink boolean
---@param bSyncSetHealth boolean
---@param Reason ERecoveryReasonType
function ASTExtraBaseCharacter:SetHealthMax(NewHealthMax, bAllowHealthShrink, bSyncSetHealth, Reason) end

---@return number
function ASTExtraBaseCharacter:GetHealthMax() end

---@param NewModifier number
function ASTExtraBaseCharacter:SetMoveSpeedModifier(NewModifier) end

---@return number
function ASTExtraBaseCharacter:GetMoveSpeedModifier() end

---@param NewModifier number
function ASTExtraBaseCharacter:SetSwimSpeedModifier(NewModifier) end

---@return number
function ASTExtraBaseCharacter:GetSwimSpeedModifier() end

---@param NewModifier number
function ASTExtraBaseCharacter:SetJumpHeightModifier(NewModifier) end

---@return number
function ASTExtraBaseCharacter:GetJumpHeight() end

---@return number
function ASTExtraBaseCharacter:GetSprintSpeedScale() end

---@param Scale number
function ASTExtraBaseCharacter:SetSprintSpeedScale(Scale) end

---@return number
function ASTExtraBaseCharacter:GetEnergySpeedScaleUGC() end

---@param Scale number
function ASTExtraBaseCharacter:SetEnergySpeedScaleUGC(Scale) end

---@return number
function ASTExtraBaseCharacter:GetSpeedScaleUGC() end

---@param Scale number
function ASTExtraBaseCharacter:SetSpeedScaleUGC(Scale) end

---@return number
function ASTExtraBaseCharacter:GetCrouchSpeedScale() end

---@param Scale number
function ASTExtraBaseCharacter:SetCrouchSpeedScale(Scale) end

---@return number
function ASTExtraBaseCharacter:GetProneSpeedScale() end

---@param Scale number
function ASTExtraBaseCharacter:SetProneSpeedScale(Scale) end

---@return number
function ASTExtraBaseCharacter:GetSwimSpeedScale() end

---@param Scale number
function ASTExtraBaseCharacter:SetSwimSpeedScale(Scale) end

---@param AttrModifyItemName string
---@return number
function ASTExtraBaseCharacter:GetUGCMoveSpeedScaleByName(AttrModifyItemName) end

---@param Scale number
---@param AttrModifyItemName string
function ASTExtraBaseCharacter:SetUGCMoveSpeedScaleByName(Scale, AttrModifyItemName) end

function ASTExtraBaseCharacter:ResetUGCMoveSpeedScale() end

---@return number
function ASTExtraBaseCharacter:GetUGCMoveSpeedScale() end

function ASTExtraBaseCharacter:UpdateUGCMoveSpeedScale() end

---@param speed number
function ASTExtraBaseCharacter:SetActivityMoveSpeedScale(speed) end

---@return number
function ASTExtraBaseCharacter:GetActivityMoveSpeedScale() end

---@param InMesh USkeletalMesh
function ASTExtraBaseCharacter:UGCSetCharacterMeshCoverAvatarMesh(InMesh) end

function ASTExtraBaseCharacter:UGCRecoverAvatarMesh() end

---@return number
function ASTExtraBaseCharacter:GetUGCGeneralMoveSpeedScale() end

function ASTExtraBaseCharacter:OnRep_CoverAllAvatarMeshInfo() end

---@param PrevUGCGeneralMoveSpeedScale FGameAttributeProperty
function ASTExtraBaseCharacter:OnRep_UGCGeneralMoveSpeedScale(PrevUGCGeneralMoveSpeedScale) end

---@param PrevRescueOtherDurationRate FGameAttributeProperty
function ASTExtraBaseCharacter:OnRep_RescueOtherDurationRate(PrevRescueOtherDurationRate) end

---@param PrevJumpCountLimit FGameAttributeProperty
function ASTExtraBaseCharacter:OnRep_JumpCountLimit(PrevJumpCountLimit) end

---@param PrevJumpZSpeed FGameAttributeProperty
function ASTExtraBaseCharacter:OnRep_JumpZSpeed(PrevJumpZSpeed) end

---@param PrevHitBackIntensity FGameAttributeProperty
function ASTExtraBaseCharacter:OnRep_HitBackIntensity(PrevHitBackIntensity) end

---@param PrevHitBackResist FGameAttributeProperty
function ASTExtraBaseCharacter:OnRep_HitBackResist(PrevHitBackResist) end

---@param PrevFallingDamageRatio FGameAttributeProperty
function ASTExtraBaseCharacter:OnRep_FallingDamageRatio(PrevFallingDamageRatio) end

---@param InAttrName string
---@param CurValue number
function ASTExtraBaseCharacter:OnJumpCountLimitChanged(InAttrName, CurValue) end

---@param InAttrName string
---@param CurValue number
function ASTExtraBaseCharacter:OnJumpZSpeedChanged(InAttrName, CurValue) end

---@param Prev number
function ASTExtraBaseCharacter:OnRep_Breath(Prev) end

function ASTExtraBaseCharacter:CheckAnimInstanceChange() end

function ASTExtraBaseCharacter:MarkAnimInstanceChanged() end

---是否正在模拟中(实际生效)
---@return boolean
function ASTExtraBaseCharacter:IsVelocitySimulated() end

---设置叠加速度
---@param InAdditiveVelocity FVector
---@return number
function ASTExtraBaseCharacter:SetAdditiveVelocity(InAdditiveVelocity) end

---清除叠加速度
---@param AdditiveVelocityID number
function ASTExtraBaseCharacter:ClearAdditiveVelocity(AdditiveVelocityID) end

---获取叠加速度
---@return FVector
function ASTExtraBaseCharacter:GetAdditiveVelocity() end

---获取模拟速度(原有速度+叠加速度)
---@return FVector
function ASTExtraBaseCharacter:GetSimulatedVelocity() end

---@param _FinalImpactResult FHitResult
---@return boolean
function ASTExtraBaseCharacter:CheckDisableImpact(_FinalImpactResult) end

---@param TargetPos FVector
---@param TargetRot FRotator
function ASTExtraBaseCharacter:SafetyTeleportTo(TargetPos, TargetRot) end

function ASTExtraBaseCharacter:OnRep_CurrentGravityScale() end

---@param NewGravity number
function ASTExtraBaseCharacter:SetGravityScale(NewGravity) end

---@param ListWrapper APickUpListWrapperActor
---@param InstanceID number
---@param TypeSpesificID number
---@param Count number
function ASTExtraBaseCharacter:RPC_Client_PlayerPickUpErrorReq(ListWrapper, InstanceID, TypeSpesificID, Count) end

---@param ListWrapper APickUpListWrapperActor
---@param InstanceID number
---@param TypeSpesificID number
---@param Count number
---@param bInUIList boolean
---@param SearchTargetData ULuaArrayHelper<FPickUpItemData>
---@param ListWrapperData ULuaArrayHelper<FPickUpItemData>
function ASTExtraBaseCharacter:RPC_Server_PlayerPickUpErrorRsp(ListWrapper, InstanceID, TypeSpesificID, Count, bInUIList, SearchTargetData, ListWrapperData) end

---@param FailedListWrapper APickUpListWrapperActor
function ASTExtraBaseCharacter:RPC_Client_PickUpListDataReport(FailedListWrapper) end

---@param DeltaTime number
function ASTExtraBaseCharacter:CheckCurWeaponMeshVisible(DeltaTime) end

---@param Weapon ASTExtraWeapon
---@param TargetMesh UMeshComponent
---@return string
function ASTExtraBaseCharacter:CheckCurWeaponMeshVisibleInner(Weapon, TargetMesh) end

---@return boolean
function ASTExtraBaseCharacter:CheckCurWeaponMeshVisibleCondition() end

---@param DeltaTime number
function ASTExtraBaseCharacter:CheckPlayerHitBoxPositionOffset(DeltaTime) end

---@param DeltaTime number
function ASTExtraBaseCharacter:CheckPickupAvailableActorPoolMiss(DeltaTime) end

---@param DeltaTime number
function ASTExtraBaseCharacter:CheckAutoFire(DeltaTime) end

---@param DeltaTime number
function ASTExtraBaseCharacter:CheckSwitchWeaponStateLeak(DeltaTime) end

---@param TargetActor AActor
---@param PickUpComp UPickupManagerComponent
---@param OutInfo string
function ASTExtraBaseCharacter:CheckPickupAvailableActorPoolMissInternal(TargetActor, PickUpComp, OutInfo) end

function ASTExtraBaseCharacter:HandleCurWeaponMeshUnVisible() end

function ASTExtraBaseCharacter:CheckInitShootWeaponShootIDAndClipID() end

function ASTExtraBaseCharacter:ServerHandleForceClearClientCreateWeaponCacheLocal() end

---@param IsOpenWeaponSight boolean
function ASTExtraBaseCharacter:SetWeaponSightState(IsOpenWeaponSight) end

---@param IsOpenWeaponSight boolean
function ASTExtraBaseCharacter:SetWeaponSightStateLocal(IsOpenWeaponSight) end

---@param IsOpenWeaponSight boolean
function ASTExtraBaseCharacter:SetWeaponSightStateServer(IsOpenWeaponSight) end

function ASTExtraBaseCharacter:OnRep_WeaponSightStateChanged() end

---Event
---发射子弹事件
---生效范围C
---@param ShootWeapon ASTExtraShootWeapon @射击武器
---@param Bullet ASTExtraShootWeaponBulletBase @子弹
function ASTExtraBaseCharacter:UGC_WeaponShootBulletEvent(ShootWeapon, Bullet) end

---Event
---子弹命中事件
---生效范围SC
---@param ShootWeapon ASTExtraShootWeapon @射击武器
---@param Bullet ASTExtraShootWeaponBulletBase @子弹
---@param HitInfo FHitResult @命中信息
function ASTExtraBaseCharacter:UGC_WeaponBulletHitEvent(ShootWeapon, Bullet, HitInfo) end

---Event
---当前武器变化事件
---生效范围SC
---@param UsingWeaponSlot ESurviveWeaponPropSlot @当前武器插槽
---@param LastSlot ESurviveWeaponPropSlot @上次武器插槽
function ASTExtraBaseCharacter:UGC_ChangeCurrentUsingWeaponEvent(UsingWeaponSlot, LastSlot) end

---Event
---装备武器事件，仅装备在身上，非当前手持武器
---生效范围SC
---@param Slot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:UGC_EquipWeaponEvent(Slot) end

---Event
---开火调用事件，仅在按下开火时调用一次
---生效范围SC
---@param isAuto ESTEWeaponShootType @是否自动开火
function ASTExtraBaseCharacter:UGC_WeaponStartFireEvent(isAuto) end

---Event
---停火调用事件
---生效范围SC
function ASTExtraBaseCharacter:UGC_WeaponStopFireEvent() end

---Event
---切换武器事件
---生效范围C
function ASTExtraBaseCharacter:UGC_WeaponSwitchEvent() end

---Event
---开始换弹事件
---生效范围SC
function ASTExtraBaseCharacter:UGC_ReloadStartEvent() end

---Event
---换弹结束事件
---生效范围SC
function ASTExtraBaseCharacter:UGC_ReloadEndEvent() end

---Event
---开镜事件
---生效范围C
function ASTExtraBaseCharacter:UGC_OpenScopeEvent() end

---Event
---开镜结束事件
---生效范围C
function ASTExtraBaseCharacter:UGC_CloseScopeEvent() end

---Event
---进入某个PawnState事件
---生效范围SC
---@param PawnState EPawnState @进入的PawnState
function ASTExtraBaseCharacter:UGC_EnterPawnStateEvent(PawnState) end

---Event
---离开某个PawnState事件
---生效范围SC
---@param PawnState EPawnState @离开的PawnState
function ASTExtraBaseCharacter:UGC_LeavePawnStateEvent(PawnState) end

---Event
---玩家拾取事件
---生效范围SC
function ASTExtraBaseCharacter:UGC_PlayerPickUpEvent() end

---Event
---玩家死亡事件
---生效范围SC
---@param Killer AController @把该角色淘汰的玩家
---@param DamageType EDamageType @伤害类型
function ASTExtraBaseCharacter:UGC_PlayerDeadEvent(Killer, DamageType) end

---Event
---重载伤害事件，返回值为修改后的伤害
---生效范围S
---@param Damage number @伤害类型
---@param DamageType EDamageType @造成伤害的玩家
---@param EventInstigator AController @造成伤害的玩家
---@param DamageCauser AActor @把该角色淘汰的玩家
---@param Hit FHitResult @伤害命中信息
---@return number @修改后伤害值
function ASTExtraBaseCharacter:UGC_TakeDamageOverrideEvent(Damage, DamageType, EventInstigator, DamageCauser, Hit) end

---@param Mode ECustomFlyingMoveMode
---@param MoveFlag ECustomFlyingMoveFlag
---@return boolean
function ASTExtraBaseCharacter:EnterCustomFlying(Mode, MoveFlag) end

---@param Mode ECustomFlyingMoveMode
---@param MoveFlag ECustomFlyingMoveFlag
---@return boolean
function ASTExtraBaseCharacter:CanEnterCustomFlying(Mode, MoveFlag) end

function ASTExtraBaseCharacter:ExitCustomFlying() end

---@param Mode ECustomFlyingMoveMode
---@param MoveFlag ECustomFlyingMoveFlag
---@return boolean
function ASTExtraBaseCharacter:LocalEnterCustomFlying(Mode, MoveFlag) end

---@param Mode ECustomFlyingMoveMode
---@param MoveFlag ECustomFlyingMoveFlag
---@return boolean
function ASTExtraBaseCharacter:LocalEnterCustomFlyingInServerMove(Mode, MoveFlag) end

function ASTExtraBaseCharacter:LocalExitCustomFlying() end

---@param Mode ECustomFlyingMoveMode
---@param MoveFlag ECustomFlyingMoveFlag
function ASTExtraBaseCharacter:ServerEnterCustomFlying(Mode, MoveFlag) end

function ASTExtraBaseCharacter:ServerExitCustomFlying() end

function ASTExtraBaseCharacter:ClientExitCustomFlying() end

---@param bIsFPP boolean
function ASTExtraBaseCharacter:OnSwitchPersonPerspective(bIsFPP) end

---@return boolean
function ASTExtraBaseCharacter:GetBisAllTeammateDied() end

---@return boolean
function ASTExtraBaseCharacter:GetBisAllTeammateDiedWithPawn() end

---@param Msg string
---@param bIgnoreParachuting boolean
function ASTExtraBaseCharacter:OnEnterCirclePainVolume(Msg, bIgnoreParachuting) end

---@param bIgnoreParachuting boolean
function ASTExtraBaseCharacter:UpdateCirclePainVolumeStatus(bIgnoreParachuting) end

---@param Msg string
function ASTExtraBaseCharacter:OnExitCirclePainVolume(Msg) end

---@param TargetChangeSlot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:ReportWeaponSlotDataChange(TargetChangeSlot) end

---@param SlotType EAvatarSlotType
---@param EquipmentInfo string
function ASTExtraBaseCharacter:ReportItemAvatarInfo(SlotType, EquipmentInfo) end

---@param SlotID number
---@param EquipmentInfo string
function ASTExtraBaseCharacter:ReportItemEquipmentInfo(SlotID, EquipmentInfo) end

---@param PreviousSlot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:OnRep_HideWeaponSlot(PreviousSlot) end

---@param PreviousSlot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:OnRep_ShowWeaponSlot(PreviousSlot) end

---@param InHideWeaponSlot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:SetHideWeapon(InHideWeaponSlot) end

---@param InShowWeaponSlot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:SetShowWeapon(InShowWeaponSlot) end

---@param Velocity FVector
---@param PushOnHeight number
function ASTExtraBaseCharacter:RPC_Client_ApplyVelocityOnVehicle(Velocity, PushOnHeight) end

---@param Interface ICustomNetRelevantInterface
function ASTExtraBaseCharacter:AddCustomNetRelevantInterface(Interface) end

---@param Interface ICustomNetRelevantInterface
function ASTExtraBaseCharacter:RemoveCustomNetRelevantInterface(Interface) end

function ASTExtraBaseCharacter:ClearCustomNetRelevantInterface() end

---@return boolean
function ASTExtraBaseCharacter:IsClientSwitchSuitEnabled() end

---@param Weapon ASTExtraWeapon
function ASTExtraBaseCharacter:OnShoot(Weapon) end

---@return number
function ASTExtraBaseCharacter:GetScaleStandHalfHeight() end

---@return number
function ASTExtraBaseCharacter:GetScaleCrouchHalfHeight() end

---@return number
function ASTExtraBaseCharacter:GetScaleProneHalfHeight() end

---@param TargetFOV number
---@param Enable boolean
function ASTExtraBaseCharacter:LerpFOV(TargetFOV, Enable) end

function ASTExtraBaseCharacter:UpdateCheckPlayerStateCharacter() end

---@param SubmitInfo FMeleeAttackDamageSubmitInfo
function ASTExtraBaseCharacter:SubmitMeleeAttackHitResult(SubmitInfo) end

function ASTExtraBaseCharacter:OnRep_AbsorbRepData() end

function ASTExtraBaseCharacter:OnRep_Redundant_AvatarSyncData() end

function ASTExtraBaseCharacter:OnRep_Redundant_PlayerBackPackCapacity() end

function ASTExtraBaseCharacter:OnRep_Redundant_GlideGlobalVisible() end

function ASTExtraBaseCharacter:OnRep_Redundant_NetEmoteData() end

function ASTExtraBaseCharacter:OnRep_Redundant_NetFacialEmoteData() end

---@param PrevData FThrowObjectData
function ASTExtraBaseCharacter:OnRep_Redundant_ThrowComponent_ThrowObjectData(PrevData) end

function ASTExtraBaseCharacter:OnRep_Redundant_FaceData() end

function ASTExtraBaseCharacter:OnRep_Redundant_FaceState() end

function ASTExtraBaseCharacter:OnRep_Redundant_ModeAvatarFeature() end

---@param bIsNewHidden boolean
function ASTExtraBaseCharacter:HiddenMySelf(bIsNewHidden) end

---@param OutLocation FVector
---@param Radius number
---@param TryFindLocNum number
---@return boolean
function ASTExtraBaseCharacter:FindRandomPositionNearBy(OutLocation, Radius, TryFindLocNum) end

---@param OutLocation FVector
---@param Radius number
---@param TryFindLocNum number
---@return boolean
function ASTExtraBaseCharacter:FindRandomPositionNearByTest(OutLocation, Radius, TryFindLocNum) end

---@param OutLocation FVector
---@param Radius number
---@param TryFindLocNum number
---@return boolean
function ASTExtraBaseCharacter:CharacterFindNearByPoint(OutLocation, Radius, TryFindLocNum) end

---@param OutLocation FVector
---@param ActivityBaseActor AActor
---@param Radius number
---@param TryFindLocNum number
---@return boolean
function ASTExtraBaseCharacter:ActivityActorFindNearByPoint(OutLocation, ActivityBaseActor, Radius, TryFindLocNum) end

---@param handle UItemHandleBase
function ASTExtraBaseCharacter:OnPlayerItemUpdate(handle) end

function ASTExtraBaseCharacter:OnPlayerItemListUpdate() end

function ASTExtraBaseCharacter:OnRep_ObservedItemList_OnReplay() end

---@param bForbid boolean
---@param ForbidKey string
---@param bForceClearAllKey boolean
function ASTExtraBaseCharacter:SetTeammateForbidOBTransformServer(bForbid, ForbidKey, bForceClearAllKey) end

---@param bForbid boolean
---@param ForbidKey string
---@param bForceClearAllKey boolean
function ASTExtraBaseCharacter:SetTeammateForbidRecoverServer(bForbid, ForbidKey, bForceClearAllKey) end

---@param ChangeHistory ULuaArrayHelper<number>
function ASTExtraBaseCharacter:RPC_OwnerClient_FlushPlayerHealthChangeHistory(ChangeHistory) end

---@param ChangeHistory ULuaArrayHelper<FHealthChangeRecordItem>
function ASTExtraBaseCharacter:RPC_OwnerClient_FlushPlayerHealthChangeHistoryNew(ChangeHistory) end

---@param SendLocation FVector
function ASTExtraBaseCharacter:OnCallServerMove(SendLocation) end

function ASTExtraBaseCharacter:InitLocalPlayerMoveCacheData() end

---@param CacheData FLocalPlayerMoveCacheData
function ASTExtraBaseCharacter:PushLocalPlayerMoveCacheData(CacheData) end

---@param FrameID number
---@param OutCacheData FLocalPlayerMoveCacheData
---@return boolean
function ASTExtraBaseCharacter:GetLocalPlayerMoveCacheDataByFrame(FrameID, OutCacheData) end

---@param ShootID number
---@param ImpactPoint FVector
---@param HitLocalFrame number
---@param Killer ASTExtraBaseCharacter
function ASTExtraBaseCharacter:CheckDelayKillReportOnPostDamage(ShootID, ImpactPoint, HitLocalFrame, Killer) end

function ASTExtraBaseCharacter:OnRep_CriticalVerifyFailedCountRepOnReplay() end

---@param ShootID number
---@param ImpactPoint FVector
---@param HitLocalFrame number
---@param Killer ASTExtraBaseCharacter
---@return string
function ASTExtraBaseCharacter:LocalCheckDelayKillReportOnPostDamageBP(ShootID, ImpactPoint, HitLocalFrame, Killer) end

function ASTExtraBaseCharacter:OnRep_PendingExitHidden() end

---@param bNewPendingExitHidden boolean
function ASTExtraBaseCharacter:SetPendingExitHidden(bNewPendingExitHidden) end

function ASTExtraBaseCharacter:OnRep_ToClientScopeZoomValue() end

---@param ClientPoseState ESTEPoseState
---@param ServerPoseState ESTEPoseState
function ASTExtraBaseCharacter:HandleClientResponseVerifyPoseState(ClientPoseState, ServerPoseState) end

---@param ReserveParam string
---@param ReserveActor AActor
function ASTExtraBaseCharacter:ReserveServerRPC(ReserveParam, ReserveActor) end

---@param ReserveParam string
---@param ReserveActor AActor
function ASTExtraBaseCharacter:ReserveClientRPC(ReserveParam, ReserveActor) end

---@param ReserveParam string
---@param ReserveActor AActor
function ASTExtraBaseCharacter:HandleReserveClientRPC(ReserveParam, ReserveActor) end

function ASTExtraBaseCharacter:OnRep_ReplicateMovement() end

---@param DeltaTime number
function ASTExtraBaseCharacter:StartRepTimesCount(DeltaTime) end

function ASTExtraBaseCharacter:EndRepTimesCount() end

---@param ChangedToVisible ULuaArrayHelper<number>
---@param ChangedToInvisible ULuaArrayHelper<number>
function ASTExtraBaseCharacter:OnOthersVisibilityChanged(ChangedToVisible, ChangedToInvisible) end

---@param DelayTimes number
function ASTExtraBaseCharacter:ClientTickCheckIllegalTeam(DelayTimes) end

---@param BeginTims number
function ASTExtraBaseCharacter:ReportMyselfIllegalTeam(BeginTims) end

function ASTExtraBaseCharacter:OnRep_IllegalMoveState() end

function ASTExtraBaseCharacter:OnRep_IllegalDanceTime() end

function ASTExtraBaseCharacter:OnRep_IllegalTransfromTime() end

function ASTExtraBaseCharacter:OnRep_IllegalAirAttackTime() end

function ASTExtraBaseCharacter:OnRep_IllegalDropItemTime() end

---@param PlayerController ASTExtraPlayerController
function ASTExtraBaseCharacter:BindPlayerExitAndDamageDelegate(PlayerController) end

---@param PlayerController ASTExtraPlayerController
function ASTExtraBaseCharacter:UnbindPlayerExitAndDamageDelegate(PlayerController) end

---@param ExitPlayerController APlayerController
function ASTExtraBaseCharacter:OnPlayerExit(ExitPlayerController) end

---@param Damage number
---@param DamageType UDamageType
---@param EventInstigator AController
---@param DamagedActor AActor
---@param DamageCauser AActor
---@param bIsDeadlyDamage boolean
function ASTExtraBaseCharacter:HandlePlayerInstigateAnyDamage(Damage, DamageType, EventInstigator, DamagedActor, DamageCauser, bIsDeadlyDamage) end

---@param Value boolean
function ASTExtraBaseCharacter:SetEnableReplicatedMovementOptimize(Value) end

---@param bCheckCVar boolean
---@return boolean
function ASTExtraBaseCharacter:IsEnableReplicatedMovementOptimize(bCheckCVar) end

function ASTExtraBaseCharacter:OnPostNetDriverTickDispatch() end

function ASTExtraBaseCharacter:ProcessPendingReplicatedMovement() end

---@param Slot ESurviveWeaponPropSlot
function ASTExtraBaseCharacter:HandlePlayerInventoryWeaponChange(Slot) end

---@param Value boolean
function ASTExtraBaseCharacter:SetEnableDynamicBaseOpenSimulateMovementTickOptimize(Value) end

---@return boolean
function ASTExtraBaseCharacter:IsEnableDynamicBaseOpenSimulateMovementTickOptimize() end

function ASTExtraBaseCharacter:ClientFlushLevelStraming() end

---用于Launch时的高跳反外挂
---@param XYVelocity number
---@param ZVelocity number
---@param bXYOverride boolean
---@param bZOverride boolean
function ASTExtraBaseCharacter:OnEnterLaunchAntiCheat(XYVelocity, ZVelocity, bXYOverride, bZOverride) end

function ASTExtraBaseCharacter:OnLeaveLaunchAntiCheat() end

function ASTExtraBaseCharacter:OnRep_CharacterGARepData() end

function ASTExtraBaseCharacter:CharacterUpdateGARepData() end

---@param character ASTExtraBaseCharacter
function ASTExtraBaseCharacter:OnRefreshCharacterGARole(character) end

---@param AbilityID number
---@return number
function ASTExtraBaseCharacter:GetWeaponAbilityIndex(AbilityID) end

---@param AbilityID number
---@return boolean
function ASTExtraBaseCharacter:ContainsWeaponAbility(AbilityID) end

---@param Enable boolean
---@param Handle UBackpackWeaponAbilityHandle
function ASTExtraBaseCharacter:Server_OnEnableWeaponAbility(Enable, Handle) end

function ASTExtraBaseCharacter:OnRep_EnableWeaponAbilityDataArray() end

---@param ItemHandles ULuaArrayHelper<UBattleItemHandleBase>
---@param AsyncLoadID number
function ASTExtraBaseCharacter:OnAbilityHandleListLoaded(ItemHandles, AsyncLoadID) end

---@return boolean
function ASTExtraBaseCharacter:IsSimulateNoRecentlyRendered() end

---@return boolean
function ASTExtraBaseCharacter:IsOperatingMachineForceFPP() end

---@param bIsForceFPP boolean
function ASTExtraBaseCharacter:SetIsOperatingMachineForceFPP(bIsForceFPP) end

---@param EventName string
function ASTExtraBaseCharacter:Play3DAudioAtLocation(EventName) end

---@param EventName string
function ASTExtraBaseCharacter:BPPlay3DAudioAtLocation(EventName) end

---@return FVector
function ASTExtraBaseCharacter:GetStandActorLocation() end

function ASTExtraBaseCharacter:CallReplayTipsNotify() end

---@return boolean
function ASTExtraBaseCharacter:RevertToSafeMoveState() end

---@param cmd string
function ASTExtraBaseCharacter:MultiExecGMCommand(cmd) end

---@param InEnableCutParachute boolean
function ASTExtraBaseCharacter:SetEnableCutParachute(InEnableCutParachute) end

---@param InCutParachutingFallingProtect boolean
function ASTExtraBaseCharacter:SetCutParachutingFallingProtect(InCutParachutingFallingProtect) end

function ASTExtraBaseCharacter:OnRep_EnableCutParachute() end

function ASTExtraBaseCharacter:RPC_Server_CutParachute() end

---@param bEnter boolean
---@param LaunchTag string
function ASTExtraBaseCharacter:SetMeleeAttackLaunchMode(bEnter, LaunchTag) end

---@param Monster ACharacter
---@param ClientPlayLoc FVector
---@param Radius number
---@param bSkipDamage boolean
---@param DamageCauser AActor
function ASTExtraBaseCharacter:RPC_Server_NianMonsterSkillReport(Monster, ClientPlayLoc, Radius, bSkipDamage, DamageCauser) end

---@param Player ACharacter
---@param Monster ACharacter
---@param PlayerLoc FVector
---@param SkillRadius number
---@param bSkipDamage boolean
---@param SkillActor AActor
function ASTExtraBaseCharacter:HandleNianSkillDamage(Player, Monster, PlayerLoc, SkillRadius, bSkipDamage, SkillActor) end

---@param DustFX UParticleSystem
---@param Scale FVector
function ASTExtraBaseCharacter:ActiveGroundDustEffectFXOnPlayerPoseChanged(DustFX, Scale) end

---@param OldPose ECharacterPoseType
---@param NewPose ECharacterPoseType
function ASTExtraBaseCharacter:HandlePoseChangeGroundDust(OldPose, NewPose) end

---@param NewControlRotation FRotator
---@param bEnableChangeBlendType boolean
---@return EFaceRotCheckRetType
function ASTExtraBaseCharacter:CheckFaceRotationEnable(NewControlRotation, bEnableChangeBlendType) end

---@param NewControlRotation FRotator
---@param DeltaTime number
---@return FRotator
function ASTExtraBaseCharacter:ModifyControlRotation(NewControlRotation, DeltaTime) end

---@param InRate FRotator
---@return FRotator
function ASTExtraBaseCharacter:DyingCameraSensibilityDecrease(InRate) end

---@param ViewRotation FRotator
---@return FRotator
function ASTExtraBaseCharacter:LimitNewFPPControlRotation(ViewRotation) end

---@param InRot FRotator
---@param DeltaTime number
---@return FRotator
function ASTExtraBaseCharacter:FaceRotChaseCamera(InRot, DeltaTime) end

---@param NewType EDyingFaceRotBlendType
function ASTExtraBaseCharacter:ChangeFaceRotBlendType(NewType) end

---@param OldType EDyingFaceRotBlendType
function ASTExtraBaseCharacter:OnRep_CurDyingFaceRotBlendType(OldType) end

---@param LimitKey string
---@param MinRate number
---@param MaxRate number
---@param Priority EMoveInputRateLimitPriority
function ASTExtraBaseCharacter:SetMoveForwardInputRateLimit(LimitKey, MinRate, MaxRate, Priority) end

---@param LimitKey string
function ASTExtraBaseCharacter:RemoveMoveForwardInputRateLimit(LimitKey) end

---@param LimitKey string
---@param MinRate number
---@param MaxRate number
---@param Priority EMoveInputRateLimitPriority
function ASTExtraBaseCharacter:SetMoveRightInputRateLimit(LimitKey, MinRate, MaxRate, Priority) end

---@param LimitKey string
function ASTExtraBaseCharacter:RemoveMoveRightInputRateLimit(LimitKey) end

function ASTExtraBaseCharacter:OnRep_AvatarCustomSyncData() end

---@return boolean
function ASTExtraBaseCharacter:HasDyingUsingWeapon() end

---@param bConsiderWrapper boolean
---@param bConsiderBox boolean
---@param bConsiderOB boolean
---@return boolean
function ASTExtraBaseCharacter:IsAvailableForUpdatingPickUp(bConsiderWrapper, bConsiderBox, bConsiderOB) end

function ASTExtraBaseCharacter:GetSetCakeSkill() end

---@param ShooterUID number
---@param ShootDamageValueData FShootDamageValueData
---@param TotalShootDamageValue number
---@param DamageThreshold number
---@param DeltaTime number
function ASTExtraBaseCharacter:ServerRPC_ReportClientBigShootDamage(ShooterUID, ShootDamageValueData, TotalShootDamageValue, DamageThreshold, DeltaTime) end

---@param Time number
function ASTExtraBaseCharacter:Server_FastNetFrame(Time) end

---@param Time number
function ASTExtraBaseCharacter:Client_FastNetFrame(Time) end

---@param ChildActor AActor
---@param SocketName string
---@param LocationRule EAttachmentRule
---@param RotationRule EAttachmentRule
---@param ScaleRule EAttachmentRule
---@param bWeldSimulatedBodies boolean
function ASTExtraBaseCharacter:SetActorAttachToPlayerPawn(ChildActor, SocketName, LocationRule, RotationRule, ScaleRule, bWeldSimulatedBodies) end

---@param ChildActor AActor
---@param LocationRule EDetachmentRule
---@param RotationRule EDetachmentRule
---@param ScaleRule EDetachmentRule
---@param bCallModify boolean
function ASTExtraBaseCharacter:CancelActorAttachToPlayerPawn(ChildActor, LocationRule, RotationRule, ScaleRule, bCallModify) end

---@param bWantsEquip boolean
---@param Rate number
function ASTExtraBaseCharacter:SetSwitchWeaponAnimPlayRate(bWantsEquip, Rate) end

---@param AbsRate number
function ASTExtraBaseCharacter:PlayCurSwitchWeaponAnimReverseByAbsRate(AbsRate) end

---@return number
function ASTExtraBaseCharacter:GetPlayerBeSensedDistanceScale() end

---@param bEnable boolean
---@param Reason string
function ASTExtraBaseCharacter:SetDriverShootingUIEnable(bEnable, Reason) end

---@return boolean
function ASTExtraBaseCharacter:GetDriverShootingUIEnable() end

---@param bEnable boolean
---@param ModuleKey number
function ASTExtraBaseCharacter:SwitchForceLockIK(bEnable, ModuleKey) end
