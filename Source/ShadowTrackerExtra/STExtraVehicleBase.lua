---@meta

---载具基础类型
---@class ESTExtraVehicleBaseType
---@field VBT_WheeledVehicle number @带轮载具
---@field VBT_Motorbike number @//*UGC* 带轮载具
---@field VBT_Amphibious number @//*UGC* 摩托
---@field VBT_Helicopter number @//*UGC* 两栖载具
---@field VBT_FloatingVehicle number @//*UGC* 直升机
---@field VBT_Horse number @//*UGC* 水上载具
---@field VBT_Aircraft number @//*UGC* 马类
---@field VBT_Other number @//*UGC* 飞行类
ESTExtraVehicleBaseType = {}


---载具健康状态
---@class ESTExtraVehicleHealthState
---@field VHS_Good number
---@field VHS_Smoking number @//*UGC* 良好
---@field VHS_Burning number @//*UGC* 冒烟
---@field VHS_Destroyed number @//*UGC* 燃烧
ESTExtraVehicleHealthState = {}


---@class ESTExtraUAVVehicleOperateState
---@field Operate_Normal number
---@field Operate_WithUp number
---@field Operate_WithDown number
---@field Operate_Clear number
ESTExtraUAVVehicleOperateState = {}


---同步状态管理 由DS值复制到各个端
---@class ESTExtraVehicleSyncState
---@field VSS_None number
---@field VSS_Client number
---@field VSS_ServerAuthorize number
ESTExtraVehicleSyncState = {}


---@class ECallingVehicleResult
---@field CanntBeCalled number
---@field OnTheWay number
---@field OutOfDistance number
---@field OtherCalled number
ECallingVehicleResult = {}


---@class ESTExtraLockedVehicleStatus
---@field ESOnlyOwnerCanDriver number
---@field EStrangerCannotGetIn number
---@field EStrangerOnlyPassenger number
---@field ETeamMateCanBeDriverAndPassenger number
---@field ESUnlockVehicle number
ESTExtraLockedVehicleStatus = {}


---@class ESTExtraVehicleCruiseControlState
---@field VCCS_None number
---@field VCCS_ShowUI number
---@field VCCS_NormalCruise number
---@field VCCS_BoostCruise number
ESTExtraVehicleCruiseControlState = {}


---@class ESTExtraVehicleWindowState
---@field VWS_Opening number
---@field VWS_Opened number
---@field VWS_Closing number
---@field VWS_Closed number
---@field VWS_Destroied number
ESTExtraVehicleWindowState = {}


---@class EVehicleParachuteState
---@field EVehicleParachute_None number
---@field EVehicleParachute_FreeFall number
---@field EVehicleParachute_Opening number
---@field EVehicleParachute_Landed number
EVehicleParachuteState = {}


---@class ESTVehicleSupply
---@field EVehicleNone number
---@field EVehicleSupplying number
---@field EVehicleSupplyCD number
ESTVehicleSupply = {}


---@class EnumParticleParameterType
---@field EParticleParameter_Vector number
---@field EParticleParameter_Float number
---@field EParticleParameter_Max number
EnumParticleParameterType = {}


---FRepMovementVHFRR 网络复制写时的标识哪些字段需要序列化
---@class EVHFRRSerializeFlag
---@field EFRR_TARGETACTOR_NGUID number
---@field EFRR_LINEARVELOCITY number
---@field EFRR_ANGULARVELOCITY number
---@field EFRR_LOC number
---@field EFRR_ROT number
---@field EFRR_BREPPHYSICS_BSIMULATEDPHYSICSLEEP number
---@field EFRR_DSLASTUPDATETIMESTAMP number
---@field EFRR_REPEDSTATE number
---@field EFRR_TOTALEND number
---@field EFRR_NONE number
---@field EFRR_ALL number
EVHFRRSerializeFlag = {}


---@class EVehicleAudioEffectiveState
---@field VehicleAudioInactive number @未有声音播放
---@field OutsideEffectiveRange number @超出声音播放距离
---@field WithinEffectiveRange number @处于声音播放队列未尾
---@field TopInEffectiveRange number @处于声音播放队列開端
EVehicleAudioEffectiveState = {}


---@class FVehicleSimViewData
---@field ViewPitch number
---@field ViewYaw number
---@field ViewRoll number
---@field FreeCamera boolean
FVehicleSimViewData = {}


---@class FSTExtraVehicleSfxLoopBase
---@field MapRTPC ULuaMapHelper<number, number>
FSTExtraVehicleSfxLoopBase = {}


---@class FSiblingAvatarConfig
---@field MasterAvatarID number
---@field SlaveAvatarID number
---@field IsMasterActive boolean
FSiblingAvatarConfig = {}


---@class FHolographicEffectAudio
FHolographicEffectAudio = {}


---@class FVehicleSupplyStateData
---@field VehicleSupplyState ESTVehicleSupply
---@field fSupplyStartStamp number
---@field fCurSupplyEffectTime number
---@field fCurSupplyCDTime number
FVehicleSupplyStateData = {}


---@class FSTExtraVehicleSfxLoop
FSTExtraVehicleSfxLoop = {}


---@class FVehicleWindowData
---@field WindowBoneName string
---@field ControlSeatIndex number
---@field DefaultAnimLength number
---@field RealAnimLength number
---@field MaxHP number
---@field ShowCrackHP number
---@field WindowMatParamName string
---@field BreakEffectName string
---@field CurrentAnimTime number
---@field CurrentState ESTExtraVehicleWindowState
---@field WindowSfxLoop FSTExtraVehicleSfxLoop
---@field WindowAnimTrackIndex number
---@field WindowAnimUseRawData boolean
---@field WindowTransform FTransform
---@field ClientPendingClose boolean
FVehicleWindowData = {}


---@class FVehicleWindowState
---@field CurrentAnimTime number
---@field CurrentState ESTExtraVehicleWindowState
FVehicleWindowState = {}


---@class FParticleParameter
---@field Name string
---@field Value FVector
---@field Type EnumParticleParameterType
FParticleParameter = {}


---@class FParticleSoftWrapper
---@field Template UParticleSystem
---@field Location FVector
---@field Rotation FRotator
---@field Scale FVector
---@field AttachSocketName string
---@field ParticleDontUseAsyncTick boolean
---@field ParticleTickGroup ETickingGroup
---@field bAutoLoad boolean
---@field EffectParamName string
---@field DetachWhenDeactive boolean
---@field bHideWhilePlayerAimOrFPP boolean
---@field bHideWhileInSmoke boolean
---@field SetTranslucentSortPriority boolean
---@field TranslucentSortPriorityToSet number
---@field CurrentInitParameters ULuaArrayHelper<FParticleParameter>
FParticleSoftWrapper = {}


---@class FParticleSoftWrapperArray
---@field WrapperArray ULuaArrayHelper<FParticleSoftWrapper>
---@field bIsLogicalActive boolean
FParticleSoftWrapperArray = {}


---@class FVehBackpackItem
---@field ItemID number
---@field ItemCount number
FVehBackpackItem = {}


---@class FCarMusicConfigBlueprint
---@field MusicAsset FSoftObjectPath
---@field MusicProbability number
---@field MusicActivatedTime string
---@field MusicDeactivatedTime string
FCarMusicConfigBlueprint = {}


---@class FCarMusicConfig
---@field MusicAssetPath string
---@field MusicProbability number
---@field MusicActivatedTime FDateTime
---@field MusicDeactivatedTime FDateTime
FCarMusicConfig = {}


---@class FCollisionShapeWithTransformBP
---@field Shape FVehicleCollisionShapeBP
---@field bShapePoseLocal boolean
---@field ShapePose FTransform
FCollisionShapeWithTransformBP = {}


---@class FCarMusicWrapper
---@field AssetPath FSoftObjectPath
FCarMusicWrapper = {}


---@class FVehicleTorqueCurveFloat
---@field CurveTime number
FVehicleTorqueCurveFloat = {}


---@class FVehicleBoneShapePair
---@field BoneName string
---@field ShapeIndex number
---@field ShapeIndexArray ULuaArrayHelper<number>
---@field ShapeOffset FVector
FVehicleBoneShapePair = {}


---@class FVehicleHeadInfo
---@field SetHead boolean
---@field HeadVehicle ASTExtraVehicleBase
FVehicleHeadInfo = {}


---@class FVehicleTrailerInfo
---@field SetTrailer boolean
---@field VehicleTrailer ASTExtraTrailerVehicle
FVehicleTrailerInfo = {}


---@class FLocalSTReplicatedVehicleState
---@field SteeringInput number
---@field ThrottleInput number
---@field BrakeInput number
---@field HandbrakeInput number
---@field CurrentGear number
FLocalSTReplicatedVehicleState = {}


---@class FVehicleBackPackItem
---@field TypeSpecificID number
---@field Count number
FVehicleBackPackItem = {}


---@class FRepMovementVHFRR
---@field LinearVelocity FVector
---@field AngularVelocity FVector
---@field Location FVector
---@field Rotation FRotator
---@field bRepPhysics boolean
---@field bSimulatedPhysicSleep boolean
---@field SerializeMask number @Mark which property need serialization
---@field bHasSerializedWrite boolean
---@field ReplicatedServerLastTransformUpdateTimeStamp number
---@field LocationQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated location vector. You should only need to change this from the default if you see visual artifacts.
---@field VelocityQuantizationLevel EVectorQuantization @Allows tuning the compression level for the replicated velocity vectors. You should only need to change this from the default if you see visual artifacts.
---@field RotationQuantizationLevel ERotatorQuantization @Allows tuning the compression level for replicated rotation. You should only need to change this from the default if you see visual artifacts.
FRepMovementVHFRR = {}


---@class FVehicleWheelEffectWrapper
---@field WheelEffect ULuaArrayHelper<UParticleSystemComponent>
FVehicleWheelEffectWrapper = {}


---Struct to hold information about the "base" object the character is standing on.
---@class FVehicleBasedMovementInfo
---@field MovementBase UPrimitiveComponent @Component we are based on
---@field MovementBaseActor AActor
---@field Location FVector_NetQuantize100 @Location relative to MovementBase. Only valid if HasRelativeLocation() is true.
---@field Rotation FRotator @Rotation: relative to MovementBase if HasRelativeRotation() is true, absolute otherwise.
---@field LinearVelocity FVector
---@field AngularVelocity FVector
---@field bSimulatedPhysicSleep number @If set, RootComponent should be sleeping.
---@field bRepPhysics number @If set, additional physic data (angular velocity) will be replicated.
FVehicleBasedMovementInfo = {}


---@class FVehicleAttachToVehicleInfo
---@field Attached boolean
---@field VehicleAttachToSelf ASTExtraVehicleBase
FVehicleAttachToVehicleInfo = {}


---@class FVehicleFollowingVehicleInfo
---@field Following boolean
---@field VehicleFollowingSelf ASTExtraVehicleBase
FVehicleFollowingVehicleInfo = {}


---@class FVehicleMeshShapeWrapper
---@field ShapeIndex number
FVehicleMeshShapeWrapper = {}


---@class FHolographicEffectMaterialTargetValueWrapper
---@field TargetValue number
---@field SetTargetValueTime number
FHolographicEffectMaterialTargetValueWrapper = {}


---@class FVehicleShapePhysicsMaterialConfig
---@field ShapeIndex number
---@field UseConplexPhysicsMaterial boolean
---@field ComplexPhysicsMaterial ULuaArrayHelper<UPhysicalMaterial>
FVehicleShapePhysicsMaterialConfig = {}


---@class FVehicleEscalatorData
---@field EscalatorAcceleration number
---@field EscalatorDirection FVector
FVehicleEscalatorData = {}


---@class FVehicleBackPackItemInfo
---@field nHandleItemId number
---@field nItemNum number
FVehicleBackPackItemInfo = {}


---@class FVehicleAdditionalShowSocketConfig
---@field SocketName string
---@field SocketOffset FVector
---@field SocketRotator FRotator
---@field SocketScale FVector
FVehicleAdditionalShowSocketConfig = {}


---@class FVehicleAdditionalShowSocketConfigRule
---@field VehicleBackPackShowScoketConfig FVehicleAdditionalShowSocketConfig
---@field BackPackItemNum number
FVehicleAdditionalShowSocketConfigRule = {}


---@class FVehicleBackPackItemShowConfig
---@field VehicleBackPackShowScoketConfigRuleArr ULuaArrayHelper<FVehicleAdditionalShowSocketConfigRule>
---@field MeshPath UStaticMesh
FVehicleBackPackItemShowConfig = {}


---@class FVehicleAdditionalMeshShowConfig
---@field VehicleAdditionalShowMeshConfig FVehicleAdditionalShowSocketConfig
FVehicleAdditionalMeshShowConfig = {}


---@class FVehicleTakeDamageData
---@field DamageType number
---@field fWorldRealTime number
FVehicleTakeDamageData = {}


---@class FRepTrailerMovement
---@field HookPosition FVector_NetQuantize
---@field HookRot FVector_NetQuantizeNormal
---@field HookTargetPosition FVector_NetQuantize
---@field HookTargetRotator FVector_NetQuantizeNormal
---@field TrailerPosition FVector_NetQuantize
---@field TrailerRot FVector_NetQuantizeNormal
FRepTrailerMovement = {}


---@class FTrailerServerMoveDataInfo
---@field HookPosition FVector_NetQuantize
---@field HookRotator FVector_NetQuantizeNormal
---@field HookTargetPosition FVector_NetQuantize
---@field HookTargetRotator FVector_NetQuantizeNormal
---@field TrailerPosition FVector_NetQuantize
---@field ClientRotator FVector_NetQuantizeNormal
---@field ClientLinearVelocity FVector_NetQuantize100
---@field ClientAngularVelocity FVector_NetQuantize100
FTrailerServerMoveDataInfo = {}


---@class FVehicleRelativeLocationPenetratingInfo
---@field RelativeLocationPenetrating boolean
---@field FloorTransform FTransform
---@field VehicleRelativeTransform FTransform
FVehicleRelativeLocationPenetratingInfo = {}


---处理物理模拟之后 做一些操作  比如说轮胎印
---@class FVehiclePostPhysxTick
FVehiclePostPhysxTick = {}


---@class FVehicleCacheData
FVehicleCacheData = {}


---@class FVehicleOutLineAndOcclusionDataData
---@field fOutLineAndOcclusionThickness number
---@field bSameCampOutLineActive boolean
---@field bSameCampOcclusionActive boolean
---@field SameCampOutLineColor FColor
---@field SameCampOcclusionColor FColor
---@field bDifferentCampOutLineActive boolean
---@field bDifferentCampOcclusionActive boolean
---@field DifferentCampOutLineColor FColor
---@field DifferentCampOcclusionColor FColor
FVehicleOutLineAndOcclusionDataData = {}


---@class FVehicleAnimEvent : ULuaMulticastDelegate
FVehicleAnimEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, EventMsg: string) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAnimEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param EventMsg string
function FVehicleAnimEvent:Broadcast(EventMsg) end


---@class FVehicleAddBuff : ULuaMulticastDelegate
FVehicleAddBuff = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAddBuff:Add(Callback, Obj) end

---触发 Lua 广播
---@param ID number
function FVehicleAddBuff:Broadcast(ID) end


---@class FVehicleRemoveBuff : ULuaMulticastDelegate
FVehicleRemoveBuff = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleRemoveBuff:Add(Callback, Obj) end

---触发 Lua 广播
---@param ID number
function FVehicleRemoveBuff:Broadcast(ID) end


---@class FEnterVehicleEvent : ULuaMulticastDelegate
FEnterVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsSucc: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FEnterVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsSucc boolean
function FEnterVehicleEvent:Broadcast(IsSucc) end


---@class FVehicleHornEvent : ULuaMulticastDelegate
FVehicleHornEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bPlay: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleHornEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param bPlay boolean
function FVehicleHornEvent:Broadcast(bPlay) end


---@class FVehicleAvatarHandleEquipedDelegate : ULuaMulticastDelegate
FVehicleAvatarHandleEquipedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ItemHandle: UBattleItemHandleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAvatarHandleEquipedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param ItemHandle UBattleItemHandleBase
function FVehicleAvatarHandleEquipedDelegate:Broadcast(ItemHandle) end


---@class FCharacterRefreshMovementOnVehicleDelegate : ULuaMulticastDelegate
FCharacterRefreshMovementOnVehicleDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraBaseCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCharacterRefreshMovementOnVehicleDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraBaseCharacter
function FCharacterRefreshMovementOnVehicleDelegate:Broadcast(Character) end


---@class FVehicleExplosionDelegate : ULuaSingleDelegate
FVehicleExplosionDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleExplosionDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleExplosionDelegate:Execute() end


---@class FVehicleRideCheckFailDelegate : ULuaSingleDelegate
FVehicleRideCheckFailDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleRideCheckFailDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleRideCheckFailDelegate:Execute() end


---@class FExitVehicleAnimEvent : ULuaMulticastDelegate
FExitVehicleAnimEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InVehicle: ASTExtraVehicleBase, Player: ASTExtraPlayerCharacter, LeavePos: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FExitVehicleAnimEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param InVehicle ASTExtraVehicleBase
---@param Player ASTExtraPlayerCharacter
---@param LeavePos FVector
function FExitVehicleAnimEvent:Broadcast(InVehicle, Player, LeavePos) end


---@class FVehicleAttachToSelfVehicle : ULuaMulticastDelegate
FVehicleAttachToSelfVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, VehicleAttachToSelf: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAttachToSelfVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param VehicleAttachToSelf ASTExtraVehicleBase
function FVehicleAttachToSelfVehicle:Broadcast(Vehicle, VehicleAttachToSelf) end


---@class FVehicleDetachFromSelfVehicle : ULuaMulticastDelegate
FVehicleDetachFromSelfVehicle = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Vehicle: ASTExtraVehicleBase, LastAttachToSelf: ASTExtraVehicleBase) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDetachFromSelfVehicle:Add(Callback, Obj) end

---触发 Lua 广播
---@param Vehicle ASTExtraVehicleBase
---@param LastAttachToSelf ASTExtraVehicleBase
function FVehicleDetachFromSelfVehicle:Broadcast(Vehicle, LastAttachToSelf) end


---@class FVehicleScaleChanged : ULuaMulticastDelegate
FVehicleScaleChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, OldScale: number, NewScale: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleScaleChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param OldScale number
---@param NewScale number
function FVehicleScaleChanged:Broadcast(OldScale, NewScale) end


---@class FVehicleCampIdChangedDelegate : ULuaSingleDelegate
FVehicleCampIdChangedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleCampIdChangedDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleCampIdChangedDelegate:Execute() end


---@class FVehicleTickEndUpdateDelegate : ULuaSingleDelegate
FVehicleTickEndUpdateDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleTickEndUpdateDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleTickEndUpdateDelegate:Execute() end


---@class FVehicleAirdropStatusChangedDelegate : ULuaMulticastDelegate
FVehicleAirdropStatusChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsAirdroppingVehicle: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAirdropStatusChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsAirdroppingVehicle boolean
function FVehicleAirdropStatusChangedDelegate:Broadcast(bIsAirdroppingVehicle) end


---@class FVehiclePostLoadMeshDelegate : ULuaSingleDelegate
FVehiclePostLoadMeshDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehiclePostLoadMeshDelegate:Bind(Callback, Obj) end

---执行委托
function FVehiclePostLoadMeshDelegate:Execute() end


---@class FOnActiveParticlesChanged : ULuaSingleDelegate
FOnActiveParticlesChanged = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnActiveParticlesChanged:Bind(Callback, Obj) end

---执行委托
function FOnActiveParticlesChanged:Execute() end


---@class FOnClientEnterVehicleEvent : ULuaMulticastDelegate
FOnClientEnterVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, bSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientEnterVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function FOnClientEnterVehicleEvent:Broadcast(Character, SeatType, bSuccess) end


---@class FOnClientExitVehicleEvent : ULuaMulticastDelegate
FOnClientExitVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, bSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnClientExitVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function FOnClientExitVehicleEvent:Broadcast(Character, SeatType, bSuccess) end


---@class FOnServerEnterVehicleEvent : ULuaMulticastDelegate
FOnServerEnterVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, bSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnServerEnterVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function FOnServerEnterVehicleEvent:Broadcast(Character, SeatType, bSuccess) end


---@class FOnServerExitVehicleEvent : ULuaMulticastDelegate
FOnServerExitVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, bSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnServerExitVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function FOnServerExitVehicleEvent:Broadcast(Character, SeatType, bSuccess) end


---@class FClientEnterVehicleEvent : ULuaMulticastDelegate
FClientEnterVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientEnterVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
function FClientEnterVehicleEvent:Broadcast(Character, SeatType) end


---@class FClientExitVehicleEvent : ULuaMulticastDelegate
FClientExitVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientExitVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
function FClientExitVehicleEvent:Broadcast(Character, SeatType) end


---@class FClientChangeSeatEvent : ULuaMulticastDelegate
FClientChangeSeatEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, SeatIdx: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FClientChangeSeatEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function FClientChangeSeatEvent:Broadcast(Character, SeatType, SeatIdx) end


---@class FServerEnterVehicleEvent : ULuaMulticastDelegate
FServerEnterVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, bSuccess: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FServerEnterVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function FServerEnterVehicleEvent:Broadcast(Character, SeatType, bSuccess) end


---@class FServerExitVehicleEvent : ULuaMulticastDelegate
FServerExitVehicleEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FServerExitVehicleEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
function FServerExitVehicleEvent:Broadcast(Character) end


---@class FVehicleDestroyedDelegate : ULuaSingleDelegate
FVehicleDestroyedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleDestroyedDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleDestroyedDelegate:Execute() end


---@class FVehicleOnUpdateEffectsDelegate : ULuaMulticastDelegate
FVehicleOnUpdateEffectsDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaTime: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleOnUpdateEffectsDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaTime number
function FVehicleOnUpdateEffectsDelegate:Broadcast(DeltaTime) end


---@class FVehicleHealthStateChangedDelegate : ULuaMulticastDelegate
FVehicleHealthStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InVehicleHealthState: ESTExtraVehicleHealthState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleHealthStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param InVehicleHealthState ESTExtraVehicleHealthState
function FVehicleHealthStateChangedDelegate:Broadcast(InVehicleHealthState) end


---@class FVehicleSeatStateChangedDelegate : ULuaMulticastDelegate
FVehicleSeatStateChangedDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType, SeatIdx: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleSeatStateChangedDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function FVehicleSeatStateChangedDelegate:Broadcast(Character, SeatType, SeatIdx) end


---@class FVehicleChangeSeatDelegate : ULuaMulticastDelegate
FVehicleChangeSeatDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter, PreSeatType: ESTExtraVehicleSeatType, PreSeatIdx: number, SeatType: ESTExtraVehicleSeatType, SeatIdx: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleChangeSeatDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
---@param PreSeatType ESTExtraVehicleSeatType
---@param PreSeatIdx number
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function FVehicleChangeSeatDelegate:Broadcast(Character, PreSeatType, PreSeatIdx, SeatType, SeatIdx) end


---@class FVehicleExitOnServer : ULuaSingleDelegate
FVehicleExitOnServer = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleExitOnServer:Bind(Callback, Obj) end

---执行委托
function FVehicleExitOnServer:Execute() end


---@class FVehicleAvatarDataCopiedDelegate : ULuaSingleDelegate
FVehicleAvatarDataCopiedDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleAvatarDataCopiedDelegate:Bind(Callback, Obj) end

---执行委托
function FVehicleAvatarDataCopiedDelegate:Execute() end


---@class FAfterOverrideVehiclePhyX : ULuaSingleDelegate
FAfterOverrideVehiclePhyX = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAfterOverrideVehiclePhyX:Bind(Callback, Obj) end

---执行委托
function FAfterOverrideVehiclePhyX:Execute() end


---@class FVehicleLeanOutEvent : ULuaMulticastDelegate
FVehicleLeanOutEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsLeanOut: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleLeanOutEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsLeanOut boolean
function FVehicleLeanOutEvent:Broadcast(IsLeanOut) end


---@class FVehiclePreLeanOutEvent : ULuaMulticastDelegate
FVehiclePreLeanOutEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsLeanOut: boolean, Character: ASTExtraPlayerCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehiclePreLeanOutEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsLeanOut boolean
---@param Character ASTExtraPlayerCharacter
function FVehiclePreLeanOutEvent:Broadcast(IsLeanOut, Character) end


---@class FAvatarVehicleStateChanged : ULuaMulticastDelegate
FAvatarVehicleStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, InState: EAvatarVehicleState, IsAdd: boolean, Value: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FAvatarVehicleStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param InState EAvatarVehicleState
---@param IsAdd boolean
---@param Value number
function FAvatarVehicleStateChanged:Broadcast(InState, IsAdd, Value) end


---@class FVehicleEnterDelegate : ULuaMulticastDelegate
FVehicleEnterDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, IsSucc: boolean, Character: ASTExtraPlayerCharacter, SeatType: ESTExtraVehicleSeatType) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleEnterDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param IsSucc boolean
---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
function FVehicleEnterDelegate:Broadcast(IsSucc, Character, SeatType) end


---@class FVehicleExitDelegate : ULuaMulticastDelegate
FVehicleExitDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Character: ASTExtraPlayerCharacter) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleExitDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Character ASTExtraPlayerCharacter
function FVehicleExitDelegate:Broadcast(Character) end


---@class FVehicleTeamIDChanged : ULuaMulticastDelegate
FVehicleTeamIDChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewTeamID: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleTeamIDChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewTeamID number
function FVehicleTeamIDChanged:Broadcast(NewTeamID) end


---@class FVehicleParachuteStateChanged : ULuaMulticastDelegate
FVehicleParachuteStateChanged = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, NewVehicleParachuteState: EVehicleParachuteState) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FVehicleParachuteStateChanged:Add(Callback, Obj) end

---触发 Lua 广播
---@param NewVehicleParachuteState EVehicleParachuteState
function FVehicleParachuteStateChanged:Broadcast(NewVehicleParachuteState) end


---载具基类
---@class ASTExtraVehicleBase: APawn, IGeneratorVehicleInterface, IRegionObjectInterface, IDamageableInterface, ISeekAndLockOwnerInterface, IActorHiddenInterface, IFastRemoteReplicationTargetInterface, IRelativeMoveMgrInterface, IInteractorInterface, IAttrModifyInterface
---@field bIsLocalPlayerOnVehicle boolean
---@field bHasBeenCharacterDrive boolean
---@field DriverEnterVehicleRotation FRotator
---@field bApplyDamageImpulseOnClient boolean
---@field bUseCharacterInWaterState boolean
---@field bEnableDelayDestroyEffect boolean
---@field DelayDestroyEffectTime number
---@field bEnableBrokeBuilding boolean
---@field DestructableActorTag string
---@field bPassengerSpectatorUseWeaponYaw boolean
---@field MeshAlwaysTickPoseAndRefreshBones boolean
---@field UseBlueprintSetMeshComponentUpdateFlag boolean
---@field UpdateChildTransformsOnFinalizeAnimationUpdate boolean
---@field AutoEnterVehicle boolean
---@field VehicleSecondType ESTExtraVehicleType
---@field VehicleType ESTExtraVehicleType
---@field PS_Explosion UParticleSystem
---@field PS_OnHitObstacles UParticleSystem
---@field HitEffectInterval number
---@field HitSfxInterval number
---@field bPlayerUseVehicleNetRelevant boolean
---@field ResidentParticleAfterAvatarHandle ULuaArrayHelper<string>
---@field EngineStartedActiveParticle ULuaArrayHelper<string>
---@field PS_EngineStartEffect FParticleSoftWrapper
---@field ParticleSoftWrapperMap ULuaMapHelper<string, FParticleSoftWrapperArray>
---@field PendantParticleCache ULuaMapHelper<string, FParticleSoftWrapperArray>
---@field VehicleWheelIconType ESTExtraVehicleWheelIconType
---@field CameraDataType ECameraDataType
---@field ShowUpDownGUI boolean
---@field ShowHeightUI boolean
---@field ShowUAVUI boolean
---@field AdjustViewDistanceByHeight boolean
---@field AdjustViewDistanceBaseDist number
---@field AdjustViewDistanceBaseFactor number
---@field IsUnmannedVehicle boolean
---@field IsUAVVehicle boolean
---@field DisableGrainyScreen boolean
---@field bCanChangeSeatAccurately boolean
---@field bShowChangeSeatUI boolean
---@field ShowGrainyScreenMinDist number
---@field ImmuePassageDamage boolean
---@field PlayerWeaponPropReplaceKey string
---@field DriverSeatWeaponPropReplaceKey string
---@field FuelConsumptionModifierBoost number
---@field bCanBoostSpeed boolean
---@field bCanHandBrake boolean
---@field bCanUseHorn boolean
---@field bUseSyncAtClient boolean
---@field bUseCustomPostNetReceivePhysicState boolean
---@field bCheckOnGround boolean
---@field LanscapeCheckDistance number
---@field bLockZeroAngularDamping boolean @在模拟端无人载具强制同步后对旋转阻力进行提升
---@field LockZeroAngularDampingValue number @模拟端无人载具强制同步提升旋转阻力的值
---@field bProcessMultiRigidBodys boolean
---@field bBeginPlayRefreshBoneTransforms boolean
---@field bInvulnerableWhenHasRiders boolean
---@field MainMaterialIndex number
---@field MaintainItemCheckDistance number
---@field VehicleDisplayName string @载具显示名称
---@field AirDropVelocity FVector
---@field AirDropParachuteMesh UStaticMesh
---@field AirDropParachuteSocketName string
---@field bEnableEnterVehicleAuthorityCheck boolean
---@field bAllowDifferentTeam boolean
---@field ViewOffsetOfSpecialSeatsInFPP ULuaMapHelper<number, number>
---@field SupportMusicGame boolean
---@field MusicClientCompClass UMusicClientCompBase
---@field VehicleBackpack boolean
---@field BackpackCapacity number
---@field BackpackName string
---@field marr_MidIndexes ULuaArrayHelper<number> @使用了MID特效的材质Index
---@field EnterVehicleCameraBlendTime number
---@field ExitVehicleCameraBlendTime number
---@field ExitVehicleCameraBlendTime_FPP number
---@field ExitVehicleCameraLockOutGoing boolean
---@field NetCullingDistanceOnVeryLowDevice number
---@field voiceCheckCD number
---@field voiceCheckShowCD number
---@field voiceCheckDis number
---@field voiceCheckDisScaleNoDriver number
---@field voiceUsingHornCheckDis number
---@field voiceCheckSpeed number
---@field bEnableVehicleScopeFireASnycDirect boolean
---@field OnSeatAttached FVehicleSeatStateChangedDelegate
---@field OnSeatDetached FVehicleSeatStateChangedDelegate
---@field OnSeatChange FVehicleChangeSeatDelegate
---@field mb_ZeroLocked boolean @模拟端用 Note:服务端停止运动并且客户端已与服务端位置强同步
---@field PrintTickLogInServerAuthorizeStateInterval number
---@field CurPrintTickLogInServerAuthorizeStateElapse number
---@field bForceInServerAuthorizeTime number
---@field bDebugDrawEnterVehicle boolean
---@field PassengerInjuryAvoidance number
---@field VehicleHealthState ESTExtraVehicleHealthState
---@field VHS_SmokingThreshold number
---@field VHS_BurningThreshold number
---@field VHS_DestroyedThreshold number
---@field bIsEngineStarted boolean
---@field bIsEnableInputs boolean
---@field bRepopulateInputOnEnable boolean @是否在启用输入时衔接玩家之前的输入
---@field bIsUsingHorn boolean
---@field OnVehicleHornChangeEvent FVehicleHornEvent
---@field bIsBoosting boolean
---@field bIsVehicleSpringArmAutoReturn boolean
---@field BloodEffectScale FVector
---@field mb_IsSkelTicking boolean
---@field bNeedMeshNegativeTick boolean
---@field bRecentlyRenderedLast boolean
---@field mf_EnActiveTime number @<骨骼没有运动的时间
---@field EnActiveTimeThreshold number @<骨骼没有运动的时间阈值
---@field mb_IsFreezed boolean @<是否已经物理冻结
---@field FreezeNeedChangeVehiclePhysx boolean
---@field FreezeDisableTickVehicleSuspension boolean
---@field VehicleComps ULuaArrayHelper<UVehicleComponent>
---@field VehicleLowVelocitySleepThreshold number
---@field VehicleLowVelocityTime number
---@field CurVehicleLowVelocityTime number
---@field VehicleLowVelocityTickInterval number
---@field VehicleLowVelocityTickElapse number
---@field OpenVehicleLowVelocitySleepCheck boolean
---@field mb_IsSafeSpawnedNew boolean
---@field bCanVehiclePushUp boolean
---@field bVehiclePushUpUseSweep boolean
---@field VehiclePushUpZOffset number
---@field ConditionTickVehicleAnim boolean @现在这个变量主要是用在摩托上的支架功能上
---@field ForceTickVehicleAnimMaskPrivate number @是否强制更新载具动画
---@field bNeedStopCurSkill boolean @驾驶载具时是否要打断当前技能
---@field bNeedSwitchCurWeapon boolean @驾驶载具时是否要收起当前武器
---@field bCanVehiclePushUpToHorse boolean
---@field CustomSafeSpawnCheckHeight number
---@field VehicleHitThreshold number
---@field VehicleHitCharacterThreshold number
---@field bOpenHandShakeShowTail boolean
---@field bEnableFrontLight boolean
---@field CustomShouldTailLight boolean
---@field CurrentTailLightValue number
---@field TargetTailLightValue number
---@field TailLightOnValue number
---@field AndroidGLES2TailLightScale number
---@field EffectUpdateInterval number
---@field OnUpdateEffectsDelegate FVehicleOnUpdateEffectsDelegate
---@field VehicleBackpackItems ULuaArrayHelper<FVehBackpackItem>
---@field lastForwardSpeed number
---@field LastVehicleTransformAtTickEnd FTransform @上一帧的合法位置 在Tick末尾记录
---@field LastTickVehicleLinearVelocityAtTickEnd FVector
---@field LastTickVehicleAngularVelocityInDegreesAtTickEnd FVector
---@field OnClientEnterVehicleEvent FClientEnterVehicleEvent @使用座位事件Delegate
---@field OnClientExitVehicleEvent FClientExitVehicleEvent @离开座位事件Delegate
---@field OnClientEnterVehicleEventDelegate FOnClientEnterVehicleEvent @新的使用座位事件Delegate
---@field OnClientExitVehicleEventDelegate FOnClientExitVehicleEvent @新的离开座位事件Delegate
---@field OnClientChangeSeatEvent FClientChangeSeatEvent @换座位事件Delegate
---@field bStraighteningAngle boolean
---@field bEnableVehicleEnter boolean
---@field VehicleEnterDistance number
---@field TickEnterSphereInterval number
---@field EnterSphereExtraHeight number
---@field EnableTickEnterSphereAsyncLoadRes boolean
---@field AsyncLoadResDistance number
---@field TickEnterSphereAsyncLoadResInterval number
---@field TickEnterSphereVehicleBackpackInterval number @有载具背包功能的车，自动检测附近玩家，将背包数据rep给范围内玩家， 不包括在其他车上的玩家，只给车下人，以及自己车上的人
---@field GroupBackpackComp UGroupBackpackComp
---@field BackPackItemArray ULuaArrayHelper<FVehicleBackPackItem>
---@field VehicleBackPackItemShowRuleArray ULuaMapHelper<number, FVehicleBackPackItemShowConfig>
---@field VehicleAdditionalMeshShowConfigArray ULuaArrayHelper<FVehicleAdditionalMeshShowConfig>
---@field EnableCullWater boolean
---@field TickEnterCullWaterSphereInterval number
---@field EnterCullWaterDistanceSq number
---@field CullWaterCapsuleA FVector
---@field CullWaterCapsuleB FVector
---@field CullWaterCapsuleRadius number
---@field CullWaterCapsuleBlendWidth number
---@field bPeneTerrainProtectionEnabled boolean
---@field bPeneTerrainDetachEveryOne boolean
---@field bValidTransformUnderTerrainReport boolean
---@field ResetToLastTransformTlogID number
---@field UseTraceUpCheckTerrain boolean
---@field LastValidPosition FVector
---@field LastValidRotation FRotator
---@field CurPeneTerrainTotalTime number
---@field ServerResetLinearVelocityWhenPeneTerrain boolean
---@field PeneTerrainMaxTimeToResetPosition number
---@field MaxPeneTerrainDelayCounter number
---@field nValidTransfromUnderTerrainTimes number
---@field PeneTerrainProtectionInterval number
---@field SaveValidTransformInterval number
---@field PeneTerrainProtectionFixOffset FVector
---@field UnderTerrainTestPoints ULuaArrayHelper<FVector>
---@field UseTerrainTestPoint boolean
---@field PeneTerrainVelocityDamping number
---@field PeneTerrainDelayDisableCounter number
---@field SaveValidTransformInterval_2Stuck number
---@field SaveValidTransformIntervalDistSquared_2Stuck number
---@field bIsAirdroppingVehicle boolean
---@field SoundCompClass FSoftObjectPath
---@field OnVehicleAirdropStatusChangedDelegate FVehicleAirdropStatusChangedDelegate
---@field VehicleDopplerParam number
---@field EngineLoopNearWaterSurfaceDistanceThresholdSquared number
---@field EnableAKIDNormalImpulse boolean
---@field AKID_NormalImpulse_MaxAllow number
---@field AKID_NormalImpulse_Max number
---@field BlueprintEditCarMusicConfigs ULuaArrayHelper<FCarMusicConfigBlueprint>
---@field CarMusicConfigs_Table ULuaArrayHelper<FCarMusicConfig>
---@field OriginCarMusicConfigs_Table ULuaArrayHelper<FCarMusicConfig>
---@field CarMusicConfigs_Blueprint ULuaArrayHelper<FCarMusicConfig>
---@field LoadedMusic ULuaMapHelper<string, FCarMusicWrapper>
---@field bMusicLoops_UseTable boolean
---@field PlayMusicChance number @播放音乐的几率,<=0表示不播放
---@field TickCarMusicDistanceThresholdSquared number
---@field CurMusicIndex number @当前音乐索引
---@field FoundMusicIndex number @当前已经加载音乐索引
---@field FoundMusicPath FSoftObjectPath @当前已经加载音乐路径
---@field CustomUseTimeTickVehicleAudioInterval boolean
---@field TickVehicleAudioCheckTimeInterval number
---@field EngineSfxEndDelayTime number
---@field bAudioLogEnabled boolean
---@field HornLoopStopPreEvent boolean
---@field HornLoopFadeOutTime number
---@field EngineSfxLoop FSTExtraVehicleSfxLoop
---@field EngineNearWaterSurfaceSfxLoop FSTExtraVehicleSfxLoop
---@field FireSfxLoop FSTExtraVehicleSfxLoop
---@field HornSfxLoop FSTExtraVehicleSfxLoop
---@field MusicSfxLoop FSTExtraVehicleSfxLoop
---@field CommonTRPCSfxLoop FSTExtraVehicleSfxLoop
---@field SoundComponentLocationOffset FVector
---@field VehicleAudioEffectiveState EVehicleAudioEffectiveState
---@field bWantToKickOnAudio boolean
---@field bShouldMuteAudioInWater boolean
---@field bCanAudioBeCulled boolean
---@field RPMSfxScale number
---@field ThrottleSfxMinSpeed number
---@field TickVehicleAudioDistanceThreshold number
---@field bAudioMutedInWaterPreventMoving boolean
---@field OpenTickAuidoCheck boolean
---@field bLastNeedTickVehicleAudio boolean
---@field LastForceTickVehicleAudioFrame number
---@field NeedTickVehicleAudioInterval number
---@field NeedTickVehicleAudioElapse number
---@field CanPlayingAudioSpeedThreshold number
---@field CanPlayingEngineVehicleAudioDistanceThreshold number
---@field PlayThrottleSpeedThreshold number
---@field DamageableGameObjectTypeList ULuaArrayHelper<EDamageableGameObjectType>
---@field ReplicatedServerLastTransformUpdateTimeStamp number
---@field VehicleSyncTag ESTExtraVehicleSyncState
---@field SimulateViewData FVehicleSimViewData
---@field SimulateFreeCameraViewData FVehicleSimViewData
---@field bPreviousRotUseSpringArmPawnRot boolean
---@field VehicleEnjoyVoiceSkillHandleClass UVehicleEnjoyVoiceSkillHandle
---@field VehicleEnjoyVoiceSkill UVehicleEnjoyVoiceSkillHandle
---@field PendingEnjoyVoiceType ESTExtraVehicleEnjoyVoiceType
---@field PendingEnjoyVoiceIndex number
---@field PendingEnjoyVoiceMsgType ESTExtraVehicleEnjoyVoiceType
---@field PendingEnjoyVoiceMsgIndex number
---@field OnVehicleHealthStateChanged FVehicleHealthStateChangedDelegate
---@field VehicleHealthSmokeEffect string
---@field VehicleHealthFireEffect string
---@field VehicleHealthDestroyEffect string
---@field UGC_OnVehicleHealthStateChangedDelegate FVehicleHealthStateChangedDelegate @载具健康状态变化 生效范围 CS @param InVehicleHealthState 变化后的健康状态
---@field BeginplayShouldRecordLastNotInWater boolean
---@field LastNotInWater boolean
---@field bIsCharacterDriveVehicleLikePassenger boolean @司机位的角色是否可以像乘客位一样驾驶载具
---@field bIsPassengerSeatCanDrive boolean @乘客位是否可以驾驶载具
---@field bAlwaysIgnoreRideCheck boolean
---@field MinRideAngleDgree number
---@field OnVehicleRideCheckFail FVehicleRideCheckFailDelegate
---@field ForNoDriverBrake boolean
---@field TeamID number @队伍id，因为无人攻击机进入视野的时候， 驾驶者可能在视野外，未必有对象，获取teamid
---@field bCanUseSpeculativeCCD boolean
---@field bUseSpeculativeCCDOnServer boolean
---@field VehicleRadiusImulseScale number @<爆炸伤害时产生的冲量的缩放
---@field VehicleAdditionalBlowUp number @<爆炸伤害时额外给予的向上的冲量大小
---@field CustomVehicleNoSpaceTipsID number
---@field CustomVehicleCheckSeatFailTipsID number
---@field CapusleActiveState ULuaMapHelper<number, boolean>
---@field bNeedTickEnablePassenger boolean
---@field bUpdateCollisionShape boolean
---@field DistanceSqThreshold number
---@field AngularThreshold number
---@field BoneShapePairs ULuaArrayHelper<FVehicleBoneShapePair>
---@field bConvertPointToShapeIndex boolean
---@field bEnableStuckTip boolean
---@field ForwardStuckTipTime number
---@field BackwardStuckTipTime number
---@field InAirStuckTipTime number
---@field TotalStuckTipInterval number
---@field ForwardStuckTipInterval number
---@field BackwardStuckTipInterval number
---@field InAirStuckTipInterval number
---@field StuckTipVelocityThreshold number
---@field CurFrameDistanceToControllerFrameSquare number
---@field VehicleMass number
---@field bBuoyancyCompTickEnabled boolean @设置是否Tick载具浮力
---@field bTickTailLightEnabled boolean @设置是否Tick载具尾灯
---@field bResolvingStuckEnabled boolean
---@field bResolvingStuckEnabled_DrawDebug boolean
---@field bAntiStuckBoxNoWheel boolean
---@field bAntiStuckBoxNoRemove boolean
---@field StuckMinImpulse number
---@field ContinuousStuckInterval number
---@field ContinuousStuckTimeBeforeResoving number
---@field StuckResovingTime number
---@field ContinuousStuckTimer number
---@field StuckResovingTimer number
---@field TurnOverContinueTimeMax number
---@field TurnOverCheckIntervalTime number
---@field MinTurnOverAngleDgree number
---@field VehicleMiniStaticVelocity number
---@field IsTurnOver boolean
---@field TurnOverTimeContinue number
---@field bServerPrecentPenetratingEnabled boolean
---@field bServerPrecentPenetratingEnabled_RelativeLocationPenetrating boolean
---@field ServerPreventPenetratingInterval number
---@field ServerPreventPenetrating_DrawDebug boolean
---@field bUseSphereSweepToPreventPenetrating boolean
---@field SphereSweepToPreventPenetrating_SphereRadius ULuaArrayHelper<number>
---@field SphereSweepToPreventPenetrating_Offset ULuaArrayHelper<FVector>
---@field bClientPrecentPenetratingEnabled boolean
---@field bUseBoxOverlapToPreventPenetrating boolean
---@field BoxOverlapPreventPenetrating_BoxExtend ULuaArrayHelper<FVector>
---@field BoxOverlapPreventPenetrating_Offset ULuaArrayHelper<FVector>
---@field bServerSeatPreventPenetratingEnabled boolean
---@field bShouldCheckSeatPreventPenetratingWhenEnterVehicle boolean
---@field bEnableCustomPreventCenter boolean
---@field CustomPreventOffsetCenter FVector
---@field bServerClearLinearVelocityZEnabled boolean
---@field bServerClearLinearVelocityDamping number
---@field bServerPreventPenetratingSaveMultiValidPosition boolean
---@field ServerPreventPenetratingDistSquaredLimit number
---@field SavePreventPenetratingValidPositionLength number
---@field VehiclePullbackTimes number
---@field CheckPreventTimerAfterPullBack number
---@field LastPullBackTransform FTransform
---@field VehiclePullbackLogPrintTimes number
---@field PrintServerPullBackDiffThreshold number
---@field lastVehicleCenter FVector
---@field lastVehicleTrans FTransform
---@field bClientPenetrating boolean
---@field MaxCorrectBackDistance number
---@field MaxSaveClientValidTransform number
---@field MinValidTransformDistanceDiff number
---@field ClientPenetratingVelocityDamping number
---@field MaxClientPenetratingTimeInterval number
---@field ClientPenetratingContinueTime number
---@field MaxClientPenetratingContinueTimeToCorrect number
---@field ClientPenetratingTimeCounter number
---@field ClientPenetratingIgnoreChannel ULuaArrayHelper<ECollisionChannel>
---@field LastClientValidVehicleTransList ULuaArrayHelper<FTransform>
---@field lastVehicleCenter_RelativeLocationPenetrating FVector
---@field lastVehicleTrans_RelativeLocationPenetrating FTransform
---@field bServerCheckVehicleInWall boolean
---@field bVehicleInWallDetachEveryOne boolean
---@field MaxCheckVehicleInWallInterval number
---@field CheckVehicleInWallTimeCounter number
---@field CheckVehicleInWallTimes number
---@field MaxVehicleInWallTimesToPullBack number
---@field CheckVehicleInWallOffset FVector
---@field bUsePassengerLoc boolean
---@field LastValidTransformCheckVehicleInWall FTransform
---@field bShouldRespawnSelfWhenUnusable boolean
---@field RespawnWaitingTime number
---@field RespawnTickInterval number
---@field RespawnPositionSudoku FVector
---@field bDrawDebug boolean @是否启用调试绘制
---@field bEnableVehicleSpawnTransformCheck boolean
---@field RemoveVehicleBecauseDestoryWaitingTime number
---@field bEnableAntiCheat boolean @反作弊总开关
---@field VACTaskSetups ULuaArrayHelper<UVehicleAntiCheatTask>
---@field VACTasks ULuaArrayHelper<UVehicleAntiCheatTask>
---@field bIncludeParentVacInstancedTasks boolean
---@field VacInstancedTasks ULuaArrayHelper<UVehicleAntiCheatTask> @载具反外挂实例
---@field bEnableAntiCheatInBW boolean @BigWorld反作弊总开关
---@field VacInstancedTasksInBW ULuaArrayHelper<UVehicleAntiCheatTask> @载具反外挂实例， 大世界 特殊反外挂
---@field bEnableServerAuthorize boolean @是否允许在主控端优先时由服务器进行运动主导 明确玩家无法控制的情况下，服务器会主导运动
---@field bForceServerAuthorize boolean @是否强制在主控端优先时由服务器进行运动主导 明确玩家无法控制的情况下，服务器会主导运动
---@field bDelayForceServerAuthorize boolean @客户端载具创建后，beginplay开始，默认强制ds主控几秒，延迟后再关闭强制ds主控 明确玩家无法控制的情况下，服务器会主导运动
---@field DelayForceServerAuthorize_ClintEnterScene number
---@field DelayForceServerAuthorizeInterval_Long number
---@field DelayForceServerAuthorizeInterval number
---@field DSVehicleSpawnTimeThreshold number
---@field bEnableServerAuthorizeInRoomOnMotorbike boolean @是否允许在主控端优先时由服务器进行运动主导 明确玩家无法控制的情况下，服务器会主导运动 房间模式摩托是否做这个切换
---@field ShouldDoAirSwapCheck boolean
---@field AirSwapServerThres number @载具在浮空后切换主控优先的时间阈值，设置值为毫秒 只有在开启了DS接管时才有效 @see bEnableServerAuthorize 不配置时对于四轮载具，使用GVhWheeledAutoumousFlyTime进行时间阈值检查
---@field ShootVictimVerifyConfig FVehicleLagVerifyConfig @被射击的反外挂配置
---@field TeammateNumInCar ULuaMapHelper<number, number>
---@field VehiclePostLoadMeshDelegate FVehiclePostLoadMeshDelegate
---@field MeshAssetRef USkeletalMesh
---@field DynamicMatSlotName string
---@field bOnPlayerActiveRegionsChanged boolean
---@field bInActiveRegions boolean
---@field fTlogHitTimeInter number
---@field VehicleStateLogInterval number
---@field bLogVehicleStateOnServer boolean
---@field bLogVehicleStateOnClient boolean
---@field bEnableSkeletalMeshOptimizationDS boolean
---@field bForceDisableSkeletalMeshTickOnDS boolean
---@field bEnableLowFrequencyTick boolean
---@field LowFrequencyTickInterval number
---@field CurLowFrequencyTickElapse number
---@field SeekLockOffset FVector
---@field SeekLockSocket string
---@field ProduceSoundInterval number
---@field LeaveVehicleVelocity number @可以下车速度限制
---@field bNeedVehicleHandlePlayerLeaveRequest boolean @需要载具来处理角色下车请求
---@field bHasShowParticleVisibleByPlayerView boolean
---@field NeedCheckInSmokeGrenade boolean
---@field bCheckParticleInSmokeUseGameConcernObjFeature boolean
---@field ForceUpdateParticleVisibilityInterval number
---@field ForceUpdateParticleVisibilityTimer number
---@field VehicleAnimEventDelegate FVehicleAnimEvent
---@field VehicleExplosionDelegate FVehicleExplosionDelegate
---@field UGC_OnVehicleExplosionDelegate FVehicleExplosionDelegate @生效范围S 载具爆炸事件
---@field ExitVehicleAnimEventDelegate FExitVehicleAnimEvent
---@field VehicleItemDefinedID FItemDefineID
---@field ShowInGrenadeList boolean
---@field DSSpawnTime number
---@field DSDestroyedTime number
---@field bServerEnterVehicleDirectly boolean
---@field IsAvatarItemVehicle boolean
---@field IsActivityItemVehicle boolean
---@field ActivityItemId string
---@field bEnableExpiredWithoutHandle boolean
---@field ExpiredFuelCurveStartTime number
---@field bEnableExpiredTipsAfterTime boolean
---@field ExpiredTipsEnterNotifyTime number
---@field ExpiredTipsEnterNotifyID number
---@field ExpiredTipsTimeList ULuaArrayHelper<FVehicleExpiredTimeTipsConfig>
---@field LastCheckExpiredTipsTime number
---@field bUseExtraUI boolean
---@field bAsyncLoadExtraUI boolean
---@field bUseExtraUIOnlyForDriver boolean
---@field ExtraUIPath string
---@field bDriverEnableShootingUI boolean
---@field bDriverCanUseShortPistol boolean
---@field bEnableNewFPPLeanOutViewLimit boolean
---@field NewFPPLeanOutViewLimitMin number
---@field DriverUseWeaponFPPViewPitchLimitMin number
---@field DriverUseWeaponFPPViewPitchLimitMax number
---@field DriverUseWeaponFPPViewYawLimitMin number
---@field DriverUseWeaponFPPViewYawLimit number
---@field bDriverUseWeaponCopyLeftHand boolean
---@field DriverUsingWeaponDynamicGroupName string
---@field bEnableDriverUseWeaponShootYawLimit_TPP boolean
---@field bEnableDriverUseWeaponShootPitchLimit_TPP boolean
---@field bEnableNewFPPDriveVehicle boolean
---@field bEnableNewFPPInVehicle boolean
---@field bEnableAttachNewFPPSpringToTPPPose boolean
---@field NewFPPMeshBaseOffsetDriveVehicle FVector
---@field NewFPPMeshBaseOffsetInVehicle FVector
---@field VehicleRecoilKickADSPunish number
---@field VehicleGunKickPunish number
---@field bAlwaysForceExit boolean
---@field UseSpecificOperationUIMode number
---@field NeedCheckCustomMode boolean
---@field OnEnterVehicle FEnterVehicleEvent
---@field OnServerEnterVehicleEventDelegate FOnServerEnterVehicleEvent
---@field OnServerExitVehicleEventDelegate FOnServerExitVehicleEvent
---@field ServerEnterVehicleEventDelegate FServerEnterVehicleEvent
---@field ServerExitVehicleEventDelegate FServerExitVehicleEvent
---@field VehicleDestroyedEventDelegate FVehicleDestroyedDelegate
---@field OnActiveParticlesChanged FOnActiveParticlesChanged
---@field OnVehicleAvatarDataCopied FVehicleAvatarDataCopiedDelegate
---@field OnVehicleAvatarHandleEquiped FVehicleAvatarHandleEquipedDelegate
---@field AfterOverrideVehiclePhyX FAfterOverrideVehiclePhyX
---@field OnVehicleLeanOut FVehicleLeanOutEvent
---@field OnPreVehicleLeanOut FVehiclePreLeanOutEvent
---@field CantLeanOutUnderWaterHeight number
---@field OnAvatarVehicleStateChanged FAvatarVehicleStateChanged
---@field OnVehSkirtPoseType ESkirtPoseType
---@field UAVOperateState ESTExtraUAVVehicleOperateState @无人机 直升机摇杆操作模式***************
---@field SingleMoveRate number
---@field IsElectronicVehicle boolean
---@field ShowTips_Electronic_Failure_CD number
---@field OnVehicleAddBuff FVehicleAddBuff
---@field OnVehicleRemoveBuff FVehicleRemoveBuff
---@field VehicleStatesConfigClass FSoftObjectPath
---@field VehicleBloodMaxHpConfigClass FSoftObjectPath
---@field CurrentVehicleStatesData number
---@field EnableResetVehicleRootBodyData boolean
---@field TombBoxOnVehicle ULuaArrayHelper<APlayerTombBox>
---@field StandingVehiclePlayers ULuaArrayHelper<ASTExtraBaseCharacter>
---@field IsExploded boolean
---@field ExplodedTombBoxPlaceSocket string
---@field TombBoxTraceLength number
---@field PlayerOutAngleCosin number
---@field AddTagKeepMeshOffset boolean
---@field AddTagImpartedMovementBaseVelocityUpperLimit boolean
---@field AddTagUnUseLocalPosition boolean
---@field EnableWalkableVehicle boolean
---@field VehicleMeshWalkable boolean
---@field LinkedMeshWalkable boolean
---@field UseLocalPosition boolean
---@field MovebaseRelativeLocTrustClient boolean
---@field EnableWrapperAttach boolean
---@field AddTagCharacterAddAllDependency boolean
---@field AddTagCharacterForceToPostPhysics boolean
---@field AddTagDisableCameraLag boolean
---@field SetWalkingAfterExit boolean
---@field AddTagFallingHitDamageUseRelativeVelocity boolean
---@field AddTagNoVault boolean
---@field TlogConsiderRoofAsPassenger boolean
---@field bFrozenStatic boolean @不可被交互,当前不可被驾驶 不可被攻击 不可被移动 没有物理模拟
---@field bNeedFrozenStatic boolean @bFrozenStatic开关
---@field bEngineStatic boolean @可被交互,可被驾驶,可被攻击 不可被移动 没有物理模拟
---@field bIsPhysAwake boolean
---@field StandingOnVehiclePawns ULuaArrayHelper<APawn>
---@field bInHouseSpawn boolean
---@field CLientSleepVehicleTolerance number
---@field StaticFixAngel number @角度偏差修正的阈值
---@field ClientAwakeVehicleTolerance number
---@field SleepVehicleTickTime number
---@field NetUpdateFrequencyInWaterDeactive number
---@field ServerInitForceSleepPhysicsDelay number @Server初始物理休眠延迟 都改默认延迟6s， 安全保障地图加载完毕
---@field ClientInitForceSleepPhysicsDelay number @Client初始物理休眠延迟
---@field DelaySetPhysActiveTimer number
---@field bDelaySetPhysActiveValue boolean
---@field bEnableSafeSleepVehicle boolean
---@field bDontProcessSafeSleepVehicle boolean
---@field UseSetPhysActiveTimer boolean
---@field EnableClientFallOutOfWorld boolean @是否开启客户端掉落在世界之外的处理
---@field PendingVehicleSkinID number
---@field VehicleSkinID number
---@field PreVehicleSkinID number
---@field RealVehicleSkinID number
---@field PreRealVehicleSkinID number
---@field SiblingAvatarConfig FSiblingAvatarConfig
---@field LastReqChangeVehicleSkinTime number
---@field LastReqChangeVehicleSkinPlayerKey number
---@field TickControlledFrequency number
---@field bRuntimeEnableTickControl boolean
---@field bEnableSpringArmDeActive boolean
---@field bUpdatePhysicsVolumeImmediately boolean
---@field OnVehicleEnterDelegate FVehicleEnterDelegate
---@field OnVehicleExitDelegate FVehicleExitDelegate
---@field OnVehicleHPChangedDelegate FVehicleHPChangedDelegate
---@field PassVehicleDamageInfoOnClientDelegate FVehicleDamageInfoDelegate
---@field ClientVehicleDamageEffectDelegate FClientVehicleDamageEffectDelegate
---@field OnVehicleWheelsHPChangedDelegate FVehicleWheelsHPChangedDelegate
---@field DamageBoxes ULuaArrayHelper<UVehiclePartDamageBox>
---@field TestRecord_RecordInterval number
---@field LastServerPeneTerrainProtectionRecordTime number
---@field ServerPeneTerrainProtectionBeginTime number
---@field ServerPeneTerrainProtectionTLogCheckInterval number
---@field ServerPeneTerrainProtectionMaxCountDuringInterval number
---@field LastReportPeneTerrainLoc FVector
---@field ReportLocValidDistance number
---@field LastServerPreventPenetratingRecordTime number
---@field ServerPreventPenetratingBeginTime number
---@field ServerPreventPenetratingTLogCheckInterval number
---@field ServerPreventPenetratingMaxCountDuringInterval number
---@field LastReportPreventPenetratingLoc FVector
---@field OnVehicleCampIdChanged FVehicleCampIdChangedDelegate
---@field LockedVehicleStatus ESTExtraLockedVehicleStatus
---@field AssignDriverPlayerKey number
---@field strAssignDriverUid string
---@field AssignCampId number
---@field IsCanDriverAssignVehicle boolean
---@field ChangeDriverSeatFailMsgID number
---@field VehicleCanPickUpConfig boolean
---@field VehiclePickUpItemID number
---@field UseCameraSteerInFPP boolean
---@field IgnorePlayerPunch boolean
---@field FPPNotLerp boolean
---@field CharacterMeshClipDatas ULuaArrayHelper<FCharacterMeshClipData>
---@field CharacterMeshClipDatas_CacheFrameNumber number
---@field CharacterMeshClipDatas_FrameCache ULuaArrayHelper<FCharacterMeshClipData>
---@field VehicleUID number
---@field VehicleCreateType EVehicleCreateType
---@field VehicleConfigID number
---@field bEnablePostTick boolean
---@field PostPhysXTick FVehiclePostPhysxTick
---@field bEnableSpeedLimit boolean
---@field OverSpeedTime number
---@field bDriverAniTimerReferenceVehicleWheelAngel boolean
---@field bMeshMustNeedUpdateChildTransforms boolean
---@field UseNewHitEvent boolean
---@field ConsiderCharacterFloor boolean
---@field NewHitDepthThreshold number
---@field NewEventHitRes ULuaMapHelper<AActor, FHitResult>
---@field AlreadyHitActors ULuaArrayHelper<AActor>
---@field LastDriverPlayerKey number
---@field DriverLeaveVelocity number
---@field ControllerPlayerKey number
---@field bOpenInVirtualControlMode boolean
---@field ControllerPlayerMaxTimeInVirtualControlMode number
---@field bEnableCrouchExitVehicle boolean
---@field bIsLandscapeReady boolean
---@field LandscapeCheckTime number
---@field CheckLandBoxExtent FVector
---@field LandscapeLostPosition FVector @地形未加载好帧的位置，缓存用于矫正
---@field CurVehicleInAirBigWorldTime number
---@field VehicleInAirBigWorldRollThreshold number
---@field CurVehicleInAirBigWorldTimeLogThreshold number
---@field BisUseCompReplicatorOpt boolean
---@field WheelEffectPool ULuaMapHelper<UParticleSystem, FVehicleWheelEffectWrapper>
---@field EnableWheelEffectTick boolean
---@field WheelEffectUpdateInterval number
---@field WheelEffectUpdateVehicleVelocitySquardedEngineStop number
---@field TickWheelEffectDistanceThresholdSquared number
---@field WheelEffectLifeTime number
---@field CheckWheelEffectPoolInterval number
---@field bCanBeFollowedByHorse boolean
---@field EnableCruiseControl boolean
---@field CruiseControl_AlwaysShowUI boolean
---@field EnableCruiseControlInterval number
---@field StartCruiseControl_MiniSpeed number
---@field StopCruiseControl_MiniSpeed number
---@field StopSpeedCruiseControlInterval number
---@field ModifiedCruiseControl_MoveForwardRate number
---@field StartCruiseControl_MoveForwardRate number
---@field StopCruiseControl_MoveForwardRate number
---@field StopCruiseControl_HandBrakeRate number
---@field CruiseControlState ESTExtraVehicleCruiseControlState
---@field EnableTickVehicleSafeAwakeInDS boolean
---@field fCheckSafeAwakeVehicleTimer number
---@field fCheckSafeAwakeDistanceSqrt number
---@field CheckMobilePlatformActorZ number
---@field CheckMobilePlatformTeleport FVector
---@field CheckMobilePlatformTag string
---@field bPassThroughMobilePlatform boolean
---@field EnableReplicatedBaseMovement boolean
---@field EnableCppOnRepImpl boolean
---@field VehicleReplicatedBasedMovement any
---@field ShouldForceCallOnRepReplicatedMovement boolean
---@field bResetSmartCameraWhenSetViewtarget boolean
---@field bResetInputExtraRotWhenSetViewtarget boolean
---@field bIsPreviousUsingLagWhenSetViewtarget boolean
---@field CanBeAttachedByOtherVehicle boolean
---@field VehicleAttachToSelfInfo FVehicleAttachToVehicleInfo
---@field AttachedCameraData FCameraOffsetData
---@field PassengerAttachedCameraDataOffsetType ECameraDataType
---@field AttachedToVehicleShapes ULuaArrayHelper<FVehicleMeshShapeWrapper>
---@field LastFrameAttachToVehicleShapesTransform FTransform
---@field HaveTryToFindAttachToVehicleComp boolean
---@field OnVehicleAttachToSelfVehicle FVehicleAttachToSelfVehicle
---@field OnVehicleDetachFromSelfVehicle FVehicleDetachFromSelfVehicle
---@field LastVehicleAttachToSelf ASTExtraVehicleBase
---@field MaxHPBeforeAttach number
---@field HPBeforeAttach number
---@field CanBeFollowedByOtherVehicle boolean
---@field VehicleFollowingVehicleInfo FVehicleFollowingVehicleInfo
---@field HaveTryToFindFollowVehicleComp boolean
---@field bUpdateLastVehicleLocation boolean
---@field DisableCharacterParticleNamesOnVehicle ULuaArrayHelper<string>
---@field VehicleWindows ULuaArrayHelper<FVehicleWindowData>
---@field WindowMatSlotNames ULuaArrayHelper<string>
---@field bClientUpdateWindowWithNoAnim boolean
---@field BulletHitRootBodyWindow boolean
---@field WindowRootBoneName string
---@field ReplicatedWindowsState ULuaArrayHelper<FVehicleWindowState>
---@field bClientWindowTransformDirty boolean
---@field HidePositionUITime number
---@field OnCharacterRefreshMovementOnVehicleDelegate FCharacterRefreshMovementOnVehicleDelegate
---@field bUseOverideAxisInput boolean
---@field bCustomizeLeaveVehicleInput boolean
---@field ActionNames ULuaArrayHelper<string>
---@field VehicleSkinActionNames ULuaArrayHelper<string>
---@field UseArmedVehicleUI boolean
---@field VehicleParachuteState EVehicleParachuteState
---@field VehicleParachuteStateChangedDelegate FVehicleParachuteStateChanged
---@field VehicleTeamIDChangedDelegate FVehicleTeamIDChanged
---@field VehicleSwappingSiblingAvatarCD number
---@field VehicleSwappingSiblingAvatarCurCD number
---@field VehicleSwappingSiblingAvatarInCDTimeStamp number
---@field VehicleSwappingSiblingAvatarUIText string
---@field VehicleSwappingSiblingAvatarMasterAvatarBrush FSlateBrush
---@field VehicleSwappingSiblingAvatarSlaveAvatarBrush FSlateBrush
---@field VehicleSwappingSiblingAvatarMasterAvatarBrush_PC FSlateBrush
---@field VehicleSwappingSiblingAvatarSlaveAvatarBrush_PC FSlateBrush
---@field bEnableVehicleShowHolographicEffect boolean
---@field VehicleShowHolographicEffectCD number
---@field VehicleShowHolographicEffectCurCD number
---@field VehicleShowHolographicEffectInCDTimeStamp number
---@field VehicleShowHolographicEffectAudioMap ULuaMapHelper<string, FHolographicEffectAudio>
---@field VehicleShowHolographicEffectAvatarSlotID EAvatarSlotType
---@field VehicleShowHolographicEffectUIText string
---@field VehicleShowHolographicEffectBtnStyle FButtonStyle
---@field VehicleShowHolographicEffectBtnStyle_PC FButtonStyle
---@field CurHolographicEffectParticleName string
---@field bEnableVehicleDissolveEffect boolean
---@field HolographicEffectMaterialTargetValueWrapper FHolographicEffectMaterialTargetValueWrapper
---@field PlayHolographicEffectMaterialChangeTimeThreshold number
---@field HolographicEffectMaterialChangeRate number
---@field ShouldPlayHolographicEffectMaterialChange boolean
---@field bEnableVehicleShowDynamicPendant boolean
---@field VehicleShowDynamicPendantCD number
---@field VehicleShowDynamicPendantCurCD number
---@field VehicleShowDynamicPendantInCDTimeStamp number
---@field ClientShowDynamicPendantDistanceThresholdSquared number
---@field ShouldResetPendantAnim boolean
---@field bIsInterferingWithLocking boolean
---@field bUpdateIdleMoveParticle boolean
---@field UpdateMoveParticleSpeed number
---@field bNeedDownTraceCheckTag boolean
---@field DontShowBtnVehicleBaseTag string
---@field VehicleDownTraceBoxSize FVector
---@field fVehicleDownTraceLength number
---@field bVehicleCanCarryPawnTo boolean
---@field HitPhysMatType EPhysicalSurface
---@field VehicleSupplyData FVehicleSupplyStateData
---@field Sfx_VehicleSupplying UAkAudioEvent
---@field fCurRecoverPencent number
---@field fCurSupplyCD number
---@field fCurSupplyDisSquLimit number
---@field VehicleShapeCustomPhysicsMaterialConfigs ULuaArrayHelper<FVehicleShapePhysicsMaterialConfig>
---@field TimeToCloseEffectAndAudio number
---@field bEnableTickCloseEffectAudioAfterDestroy boolean
---@field bCloseAllEffectAndAudioAfterVehicleDestroy boolean
---@field EnableNegativeTickVehicleShootWeapon boolean @是否需要手动为已经休眠的车载武器降频(功能开关）
---@field bEnableGyroInputs boolean
---@field VehicleEscalatorData FVehicleEscalatorData
---@field bEnableVehicleEscalatorInteraction boolean
---@field VehicleCollisionShapeScaleFactor number
---@field RecordVehicleDamageInfoMap ULuaMapHelper<number, FVehicleTakeDamageData>
---@field CommonComponent_Fuel number
---@field TriggerDeformDistanceOffset number
---@field bEnableVehicleTriggerBox boolean
---@field VehicleTriggerCheckInterval number
---@field bEnableBrokeDestructableThing boolean
---@field VehicleHardness number
---@field ConstHitImpulse number
---@field VehicleHitDestructableSpeedLimit number
---@field ReplicatedVehicleOutData FVehicleOutLineAndOcclusionDataData
---@field EnableVehicleCampOutLineAndOcclusion boolean
---@field VehicleCampOutLineData FVehicleOutLineAndOcclusionDataData
---@field OnVehicleTickEndUpdateDelegate FVehicleTickEndUpdateDelegate
---@field CanHookATrailer boolean
---@field CustomTrailerInteractionUpdateUIMsg string
---@field HookPointOffset FVector
---@field VehicleHeadInfo FVehicleHeadInfo
---@field VehicleTrailerInfo FVehicleTrailerInfo
---@field HeadVehicleHookName string
---@field HeadVehicleHookSocketRelTransform FTransform
---@field bSendChangeVehicleAvatarLog boolean
---@field bIsRepairingByRepairBox boolean
---@field InteractorObjectPath string
---@field HasExtraInteractor boolean
---@field AvatarDynamicLoadWeaponAnimGroupSuffixName string
---@field ForceEnableMovablePlatformAdapterGameModeIDs ULuaArrayHelper<string>
---@field ComputeFloorTraceLength number
---@field ComputeFloorFrequencyOnDynamicBase number
---@field ComputeFloorFrequencyOnStaticBase number
---@field bOpenNewComputeDynamicFloor boolean
---@field fCurComputeFloorTimer number
---@field bOnDynamicBase boolean
---@field CurBaseVelocity FVector
---@field bCanMoveNoFuel boolean
---@field bUGCRTEVehicle boolean
---@field CachedUGCVehicleInterface IUGCVehicleInterface
---@field OnVehicleScaleChanged FVehicleScaleChanged
---@field bEnableVehicleOpenDoor boolean
---@field bEnableVehiclePickUpItem boolean
---@field VehicleCanPickUpItemList ULuaArrayHelper<number>
---@field bInitServerPrecentPenetratingEnabled boolean
---@field CurrentActiveVehicleAvatarSkill ULuaArrayHelper<string>
---@field ShouldUpdateDustParticle boolean
---@field UpdateDustParticleParamStratagy number
---@field UpdateDustParticleParam_ForwardWhenLowLinearSpeed boolean
---@field UpdateDustParticleParam_ForwardWhenLowLinearSpeedThreshold number
---@field ShouldDustFxSpawnWithVehicleRotation boolean
---@field DustFxSpawnWithVehicleRotationStratagy number
---@field DustFxSpawnWithVehicleRotation_ForwardWhenLowLinearSpeed boolean
---@field DustFxSpawnWithVehicleRotation_ForwardWhenLowLinearSpeedThreshold number
---@field VehicleIgnoredActors ULuaArrayHelper<AActor>
---@field VehicleAIControlTargetForward FVector
---@field bSetVehicleAIControlTargetForward boolean
---@field fMinDegreesVehicleForwardAndAITargetForward number
---@field bVehicleClientHiddenInGameAndNoCollisionForever boolean
---@field CanOpenParachuteHeight number
---@field ForceOpenParachuteHeight number
---@field CloseParachuteHeight number
---@field bEnterParachuteOpenDirectly boolean
---@field GeneralCampID number
local ASTExtraVehicleBase = {}

---@return boolean
function ASTExtraVehicleBase:IsLocalPlayerOnVehicle() end

---@return boolean
function ASTExtraVehicleBase:ShouldShowEngineStartEffect() end

---@return number
function ASTExtraVehicleBase:GetFuelConsumptionModifierBoost() end

---@param InFuelConsumptionModifierBoost number
function ASTExtraVehicleBase:SetFuelConsumptionModifierBoost(InFuelConsumptionModifierBoost) end

---@return boolean
function ASTExtraVehicleBase:GetCanBoostSpeed() end

---@param CanBoostSpeed boolean
function ASTExtraVehicleBase:SetCanBoostSpeed(CanBoostSpeed) end

---@return boolean
function ASTExtraVehicleBase:GetCanUseVehicleBackpack() end

---@param InVehicleBackpack boolean
function ASTExtraVehicleBase:SetCanUseVehicleBackpack(InVehicleBackpack) end

---@return boolean
function ASTExtraVehicleBase:HasVehicleBegunPlay() end

---@param Character ASTExtraBaseCharacter
---@param bGetBySocket boolean
---@return boolean
function ASTExtraVehicleBase:IsPlayerInVehicle(Character, bGetBySocket) end

---@param DeltaTime number
function ASTExtraVehicleBase:PrintTickLogInServerAuthorizeState(DeltaTime) end

---@param AddTime number
---@param Reason string
---@return number
function ASTExtraVehicleBase:AddForceInServerAuthorizeTime(AddTime, Reason) end

---@param DeltaTime number
function ASTExtraVehicleBase:DecreaseForceInServerAuthorizeTime(DeltaTime) end

---是否处于服务器主导状态 新版本的查询函数，使用console开关切换
---@return boolean
function ASTExtraVehicleBase:IsInServerAuthorizeNew() end

---<设置Spawn的位置是否安全
---@param ab_IsSafeSpawn boolean
function ASTExtraVehicleBase:SetSafeSpawn(ab_IsSafeSpawn) end

---@param ab_IsSafeSpawnNew boolean
function ASTExtraVehicleBase:SetSafeSpawnNew(ab_IsSafeSpawnNew) end

---@param type number
function ASTExtraVehicleBase:SetVehcileCreateType(type) end

---@return ESTExtraVehicleBaseType
function ASTExtraVehicleBase:GetVehicleBaseType() end

---@return boolean
function ASTExtraVehicleBase:IsMotorbike() end

---@return boolean
function ASTExtraVehicleBase:IsMotorglider() end

---@return boolean
function ASTExtraVehicleBase:IsHelicopter() end

---@return boolean
function ASTExtraVehicleBase:IsSnowboard() end

---@return boolean
function ASTExtraVehicleBase:IsAmphibiousVehicle() end

---@return boolean
function ASTExtraVehicleBase:CanVehicleJump() end

function ASTExtraVehicleBase:VehicleJump() end

---调试输出用
function ASTExtraVehicleBase:PrintStats() end

function ASTExtraVehicleBase:RecordFinalInputRate() end

function ASTExtraVehicleBase:OnRep_bIsEnableInputs() end

function ASTExtraVehicleBase:OnRep_bIsUsingHorn() end

---@param DeltaTime number
---@return boolean
function ASTExtraVehicleBase:BPShouldSkeleMeshTick(DeltaTime) end

---@param bEnable boolean
function ASTExtraVehicleBase:EnableSkeletalMeshComponentTick_DS(bEnable) end

---@param bEnable boolean
function ASTExtraVehicleBase:EnableSkeletalMeshComponentAndChildCompTick_Client(bEnable) end

---@param bForceTick boolean
---@param ForceTickAnimMask EVehicleForceTickAnimMask
function ASTExtraVehicleBase:SetVehicleForceTickAnimMask(bForceTick, ForceTickAnimMask) end

---@return boolean
function ASTExtraVehicleBase:GetShouldForceTickVehicleAnimByMask() end

---@param TickMask EVehicleForceTickAnimMask
---@return boolean
function ASTExtraVehicleBase:IsMaskHidden(TickMask) end

---@param OriginName string
---@param ConsiderInWater boolean
function ASTExtraVehicleBase:OnUpdateExhaustEffet(OriginName, ConsiderInWater) end

---@param OriginName string
---@return string
function ASTExtraVehicleBase:GetExhaustEffectName(OriginName) end

---@return number
function ASTExtraVehicleBase:GetDistanceChangeInFrame() end

function ASTExtraVehicleBase:OnFreezeVehicleEvent() end

---@param benable boolean
function ASTExtraVehicleBase:SetDontDamage(benable) end

---@param benable boolean
function ASTExtraVehicleBase:SetDontConsumeFuel(benable) end

---@param benable boolean
function ASTExtraVehicleBase:SetEnableVehicleEnter(benable) end

---@param CollisonFlag boolean
---@param QueryFlag boolean
function ASTExtraVehicleBase:DisableMeshAllShapeFlag(CollisonFlag, QueryFlag) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function ASTExtraVehicleBase:HandleOnSeatAttached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param SeatIdx number
function ASTExtraVehicleBase:HandleOnSeatDetached(Character, SeatType, SeatIdx) end

---@param Character ASTExtraPlayerCharacter
---@param LastSeatType ESTExtraVehicleSeatType
---@param LastSeatIdx number
---@param NewSeatType ESTExtraVehicleSeatType
---@param NewSeatIdx number
function ASTExtraVehicleBase:HandleOnSeatChanged(Character, LastSeatType, LastSeatIdx, NewSeatType, NewSeatIdx) end

---@param InVehicleHealthState ESTExtraVehicleHealthState
function ASTExtraVehicleBase:HandleOnVehicleHealthStateChanged(InVehicleHealthState) end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraVehicleBase:HandleOnMeshHit(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---@param HitComponent UPrimitiveComponent
---@param OtherActor AActor
---@param OtherComp UPrimitiveComponent
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraVehicleBase:HandleOnHitDestructibleBuilding(HitComponent, OtherActor, OtherComp, NormalImpulse, Hit) end

---@param ItemList ULuaArrayHelper<FPickUpItemData>
function ASTExtraVehicleBase:SpawnItemForVehicleBackpack(ItemList) end

function ASTExtraVehicleBase:OnRep_BackPackItemData() end

function ASTExtraVehicleBase:RefreshBackPackItemData() end

function ASTExtraVehicleBase:RecordValidTransform() end

---@param CheatLoc FVector
---@param CheatCenter FVector
---@param CheatValidPos FVector
function ASTExtraVehicleBase:GMTestPeneTerrainProtection(CheatLoc, CheatCenter, CheatValidPos) end

function ASTExtraVehicleBase:GMTestPeneTerrainProtectionAndPreventPenetrating() end

---@param CheatLoc FVector
---@param CheatCenter FVector
function ASTExtraVehicleBase:GMTestServerPreventPenetrating(CheatLoc, CheatCenter) end

---@param Impluse FVector
function ASTExtraVehicleBase:GMTestAddImpluse(Impluse) end

---@param X number
---@param Y number
---@param Z number
function ASTExtraVehicleBase:GMTestSetPhysicsAngularVelocity(X, Y, Z) end

---@param force FVector
function ASTExtraVehicleBase:GMTestAddForce(force) end

---@return boolean
function ASTExtraVehicleBase:ResetToLastValidTransform_2Stuck() end

---@param PlayerKey number
function ASTExtraVehicleBase:ServerResetToLastValidTransform(PlayerKey) end

function ASTExtraVehicleBase:OnRep_IsAirdroppingVehicle() end

function ASTExtraVehicleBase:OnRep_VehicleSoundComp() end

---@param LoadClass FSoftObjectPath
function ASTExtraVehicleBase:OnClassLoad_VehicleSoundComp(LoadClass) end

function ASTExtraVehicleBase:LoadEngineLoopNearWaterSurfaceSfx() end

---@param NewMusicIndex number
function ASTExtraVehicleBase:SetCurMusicIndex(NewMusicIndex) end

function ASTExtraVehicleBase:OnRep_CurMusicIndex() end

function ASTExtraVehicleBase:RefreshCarMusicConfigs() end

---@param id number
function ASTExtraVehicleBase:PlayCarMusicByIndex(id) end

function ASTExtraVehicleBase:StopCarMusic() end

---@param id number
function ASTExtraVehicleBase:CallPlayCarMusicByIndex(id) end

function ASTExtraVehicleBase:CallStopCarMusic() end

---@param NewState EVehicleAudioEffectiveState
function ASTExtraVehicleBase:SetVehicleAudioEffectiveState(NewState) end

---@return boolean
function ASTExtraVehicleBase:TryPlayingAudioEvent() end

---@param DeltaTime number
---@return boolean
function ASTExtraVehicleBase:NeedTickVehicleAudio(DeltaTime) end

function ASTExtraVehicleBase:MuteVehicleAudio() end

---@param DeltaTime number
function ASTExtraVehicleBase:BlueprintTickVehicleAudio(DeltaTime) end

---@param inVehicleSyncTag ESTExtraVehicleSyncState
function ASTExtraVehicleBase:SetVehicleSyncTag(inVehicleSyncTag) end

---@return ESTExtraVehicleSyncState
function ASTExtraVehicleBase:GetVehicleSyncTag() end

---同步标签变更
function ASTExtraVehicleBase:OnRep_VehicleSyncFlag() end

---@param InRotation FRotator
---@param FreeCamera boolean
function ASTExtraVehicleBase:SetSimulateViewData(InRotation, FreeCamera) end

function ASTExtraVehicleBase:OnRep_SimulateViewData() end

---@param InRotation FRotator
---@param FreeCamera boolean
function ASTExtraVehicleBase:SetSimulateFreeCameraViewData(InRotation, FreeCamera) end

function ASTExtraVehicleBase:OnRep_SimulateFreeCameraViewData() end

function ASTExtraVehicleBase:SendClient_ForceUpdate_ControlRotationOnVehicle_SimulateViewData() end

---@param AkEvent UAkAudioEvent
function ASTExtraVehicleBase:PlaySfxOneShot(AkEvent) end

---@param bActive boolean
function ASTExtraVehicleBase:SetActiveSpringArm(bActive) end

---@param Damage number
---@param DamageEvent FDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraVehicleBase:TakeDamage(Damage, DamageEvent, EventInstigator, DamageCauser) end

function ASTExtraVehicleBase:OnSetupPlayerInputComponentBP() end

---@param ActionNames ULuaArrayHelper<string>
function ASTExtraVehicleBase:RegisterVehicleActionNames(ActionNames) end

function ASTExtraVehicleBase:StartVehicleBrake() end

function ASTExtraVehicleBase:StopVehicleBrake() end

function ASTExtraVehicleBase:StartVehicleBoost() end

function ASTExtraVehicleBase:StopVehicleBoost() end

function ASTExtraVehicleBase:StartVehicleHorn() end

function ASTExtraVehicleBase:StopVehicleHorn() end

function ASTExtraVehicleBase:VehicleAirFowradPressed() end

function ASTExtraVehicleBase:VehicleAirFowradReleased() end

function ASTExtraVehicleBase:VehicleAirBackPressed() end

function ASTExtraVehicleBase:VehicleAirBackReleased() end

function ASTExtraVehicleBase:OnVehicleSprint() end

---@param Loc FVector
---@param Rot FRotator
---@param LinVel FVector
---@param AngVel FVector
function ASTExtraVehicleBase:CustomPostNetReceivePhysicState(Loc, Rot, LinVel, AngVel) end

function ASTExtraVehicleBase:AfterBeginPlay() end

function ASTExtraVehicleBase:PostBeginPlay() end

---@param DeltaTime number
function ASTExtraVehicleBase:AfterTick(DeltaTime) end

---@return boolean
function ASTExtraVehicleBase:CheckShouldEnableEnjoyVoice() end

---@param rate number
function ASTExtraVehicleBase:ActionMoveForward(rate) end

---@param rate number
function ASTExtraVehicleBase:ActionMoveRight(rate) end

---@param rate number
function ASTExtraVehicleBase:ActionMoveUp(rate) end

---@param rate number
function ASTExtraVehicleBase:MoveForward(rate) end

---@param rate number
function ASTExtraVehicleBase:MoveRight(rate) end

---@param rate number
function ASTExtraVehicleBase:MoveUp(rate) end

---@param rate number
function ASTExtraVehicleBase:SetHandBrake(rate) end

---@param bEnalbed boolean
function ASTExtraVehicleBase:SetBoosting(bEnalbed) end

---@param rate number
function ASTExtraVehicleBase:SetAirControlF(rate) end

---@param rate number
function ASTExtraVehicleBase:SetAirControlB(rate) end

---@return number
function ASTExtraVehicleBase:GetAirControlF() end

---@return number
function ASTExtraVehicleBase:GetAirControlB() end

function ASTExtraVehicleBase:ClearInputs() end

---@return boolean
function ASTExtraVehicleBase:IsEnableInputs() end

---@param bEnable boolean
function ASTExtraVehicleBase:ServerSetEnableInputs(bEnable) end

---@return boolean
function ASTExtraVehicleBase:IsDisableExitVehicle() end

---@param SeatIndex number
---@return boolean
function ASTExtraVehicleBase:CanCharacterExitVehicle(SeatIndex) end

---@param bEnable boolean
function ASTExtraVehicleBase:ServerSetDisableExitVehicle(bEnable) end

---@param Origin FVector
---@param HitBoneName string
---@param ShotDirection FVector
---@param ImpactPoint FVector
---@param DamageOuterRadius number
---@param DamageEvent FDamageEvent
---@param DamageClassID number
function ASTExtraVehicleBase:ClientReceiveComponentDamage(Origin, HitBoneName, ShotDirection, ImpactPoint, DamageOuterRadius, DamageEvent, DamageClassID) end

---@param bEnalbed boolean
function ASTExtraVehicleBase:ServerSetBoosting(bEnalbed) end

function ASTExtraVehicleBase:OnBoostingChanged_Internal() end

---@param rate number
function ASTExtraVehicleBase:ServerSetAirControlF(rate) end

---@param rate number
function ASTExtraVehicleBase:ServerSetAirControlB(rate) end

---@param bEnalbed boolean
function ASTExtraVehicleBase:ServerSetIsVehicleSpringArmAutoReturn(bEnalbed) end

function ASTExtraVehicleBase:OnBoostingChanged() end

function ASTExtraVehicleBase:OnHandBrakeChanged() end

---@return boolean
function ASTExtraVehicleBase:BPGetIsBoosting() end

---@return boolean
function ASTExtraVehicleBase:BPGetIsEngineStarted() end

function ASTExtraVehicleBase:OnRep_IsEngineStarted() end

function ASTExtraVehicleBase:OnRep_VehicleHealthState() end

function ASTExtraVehicleBase:OnRep_IsBoosting() end

function ASTExtraVehicleBase:OnRep_IsVehicleSpringArmAutoReturn() end

function ASTExtraVehicleBase:OnEngineStart() end

function ASTExtraVehicleBase:OnEngineStop() end

---@param LightValue number
function ASTExtraVehicleBase:OnSetTailLightValue(LightValue) end

function ASTExtraVehicleBase:OnUpdateEffects() end

---@param HealthState ESTExtraVehicleHealthState
function ASTExtraVehicleBase:ClientOnVehicleHealthStateChangedNativeEvent(HealthState) end

---@param FuelPercent number
---@param bEngineOn boolean
---@param bInHouse boolean
---@param SpawnByRegonActive boolean
function ASTExtraVehicleBase:InitVehicle(FuelPercent, bEngineOn, bInHouse, SpawnByRegonActive) end

---@return number
function ASTExtraVehicleBase:GetVehicleSpecificID() end

---@return string
function ASTExtraVehicleBase:GetVehicleDisplayName() end

function ASTExtraVehicleBase:StartAirDrop() end

---@return boolean
function ASTExtraVehicleBase:IsDestroyed() end

---@param bUse boolean
function ASTExtraVehicleBase:SetUsingHorn(bUse) end

---@param bUse boolean
function ASTExtraVehicleBase:ServerSetUsingHorn(bUse) end

---@return boolean
function ASTExtraVehicleBase:CanUseHorn() end

---@param bSetLocation boolean
---@param newLocation FVector
---@param bSetRotation boolean
---@param newRotation FRotator
function ASTExtraVehicleBase:ServerMoveTo(bSetLocation, newLocation, bSetRotation, newRotation) end

---@return number
function ASTExtraVehicleBase:GetForwardSpeed() end

---获取载具的前向向量
---@return FVector
function ASTExtraVehicleBase:GetVehicleForwardVector() end

---@return FVector
function ASTExtraVehicleBase:GetRotationInputDir() end

---@return boolean
function ASTExtraVehicleBase:IsEntirelyUnderWater() end

---是否不在水中
---@return boolean
function ASTExtraVehicleBase:IsNotInWater() end

---@param IsNotInWater boolean
function ASTExtraVehicleBase:OnNotInWaterChanged(IsNotInWater) end

---@param IsUnderWater boolean
function ASTExtraVehicleBase:OnEntirelyUnderWaterChanged(IsUnderWater) end

---是否是武装载具
---@return boolean
function ASTExtraVehicleBase:IsArmedVehicle() end

---是否是司机位有武器的武装载具
---@return boolean
function ASTExtraVehicleBase:IsDriverArmedVehicle() end

---当前角色是否要显示大战场载具武器操作UI
---@return boolean
function ASTExtraVehicleBase:CanShowBFVehicleWeaponOperationUI() end

---乘客位置是否可以控制载具
---@return boolean
function ASTExtraVehicleBase:IsPassengerShouldPossesVehicle() end

function ASTExtraVehicleBase:BroadcastClientVehicleExplosionEffect() end

function ASTExtraVehicleBase:BPOnVehicleExplosionInClient() end

---@param OutCapsulePointA FVector
---@param OutCapsulePointB FVector
---@param OutCullWaterCapsuleRadius number
---@param OutCullWaterCapsuleBlendWidth number
function ASTExtraVehicleBase:GetCullWaterCapsule(OutCapsulePointA, OutCapsulePointB, OutCullWaterCapsuleRadius, OutCullWaterCapsuleBlendWidth) end

---@param Reason string
function ASTExtraVehicleBase:ServerDetachEveryoneFromSeat(Reason) end

---@param bEnabled boolean
function ASTExtraVehicleBase:SetRideCheck(bEnabled) end

---@param NewTeamID number
function ASTExtraVehicleBase:SetTeamID(NewTeamID) end

function ASTExtraVehicleBase:OnRep_TeamID() end

---@return boolean
function ASTExtraVehicleBase:IsInMidAir() end

---<将冲力播放到所有的端|手雷伤害，会附加向上的冲力
---@param Origin FVector
---@param DamageOuterRadius number
---@param BaseMomentumMag number
function ASTExtraVehicleBase:MultiCast_ApplyImpulse(Origin, DamageOuterRadius, BaseMomentumMag) end

---@return FVector
function ASTExtraVehicleBase:GetIdentityBoundsExtent() end

---@return FBoxSphereBounds
function ASTExtraVehicleBase:GetIdentityBounds() end

---@return FVector
function ASTExtraVehicleBase:GetIdentityBoundsLocalPos() end

---@return FVector
function ASTExtraVehicleBase:GetVehicleCenter() end

function ASTExtraVehicleBase:DestroyVehicleSelf() end

---@param DeltaTime number
function ASTExtraVehicleBase:TickStuckRedeployTip(DeltaTime) end

---@param BoneIndex number
---@return FTransform
function ASTExtraVehicleBase:GetBoneTransformComponentSpace(BoneIndex) end

---@param ThresholdDis number
---@return boolean
function ASTExtraVehicleBase:CheckValidDisToMainController(ThresholdDis) end

---@param PC ASTExtraPlayerController
---@param Squared boolean
---@return number
function ASTExtraVehicleBase:GetDistanceToController(PC, Squared) end

---@param InVehicleHealthState ESTExtraVehicleHealthState
function ASTExtraVehicleBase:VehicleBeenDestroyedCleanInfoDisplay(InVehicleHealthState) end

---@param CalcByShapes boolean
function ASTExtraVehicleBase:SaveIdentityBounds(CalcByShapes) end

function ASTExtraVehicleBase:CreateAntiStuckBox() end

function ASTExtraVehicleBase:RemoveAntiStuckBox() end

function ASTExtraVehicleBase:StartResolvingStuck() end

function ASTExtraVehicleBase:EndResolvingStuck() end

---@param InCharacter ASTExtraPlayerCharacter
---@param SeatIdx number
---@return boolean
function ASTExtraVehicleBase:IsCharacterMovetoVehicleSeatStraight(InCharacter, SeatIdx) end

---@return FVector
function ASTExtraVehicleBase:GetServerPreventCenter() end

---@return FVector
function ASTExtraVehicleBase:GetServerRelativePreventCenter_RelativeLocationPenetrating() end

function ASTExtraVehicleBase:ServerClearSpeed() end

---@param bQueryOnly boolean
---@return boolean
function ASTExtraVehicleBase:ForceTickServerPreventPenetrating(bQueryOnly) end

---@param lastVehicleCenterTemp FVector
---@param lastVehicleTransTemp FTransform
function ASTExtraVehicleBase:GetServerPreventValidTransform(lastVehicleCenterTemp, lastVehicleTransTemp) end

---@param DeltaTime number
---@return boolean
function ASTExtraVehicleBase:CheckClientPenetrating(DeltaTime) end

---@param DeltaTime number
---@param TestLoc FVector
---@param TestRot FRotator
---@return boolean
function ASTExtraVehicleBase:CheckClientPenetratingInternal(DeltaTime, TestLoc, TestRot) end

---@param DeltaTime number
---@return boolean
function ASTExtraVehicleBase:TickVehicleInWall(DeltaTime) end

function ASTExtraVehicleBase:DestroyAndRespawnSelf() end

---@param DeltaTime number
---@return boolean
function ASTExtraVehicleBase:TickRemoveVehicleBecauseDestory(DeltaTime) end

function ASTExtraVehicleBase:DelayForceServerAuthorizeTimerFunc() end

function ASTExtraVehicleBase:SendVehicleInAirChangedTimeToServer() end

function ASTExtraVehicleBase:SendVehicleInUnderWaterChangedTimeToServer() end

function ASTExtraVehicleBase:EnterFPPVehicle() end

function ASTExtraVehicleBase:ExitFPPVehicle() end

function ASTExtraVehicleBase:EnterScopeVehicle() end

function ASTExtraVehicleBase:PostLoadMesh() end

---@return boolean
function ASTExtraVehicleBase:IsUsingFPPModel() end

---@return boolean
function ASTExtraVehicleBase:IsUsingScopeModel() end

---@param Character ASTExtraBaseCharacter
---@return FVector
function ASTExtraVehicleBase:GetSeatFPPHeadExtraOffset(Character) end

---@param SeatIdx number
---@return FVector
function ASTExtraVehicleBase:GetSeatFPPHeadExtraOffsetBySeatIndex(SeatIdx) end

---@param MatDMI UMaterialInterface
function ASTExtraVehicleBase:SetAvatarMID(MatDMI) end

---@param ParamName string
---@param Value number
function ASTExtraVehicleBase:SetDMIParamNativeEvent(ParamName, Value) end

---@param VTComp UVehicleTriggerComponent
function ASTExtraVehicleBase:SendTriggerEventToServer(VTComp) end

function ASTExtraVehicleBase:UpdateOutline() end

---@param bEnter boolean
function ASTExtraVehicleBase:OnPlayerActiveRegionsChanged(bEnter) end

---@param DeltaTime number
---@param OutDeltaTime number
---@return boolean
function ASTExtraVehicleBase:NeedLowFrequencyTick(DeltaTime, OutDeltaTime) end

---@param Player ASTExtraPlayerCharacter
function ASTExtraVehicleBase:HandleLocalPlayerEnterVehicle(Player) end

---@param Player ASTExtraPlayerCharacter
function ASTExtraVehicleBase:HandleLocalPlayerLeaveVehicle(Player) end

---判断是否可以下车 比如说有速度限制之类的
---@return boolean
function ASTExtraVehicleBase:CanLeaveVehicle() end

---可以针对不同座位，判断角色是否可以直接下车，还是需要载具做特定逻辑才能下
---@param Player ASTExtraPlayerCharacter
---@param SeatIndex number
---@return boolean
function ASTExtraVehicleBase:VehicleHandlePlayerLeaveRequest(Player, SeatIndex) end

---载具额外再判断当前角色武器是否可以使用
---@param Weapon ASTExtraWeapon
---@return boolean
function ASTExtraVehicleBase:CheckEnableHoldCurrentWeaponEX(Weapon) end

---@param Player ASTExtraBaseCharacter
function ASTExtraVehicleBase:HandleLocalPlayerDeadth(Player) end

function ASTExtraVehicleBase:HandleSeekLockRocketExplodedOnServer() end

---@return boolean
function ASTExtraVehicleBase:CheckHaveSpecialAttachActor() end

---@param InCustomVehicleName string
---@param InVehicleHandle UBattleItemHandleBase
function ASTExtraVehicleBase:SetVehicleCustomName(InCustomVehicleName, InVehicleHandle) end

---@param InCustomVehicleLicensePlateName string
---@param InCustomVehicleLicensePlateNum string
---@param InPendantHandleFront UBattleItemHandleBase
---@param InEVehicleAvatarSlot number
function ASTExtraVehicleBase:SetVehicleCustomLicensePlateNameAndNum(InCustomVehicleLicensePlateName, InCustomVehicleLicensePlateNum, InPendantHandleFront, InEVehicleAvatarSlot) end

---@param ForceCheckInSmokeGrenade boolean
function ASTExtraVehicleBase:RefreshAllParticlesVisibility(ForceCheckInSmokeGrenade) end

---@param SoftWrapper FParticleSoftWrapper
function ASTExtraVehicleBase:RefreshParticleVisibility(SoftWrapper) end

function ASTExtraVehicleBase:RefreshNeedCheckInSmokeGrenade() end

---@return boolean
function ASTExtraVehicleBase:ShouldShowParticleByCurrentPlayer() end

---@param ParticleWrapper FParticleSoftWrapper
---@return boolean
function ASTExtraVehicleBase:ShouldShowParticleConsiderVehicleInSmoke(ParticleWrapper) end

function ASTExtraVehicleBase:RPC_Client_SeekLockRocketExploded() end

---@param BindingHandle UBattleItemHandleBase
function ASTExtraVehicleBase:RegisterItemHandle(BindingHandle) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function ASTExtraVehicleBase:BroadCastEnterVehicleEvent(Character, SeatType, bSuccess) end

---@param Character ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bSuccess boolean
function ASTExtraVehicleBase:BroadCastExitVehicleEvent(Character, SeatType, bSuccess) end

function ASTExtraVehicleBase:OnRep_DSSpawnTime() end

function ASTExtraVehicleBase:OnRep_DSDestroyedTime() end

---@return number
function ASTExtraVehicleBase:GetExpiredFuelConsumeFactor() end

---@return number
function ASTExtraVehicleBase:GetDSGameDurationTime() end

---@param Player ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param IsSucc boolean
function ASTExtraVehicleBase:HandlePlayerEnterVehicleOnServer(Player, SeatType, IsSucc) end

---@param bEnable boolean
function ASTExtraVehicleBase:SetDriverShootingUIEnable(bEnable) end

---@param InPlayerCharacter ASTExtraBaseCharacter
---@return boolean
function ASTExtraVehicleBase:CheckEnableNewFPPInVehicle(InPlayerCharacter) end

---@param InPlayerCharacter ASTExtraBaseCharacter
---@return boolean
function ASTExtraVehicleBase:CheckEnableNewFPPDriveVehicle(InPlayerCharacter) end

---@param InCharacter ASTExtraBaseCharacter
---@param InOffset FVector
---@param DeltaTime number
---@return FVector
function ASTExtraVehicleBase:CustomizeNewFPPUpperMeshOffsetInVehicle(InCharacter, InOffset, DeltaTime) end

function ASTExtraVehicleBase:GetSkillExtraUIList() end

function ASTExtraVehicleBase:OnVehicleDestorySpawnInBigworld() end

---@param TargetComponent USeekAndLockWeaponComponent
---@return boolean
function ASTExtraVehicleBase:CanBeSeekAndLocked(TargetComponent) end

---@param Damage number
---@param DamageEvent FSTRadialDamageEvent
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraVehicleBase:TestTakeDamage(Damage, DamageEvent, EventInstigator, DamageCauser) end

---@param EffectName string
function ASTExtraVehicleBase:ActiveEffect(EffectName) end

---@param EffectName string
function ASTExtraVehicleBase:ActiveEffectAsync(EffectName) end

---@param EffectName string
---@param ParamName string
---@param Value FVector
function ASTExtraVehicleBase:UpdateEffectParam(EffectName, ParamName, Value) end

---@param EffectName string
---@param ParamName string
---@param Value number
function ASTExtraVehicleBase:UpdateEffectParamFloat(EffectName, ParamName, Value) end

---@param OutComponents ULuaArrayHelper<UParticleSystemComponent>
function ASTExtraVehicleBase:GetAllActiveParticleSystemComp(OutComponents) end

function ASTExtraVehicleBase:NotifyActiveParticlesChanged() end

---@param EffectName string
function ASTExtraVehicleBase:SpawnUnattachedEffectAsync(EffectName) end

---@param EffectName string
function ASTExtraVehicleBase:DeactiveEffect(EffectName) end

---@param EffectName string
---@return boolean
function ASTExtraVehicleBase:IsActiveEffect(EffectName) end

---@param ParticleWrapper FParticleSoftWrapper
function ASTExtraVehicleBase:ActiveEffectAsyncOneShot(ParticleWrapper) end

function ASTExtraVehicleBase:AutoLoadEffect() end

function ASTExtraVehicleBase:LoadPendantParticle() end

function ASTExtraVehicleBase:HandleOnVehicleAvatarDataCopied() end

---@return boolean
function ASTExtraVehicleBase:UserCanChangeAvatar() end

---@param InPlayerCharacter ASTExtraBaseCharacter
---@return boolean
function ASTExtraVehicleBase:CheckCharacterCanLeanOut(InPlayerCharacter) end

---@param ItemHandle UBattleItemHandleBase
function ASTExtraVehicleBase:ApplayAvatarCustomData(ItemHandle) end

---同步的时间戳发生改变 在客户端输出监控信息
function ASTExtraVehicleBase:OnRep_ServerLastReplicatedServer() end

---@param newState ESTExtraUAVVehicleOperateState
function ASTExtraVehicleBase:SetUAVOperateState(newState) end

---@param moveVelocity FVector2D
function ASTExtraVehicleBase:SetJoystickMoveVelocity(moveVelocity) end

function ASTExtraVehicleBase:ResetJoystickMove() end

---@return number
function ASTExtraVehicleBase:GetFlyMoveForwardRate() end

---@return number
function ASTExtraVehicleBase:GetFlyMoveRightRate() end

---@return number
function ASTExtraVehicleBase:GetFlyMoveUpRate() end

function ASTExtraVehicleBase:ShowTips_Electronic_Failure() end

---@return boolean
function ASTExtraVehicleBase:IsElectronic_Failure() end

---@param id number
---@param bEnable boolean
---@param fTime number
---@param playercontroller AController
function ASTExtraVehicleBase:SetVehicleStates(id, bEnable, fTime, playercontroller) end

---@param id number
---@param srcVehicleStatesData number
---@return boolean
function ASTExtraVehicleBase:HasVehicleStates(id, srcVehicleStatesData) end

---@param id number
---@return number
function ASTExtraVehicleBase:GetVehicleStatesLeftTime(id) end

---@param OldVehicleStatesData number
function ASTExtraVehicleBase:OnRep_CurrentVehicleStatesData(OldVehicleStatesData) end

---只有DS端调用才有效 设置载具的不可交互，不可驾驶，不可攻击 不可物理模拟状态
---@param state boolean
function ASTExtraVehicleBase:SetFrozenStaticState(state) end

---@return boolean
function ASTExtraVehicleBase:IsFrozenStaticState() end

---只处理FrozenStatic为true的情况 false的情况 走网络响应 物理模拟打开的时候执行 避免在beginPlay里面 开启/关闭物理模拟 这个函数只会执行一次
function ASTExtraVehicleBase:CheckNeedFrozenVehicle() end

function ASTExtraVehicleBase:OnRep_FrozenStatic() end

---检测当前是否物理模拟状态， 不是则打开物理模拟
function ASTExtraVehicleBase:TryCheckSimulatePhysics() end

---@param component UPrimitiveComponent
---@param BoneName string
function ASTExtraVehicleBase:HandleOnComponentWake(component, BoneName) end

---@param component UPrimitiveComponent
---@param BoneName string
function ASTExtraVehicleBase:HandleOnComponentSleep(component, BoneName) end

---只有DS端调用才有效 设置载具的可交互，可驾驶，可攻击 不可物理模拟状态
---@param state boolean
function ASTExtraVehicleBase:SetEngineStaticState(state) end

---@return boolean
function ASTExtraVehicleBase:IsEngineStaticState() end

function ASTExtraVehicleBase:OnRep_EngineStatic() end

---@param enableCache boolean
---@return boolean
function ASTExtraVehicleBase:IsPhysAwake(enableCache) end

---@param InPlayerCharacter ASTExtraBaseCharacter
---@param IsStartStanding boolean
function ASTExtraVehicleBase:BPOnCharacterStandingOn(InPlayerCharacter, IsStartStanding) end

---@param InPawn APawn
---@param IsStartStanding boolean
function ASTExtraVehicleBase:BPOnPawnStandingOn(InPawn, IsStartStanding) end

---@param IsContraint boolean
function ASTExtraVehicleBase:K2_SetLinkedMeshConstraint(IsContraint) end

function ASTExtraVehicleBase:OnRep_bInHouseSpawn() end

---@param NewValue boolean
function ASTExtraVehicleBase:SetInHouseSpawn(NewValue) end

---@param OutList ULuaArrayHelper<AVehicleShootWeapon>
function ASTExtraVehicleBase:GetAllVehicleWeaponList(OutList) end

---@param SeatID number
function ASTExtraVehicleBase:GetVehicleWeaponsOnSeats(SeatID) end

---@param VehicleWeapon AVehicleShootWeapon
---@param Character ASTExtraPlayerCharacter
function ASTExtraVehicleBase:StartFireVehicleWeapon(VehicleWeapon, Character) end

---@param VehicleWeapon AVehicleShootWeapon
function ASTExtraVehicleBase:StopFireVehicleWeapon(VehicleWeapon) end

---@param VehicleWeapon AVehicleShootWeapon
function ASTExtraVehicleBase:ServerStopFireVehicleWeapon(VehicleWeapon) end

---@param VehicleWeapon AVehicleShootWeapon
---@param TargetLoc FVector
function ASTExtraVehicleBase:SetVehicleWeaponTarget(VehicleWeapon, TargetLoc) end

---@param VehicleWeapon AVehicleShootWeapon
---@param TargetLoc FVector
function ASTExtraVehicleBase:ServerSetVehicleWeaponTarget(VehicleWeapon, TargetLoc) end

function ASTExtraVehicleBase:SafeSleepVehicle() end

---@param bActive boolean
---@param Delay number
function ASTExtraVehicleBase:SetPhysActive(bActive, Delay) end

function ASTExtraVehicleBase:SetPhysActiveTimerFunc() end

function ASTExtraVehicleBase:OnAnimListLoaded() end

function ASTExtraVehicleBase:OnRep_LastReqChangeVehicleSkinPlayerKey() end

---@param PlayerKey number
function ASTExtraVehicleBase:SetLastReqChangeVehicleSkinPlayerKey(PlayerKey) end

---@param DeltaTime number
---@return boolean
function ASTExtraVehicleBase:CheckNeedVehicleTick(DeltaTime) end

---@return number
function ASTExtraVehicleBase:GetVehicleMaxVelocity() end

---@return number
function ASTExtraVehicleBase:GetWheelNum() end

---@param index number
---@return number
function ASTExtraVehicleBase:GetWheelHP(index) end

---@return number
function ASTExtraVehicleBase:GetSeatNum() end

---@return number
function ASTExtraVehicleBase:GetInUseSeatNum() end

---@param index number
---@return boolean
function ASTExtraVehicleBase:GetSeatState(index) end

---@param index number
---@return ESTExtraVehicleSeatType
function ASTExtraVehicleBase:GetSeatType(index) end

---@param SeatType ESTExtraVehicleSeatType
---@param InSeatIndex number
---@return boolean
function ASTExtraVehicleBase:CanUseSeat(SeatType, InSeatIndex) end

function ASTExtraVehicleBase:BP_CalculateVehiclesInVehicleSet() end

---Head 和 Trailer 用值传会有时序问题，连接改变调 RecalculateVehicleSet 时一定要确保改变时是前车调。 前               后                动作 A <-> B <-> C    A <-  B <-> C    A 调 RecalculateVehicleSet A <-> B <-> C    A  -> B <-> C    没动作 A     B <-> C    A  -> B <-> C    A 调 RecalculateVehicleSet A     B <-> C    A <-  B <-> C    没动作
---@param bMustAllocate boolean
function ASTExtraVehicleBase:RecalculateVehicleSet(bMustAllocate) end

---@param SeatType ESTExtraVehicleSeatType
---@return boolean
function ASTExtraVehicleBase:VehicleSetIsSeatAvailable(SeatType) end

---@param SeatType ESTExtraVehicleSeatType
---@param PlayCharacter ASTExtraPlayerCharacter
---@return boolean
function ASTExtraVehicleBase:VehicleSetIsSeatAvailableWithDriverShootSeat(SeatType, PlayCharacter) end

---判断 VehicleSet 中是否有载具存在可用的 DriverProxySeat（ESeatType_DriverProxySeat），有则返回 true
---@return boolean
function ASTExtraVehicleBase:VehicleSetIsSeatAvailableWithDriverProxySeat() end

---@param SeatType ESTExtraVehicleSeatType
---@return boolean
function ASTExtraVehicleBase:VehicleSetCanUseSeat(SeatType) end

---@return number
function ASTExtraVehicleBase:GetVehicleFuelMax() end

---@return number
function ASTExtraVehicleBase:GetVehicleFuel() end

---@param maxfuel number
function ASTExtraVehicleBase:SetVehicleFuelMax(maxfuel) end

---@param fuel number
function ASTExtraVehicleBase:SetVehicleFuel(fuel) end

---@return number
function ASTExtraVehicleBase:GetVehicleHPMax() end

---@return number
function ASTExtraVehicleBase:GetVehicleHP() end

---@param maxhp number
function ASTExtraVehicleBase:SetVehicleHPMax(maxhp) end

---@param hp number
function ASTExtraVehicleBase:SetVehicleHP(hp) end

---@param Damage number
---@param DamageType number
---@param EventInstigator AController
---@param DamageCauser AActor
---@return number
function ASTExtraVehicleBase:OverrideDamageValueWhenTakeDamage(Damage, DamageType, EventInstigator, DamageCauser) end

---Event
---玩家进入载具事件
---生效范围CS
---@param IsSucc boolean @上车是否成功
---@param Character ASTExtraPlayerCharacter @乘客
---@param SeatType ESTExtraVehicleSeatType @座位类型
function ASTExtraVehicleBase:UGC_OnVehicleEnterEvent(IsSucc, Character, SeatType) end

---Event
---玩家离开载具事件
---生效范围CS
---@param Character ASTExtraPlayerCharacter @乘客
function ASTExtraVehicleBase:UGC_OnVehicleExitEvent(Character) end

---@return boolean
function ASTExtraVehicleBase:IsAutoDriving() end

---@return boolean
function ASTExtraVehicleBase:HasAutoDriveTarget() end

---@return boolean
function ASTExtraVehicleBase:CanAutoDriving() end

---@return boolean
function ASTExtraVehicleBase:CanAutoDrivingNoDriver() end

function ASTExtraVehicleBase:StopAutoDriving() end

---@return FVector
function ASTExtraVehicleBase:GetLinearVelocity() end

---@param player ASTExtraCharacter
---@return ECallingVehicleResult
function ASTExtraVehicleBase:CallingByPlayer(player) end

---@param NewVel FVector
function ASTExtraVehicleBase:ClientSetLinearVelocity(NewVel) end

function ASTExtraVehicleBase:ProcessServerPeneTerrainProtectionTLog() end

function ASTExtraVehicleBase:ProcessServerValidTransformUnderTerrain() end

---@param curVehicleCenter FVector
function ASTExtraVehicleBase:ProcessServerPreventPenetratingTLog(curVehicleCenter) end

---@param DriverPlayerKey number
---@param strDriverUid string
---@param bIsCanDriverAssignVehicle boolean
---@param StrangerToLockedVehiclePer ESTExtraLockedVehicleStatus
---@return boolean
function ASTExtraVehicleBase:AssignVehicleDriver(DriverPlayerKey, strDriverUid, bIsCanDriverAssignVehicle, StrangerToLockedVehiclePer) end

---@param VehicleCampID number
---@return boolean
function ASTExtraVehicleBase:AssignVehicleCampID(VehicleCampID) end

---@param StrangerToLockedVehiclePer ESTExtraLockedVehicleStatus
---@return boolean
function ASTExtraVehicleBase:AssignVehicleLockStatus(StrangerToLockedVehiclePer) end

---@return string
function ASTExtraVehicleBase:GetAssignDriverUid() end

---@return number
function ASTExtraVehicleBase:GetAssignVehicleCampID() end

function ASTExtraVehicleBase:OnRep_AssignCampId() end

---@return ESTExtraLockedVehicleStatus
function ASTExtraVehicleBase:GetLockedVehicleStatus() end

---@return number
function ASTExtraVehicleBase:GetAssignDriverPlayerKeyInt64() end

function ASTExtraVehicleBase:OnDrawDebugInfo() end

---@return boolean
function ASTExtraVehicleBase:CheckVehicleCanPickUp() end

function ASTExtraVehicleBase:DrawDebugPostReceivePhysicState() end

function ASTExtraVehicleBase:GetCharacterMeshClipDatas() end

function ASTExtraVehicleBase:OnRep_VehicleUID() end

function ASTExtraVehicleBase:CheckVehicleOverVelocity() end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraVehicleBase:OnNewHitEvent(SelfActor, OtherActor, NormalImpulse, Hit) end

---@param SelfActor AActor
---@param OtherActor AActor
---@param NormalImpulse FVector
---@param Hit FHitResult
function ASTExtraVehicleBase:OnOldHitEvent(SelfActor, OtherActor, NormalImpulse, Hit) end

function ASTExtraVehicleBase:OnRep_LastDriverPlayerKey() end

---@return number
function ASTExtraVehicleBase:GetLastDriverPlayerKey() end

---@param LeaveTime number
---@param LastDriverKey number
function ASTExtraVehicleBase:SetDriverLeaveTimeAndPlayerKey(LeaveTime, LastDriverKey) end

---@param LeaveVelocity number
function ASTExtraVehicleBase:SetDriverLeaveVelocity(LeaveVelocity) end

function ASTExtraVehicleBase:OnRep_ControllerPlayerKey() end

---@return boolean
function ASTExtraVehicleBase:InVirtualControlMode() end

function ASTExtraVehicleBase:ManualSerializeMovementsForFRR() end

---@return boolean
function ASTExtraVehicleBase:GetIsAllWheelsInAir() end

---@return boolean
function ASTExtraVehicleBase:GetInWaterAtBigWorld() end

---@return boolean
function ASTExtraVehicleBase:GetInAirAtBigWorld() end

---@param Index number
---@return boolean
function ASTExtraVehicleBase:GetWheelOnLandAtBigWorld(Index) end

---@return number
function ASTExtraVehicleBase:GetWheelOnLandNumAtBigWorld() end

---@return boolean
function ASTExtraVehicleBase:BP_BisUseCompReplicatorOpt() end

---@return boolean
function ASTExtraVehicleBase:CanAssignVehiclePer() end

---@return number
function ASTExtraVehicleBase:GetSpawnPSCount() end

---@param nIndex number
---@return FVector
function ASTExtraVehicleBase:GetFxSpawnLocation(nIndex) end

---@param nIndex number
---@return FRotator
function ASTExtraVehicleBase:GetFxSpawnRotator(nIndex) end

function ASTExtraVehicleBase:OnAfterOverrideVehiclePhyX() end

function ASTExtraVehicleBase:StopCruiseControl() end

function ASTExtraVehicleBase:DsiableCruiseControl() end

---@return ESTExtraVehicleCruiseControlState
function ASTExtraVehicleBase:GetCruiseControlState() end

---@return boolean
function ASTExtraVehicleBase:IsEnableCruiseControl() end

---@param enState ESTExtraVehicleCruiseControlState
function ASTExtraVehicleBase:SetCruiseControlState(enState) end

function ASTExtraVehicleBase:OnPawnWarning() end

function ASTExtraVehicleBase:CheckMobilePlatform() end

---Rep notify for ReplicatedBasedMovement
function ASTExtraVehicleBase:OnRep_ReplicatedBasedMovement() end

function ASTExtraVehicleBase:OnRep_ReplicatedBasedMovementBP() end

---@param BaseComp UPrimitiveComponent
function ASTExtraVehicleBase:SetVehicleReplicatedBase(BaseComp) end

---@param EventName string
function ASTExtraVehicleBase:Play3DAudioAtLocation(EventName) end

---@param EventName string
function ASTExtraVehicleBase:BPPlay3DAudioAtLocation(EventName) end

function ASTExtraVehicleBase:OnRep_VehicleAttachToSelfInfo() end

---@param Enable boolean
function ASTExtraVehicleBase:SetAttachedCameraOffsetEnable(Enable) end

---@param Enable boolean
function ASTExtraVehicleBase:ModifyAttachedToVehicleShapeCollisionAndQueryFlag(Enable) end

---@param Init boolean
---@return FRotator
function ASTExtraVehicleBase:GetAttachedToVehicleShapesRotator(Init) end

---@param Init boolean
---@return FRotator
function ASTExtraVehicleBase:GetVehicleAttachToSelfShapesRotator(Init) end

---@param Init boolean
---@return FVector
function ASTExtraVehicleBase:GetAttachedToVehicleShapesLocation(Init) end

---@param Init boolean
---@return FVector
function ASTExtraVehicleBase:GetVehicleAttachToSelfShapesLocation(Init) end

---@return boolean
function ASTExtraVehicleBase:GetShouldUpdateAttachToVehicleShapesTransform() end

---@return boolean
function ASTExtraVehicleBase:GetShouldUpdateVehicleAttachToSelfShapesTransform() end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraVehicleBase:SetVehicleAttachToSelf(InVehicle) end

---@param NewTransform FTransform
function ASTExtraVehicleBase:TransformAttachedToVehicleShape(NewTransform) end

---@param InVehicle ASTExtraVehicleBase
function ASTExtraVehicleBase:SetVehicleFollowingSelf(InVehicle) end

---@return FTransform
function ASTExtraVehicleBase:GetVehTransformForPlayerVehAnim() end

---@return boolean
function ASTExtraVehicleBase:CanShowLastVehicleIcon() end

---@param SeatIndex number
function ASTExtraVehicleBase:TryRaiseWindow(SeatIndex) end

---@param SeatIndex number
function ASTExtraVehicleBase:TryLowerWindow(SeatIndex) end

---@param SeatIndex number
---@return number
function ASTExtraVehicleBase:GetWindowIndexBySeat(SeatIndex) end

---@param WindowIndex number
---@param Value number
function ASTExtraVehicleBase:SetWindowMatParam(WindowIndex, Value) end

---@param WindowIndex number
function ASTExtraVehicleBase:BroadcastClientWindowBreakEffect(WindowIndex) end

function ASTExtraVehicleBase:OnRep_ReplicatedWindowsState() end

---@param WindowIndex number
---@param WindowState ESTExtraVehicleWindowState
function ASTExtraVehicleBase:OnClientWindowsStateChanged(WindowIndex, WindowState) end

---@param WindowIndex number
function ASTExtraVehicleBase:DestroyWindow(WindowIndex) end

---@param BoneName string
function ASTExtraVehicleBase:ClientDestroyWindow(BoneName) end

---@param PartName EVehiclePartName
---@param IsDestroied boolean
function ASTExtraVehicleBase:OnVehiclePartStateChanged(PartName, IsDestroied) end

---工程兵维修载具
---@param bIsRepairing boolean
function ASTExtraVehicleBase:StartOrStopRepairVehicle(bIsRepairing) end

---@param DamagePackage FSyncInstigatorDamagePackage_VictimTarget
---@param InstigatorPC ASTExtraPlayerController
function ASTExtraVehicleBase:HandleInstigatorClientSyncDamagePackage(DamagePackage, InstigatorPC) end

---@param InState boolean
function ASTExtraVehicleBase:SetVehicleHasBeenDriveState(InState) end

function ASTExtraVehicleBase:OnRep_VehicleParachuteState() end

---@param InVehicleParachuteState EVehicleParachuteState
function ASTExtraVehicleBase:SetVehicleParachuteState(InVehicleParachuteState) end

---@param InVehicleParachuteState EVehicleParachuteState
function ASTExtraVehicleBase:BroadcastParachuteStateChanged(InVehicleParachuteState) end

---@param InVehicleParachuteState EVehicleParachuteState
function ASTExtraVehicleBase:ClientProcessParachuteStateChanged(InVehicleParachuteState) end

---@param bShouldCauseExplodeDamage boolean
function ASTExtraVehicleBase:VehicleSelfExplode(bShouldCauseExplodeDamage) end

---@param TimeStamp number
function ASTExtraVehicleBase:SetVehicleSwappingSiblingAvatarInCDTimeStamp(TimeStamp) end

function ASTExtraVehicleBase:UpdateVehicleShowSwappingSiblingAvatarUI() end

function ASTExtraVehicleBase:ReqVehicleSwapToSiblingAvatar() end

---@return boolean
function ASTExtraVehicleBase:CheckCanVehicleSwapToSiblingAvatar() end

---@return number
function ASTExtraVehicleBase:GetVehicleSwappingSiblingAvatarCD() end

---@return number
function ASTExtraVehicleBase:GetVehicleSwappingSiblingAvatarCurCD() end

---@return boolean
function ASTExtraVehicleBase:IsOnAnySiblingAvatar() end

---@return boolean
function ASTExtraVehicleBase:IsOnMasterSiblingAvatar() end

---@param NewAvatarID number
---@return boolean
function ASTExtraVehicleBase:IsSiblingAvatarSwitch(NewAvatarID) end

function ASTExtraVehicleBase:ReqVehicleShowHolographicEffect() end

---@param AvatarSpecificID number
function ASTExtraVehicleBase:MulticastVehicleShowHolographicEffect(AvatarSpecificID) end

---@param AvatarSpecificID number
function ASTExtraVehicleBase:ReceiveVehicleShowHolographicEffect(AvatarSpecificID) end

---@return boolean
function ASTExtraVehicleBase:CheckCanVehicleShowHolographicEffect() end

---@param Enable boolean
function ASTExtraVehicleBase:EnableVehicleShowHolographicEffect(Enable) end

---@param CurCD number
function ASTExtraVehicleBase:SetVehicleShowHolographicEffectCurCD(CurCD) end

---@param TimeStamp number
function ASTExtraVehicleBase:SetVehicleShowHolographicEffectInCDTimeStamp(TimeStamp) end

---@return number
function ASTExtraVehicleBase:GetVehicleShowHolographicEffectCurCD() end

function ASTExtraVehicleBase:OnRep_bEnableVehicleShowHolographicEffect() end

function ASTExtraVehicleBase:UpdateVehicleShowHolographicEffectUI() end

function ASTExtraVehicleBase:MulticastVehicleStopHolographicEffect() end

function ASTExtraVehicleBase:VehicleStopHolographicEffect() end

---@param Enable boolean
function ASTExtraVehicleBase:EnableVehicleDissolveEffect(Enable) end

---@param TargetValue number
function ASTExtraVehicleBase:SetHolographicEffectMaterialTargetValue(TargetValue) end

---@param TargetValueWrapper FHolographicEffectMaterialTargetValueWrapper
function ASTExtraVehicleBase:SetHolographicEffectMaterialTargetValueWithWrapper(TargetValueWrapper) end

function ASTExtraVehicleBase:OnRep_HolographicEffectMaterialTargetValueWrapper() end

---@param Value number
function ASTExtraVehicleBase:SetHolographicEffectMaterialValue(Value) end

---@param DeltaTime number
function ASTExtraVehicleBase:TickChangeHolographicEffectMaterialValue(DeltaTime) end

---@param Enable boolean
function ASTExtraVehicleBase:EnableVehicleShowDynamicPendant(Enable) end

---@param TimeStamp number
function ASTExtraVehicleBase:SetVehicleShowDynamicPendantInCDTimeStamp(TimeStamp) end

---@return number
function ASTExtraVehicleBase:GetVehicleShowDynamicPendantCurCD() end

function ASTExtraVehicleBase:OnRep_bEnableVehicleShowDynamicPendant() end

---@param Show boolean
function ASTExtraVehicleBase:ReqVehicleShowDynamicPendant(Show) end

---@param Show boolean
function ASTExtraVehicleBase:MulticastVehicleShowDynamicPendant(Show) end

---@param Show boolean
function ASTExtraVehicleBase:ClientSetVehicleShowDynamicPendant(Show) end

function ASTExtraVehicleBase:UpdateVehicleShowDynamicPendantUI() end

---@return boolean
function ASTExtraVehicleBase:CheckCanVehicleShowDynamicPendant() end

---@param Hit FHitResult
function ASTExtraVehicleBase:GetVehicleBaseHitResult(Hit) end

---@param ShapeIndex number
---@param CollisionEnableType ECollisionEnabled
function ASTExtraVehicleBase:SetPxShapeFlagByCollisionEnableTypeWithShapeIndex(ShapeIndex, CollisionEnableType) end

---@param SeatIndex number
---@param IsUse boolean
---@return boolean
function ASTExtraVehicleBase:CanUseWeapon(SeatIndex, IsUse) end

function ASTExtraVehicleBase:OnRep_VehicleSupplyChanged() end

---@param fRecoverHpPer number
---@param fHPRecoverCD number
---@param fSupplyEffectTime number
---@param fMoveDisSquLimit number
function ASTExtraVehicleBase:EnterVehicleSupplyRegion(fRecoverHpPer, fHPRecoverCD, fSupplyEffectTime, fMoveDisSquLimit) end

function ASTExtraVehicleBase:ExitVehicleSupplyRegion() end

---@param fDeltaTime number
function ASTExtraVehicleBase:TickSupplyState(fDeltaTime) end

---@param ShapeIndex number
---@param PSimpleMat UPhysicalMaterial
---@param ComplexPhysMats ULuaArrayHelper<UPhysicalMaterial>
function ASTExtraVehicleBase:SetPhysicsMaterialToShape(ShapeIndex, PSimpleMat, ComplexPhysMats) end

function ASTExtraVehicleBase:SetCustomPhysicsMaterialToShapes() end

function ASTExtraVehicleBase:CloseAllEffectAndAudioAfterVehicleDestroy() end

---@return boolean
function ASTExtraVehicleBase:IsEnableGyroInputs() end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function ASTExtraVehicleBase:OnVehicleAvatorAsyncLoadingFinishFunction(AsyncLoadID, LoadEventFrom) end

---@param AsyncLoadID number
---@param LoadEventFrom UAvatarComponent
function ASTExtraVehicleBase:BPOnVehicleAvatorAsyncLoadingFinishFunction(AsyncLoadID, LoadEventFrom) end

---@param Direction FVector
---@param Acceleration number
function ASTExtraVehicleBase:OnVehicleOverlapWithEscalator(Direction, Acceleration) end

function ASTExtraVehicleBase:OnRep_RepVehicleEscalatorData() end

function ASTExtraVehicleBase:GetVehicleCollisionShapeBP() end

---@param DeltaTeleport FVector
---@return boolean
function ASTExtraVehicleBase:VehicleEscalatorCustomSweep(DeltaTeleport) end

function ASTExtraVehicleBase:OnRep_CommonComponent_Fuel() end

function ASTExtraVehicleBase:UpdateVehicleCommonDoRepOnce() end

---@param Origin FVector
---@param EffectRange number
function ASTExtraVehicleBase:TriggerDeformEffect(Origin, EffectRange) end

---@param Origin FVector
---@param EffectRange number
---@return boolean
function ASTExtraVehicleBase:AllowTriggerDeformEffect(Origin, EffectRange) end

function ASTExtraVehicleBase:OnFixShapeFilterAndFlag() end

function ASTExtraVehicleBase:BPOverideTriggerBoxCollisionConfig() end

---@param bEnable boolean
function ASTExtraVehicleBase:SetEnableVehicleTriggerBox(bEnable) end

---@param VehicleOutLineData FVehicleOutLineAndOcclusionDataData
function ASTExtraVehicleBase:ServerSetVehicleOutLineData(VehicleOutLineData) end

function ASTExtraVehicleBase:ServerCloseVehicleOutLineData() end

function ASTExtraVehicleBase:OnRep_RepVehicleOutLineDataChanged() end

function ASTExtraVehicleBase:OpenVehicleOutLine() end

function ASTExtraVehicleBase:CloseVehicleOutLine() end

---@param OutlineActive boolean
---@param OcclusionActive boolean
---@param OutlineColor FLinearColor
---@param OcclusionColor FLinearColor
---@param OutlineThickness number
function ASTExtraVehicleBase:SetMeshOutlineAndOcclusion(OutlineActive, OcclusionActive, OutlineColor, OcclusionColor, OutlineThickness) end

---@param Yaw number
---@param Pitch number
function ASTExtraVehicleBase:OnTouchMove(Yaw, Pitch) end

function ASTExtraVehicleBase:ServerClearVehicleHorizontalVelocity() end

function ASTExtraVehicleBase:ClientClearVehicleHorizontalVelocity() end

---@param LinearVelocity FVector
function ASTExtraVehicleBase:ServerModifyVehicleVelocity(LinearVelocity) end

---@param LinearVelocity FVector
function ASTExtraVehicleBase:ClientModifyVehicleVelocity(LinearVelocity) end

---@return boolean
function ASTExtraVehicleBase:ShouldActiveTrailer() end

---@param HeadVehicle ASTExtraVehicleBase
function ASTExtraVehicleBase:SetHeadVehicle(HeadVehicle) end

---@param OldHeadInfo FVehicleHeadInfo
function ASTExtraVehicleBase:OnRep_VehicleHeadInfo(OldHeadInfo) end

---@param Head ASTExtraVehicleBase
function ASTExtraVehicleBase:OnHookedByHead(Head) end

---@param Head ASTExtraVehicleBase
function ASTExtraVehicleBase:OnUnHookedByHead(Head) end

---@param Trailer ASTExtraVehicleBase
function ASTExtraVehicleBase:SetTrailerVehicle(Trailer) end

---@param OldTrailerInfo FVehicleTrailerInfo
function ASTExtraVehicleBase:OnRep_TrailerInfoVehicle(OldTrailerInfo) end

---@param Trailer ASTExtraVehicleBase
function ASTExtraVehicleBase:OnHookedByTrailer(Trailer) end

---@param Trailer ASTExtraVehicleBase
function ASTExtraVehicleBase:OnUnhookedByTrailer(Trailer) end

---@return boolean
function ASTExtraVehicleBase:CheckCanConnectTrailerVehicle() end

---@param VehicleUserComp UVehicleUserComponent
---@return boolean
function ASTExtraVehicleBase:CehckCanConnectHeadVehicle(VehicleUserComp) end

---@param InIsRepairingByRepairBox boolean
function ASTExtraVehicleBase:SetRepairingByRepairBox(InIsRepairingByRepairBox) end

---@return boolean
function ASTExtraVehicleBase:IsRepairingByRepairBox() end

---@return boolean
function ASTExtraVehicleBase:ShouldEnableVehicleMovablePlatformAdapter() end

---@param OutFloorResult FHitResult
function ASTExtraVehicleBase:ComputeFloor(OutFloorResult) end

---@param fDeltaTime number
function ASTExtraVehicleBase:UpdateBaseVelocity(fDeltaTime) end

---@return number
function ASTExtraVehicleBase:GetVehicleScale() end

---@return number
function ASTExtraVehicleBase:GetVehicleSpringStrengthScale() end

---@return boolean
function ASTExtraVehicleBase:CheckVehicleCanOpenDoor() end

---@param Character ASTExtraBaseCharacter
---@return boolean
function ASTExtraVehicleBase:CheckVehicleCanPickUpItem(Character) end

function ASTExtraVehicleBase:GetVehicleCanPickUpItemList() end

---@param ShapeIndex number
---@param Transform FTransform
function ASTExtraVehicleBase:SetShapeTransform(ShapeIndex, Transform) end

---@return number
function ASTExtraVehicleBase:GetBoostModifier() end

---@param InCharacter ASTExtraPlayerCharacter
---@param SeatType ESTExtraVehicleSeatType
---@param bIsFriendWithVehicleOwnerClient boolean
---@param InSeatIndex number
---@return boolean
function ASTExtraVehicleBase:CheckBeforeReqEnterVehicle(InCharacter, SeatType, bIsFriendWithVehicleOwnerClient, InSeatIndex) end

---@return boolean
function ASTExtraVehicleBase:ShouldShowEnterVehicleBtn() end

---@param SeatType ESTExtraVehicleSeatType
---@return boolean
function ASTExtraVehicleBase:IsCurrentClosestVehicleSeatAvailable(SeatType) end

---@param VehicleUserComp UVehicleUserComponent
---@param CustomValue number
function ASTExtraVehicleBase:OnCustomOperation(VehicleUserComp, CustomValue) end

---@param DeltaTime number
function ASTExtraVehicleBase:UpdateDustParticle(DeltaTime) end

---@param Stratagy number
---@param Index number
---@param ShouldForceFowardLowSpeed boolean
---@param SpeedThreshold number
---@return FRotator
function ASTExtraVehicleBase:GetCustomDustRotator(Stratagy, Index, ShouldForceFowardLowSpeed, SpeedThreshold) end

function ASTExtraVehicleBase:OnVehicleMeshUpdateOverlaps() end

---@param actor AActor
function ASTExtraVehicleBase:AddIgnoredActor(actor) end

---@param actor AActor
function ASTExtraVehicleBase:RemoveIgnoredActor(actor) end

function ASTExtraVehicleBase:ClearIgnoredActor() end

---@param ForwardVector FVector
function ASTExtraVehicleBase:SetVehicleAITargetForward(ForwardVector) end

---@param TargetForwardVector FVector
---@return boolean
function ASTExtraVehicleBase:GetVehicleAITargetForward(TargetForwardVector) end

function ASTExtraVehicleBase:SetVehicleClientHiddenInGameAndNoCollisionForever() end

function ASTExtraVehicleBase:OnRep_bVehicleClientHiddenInGameAndNoCollisionForever() end

---@param Char ASTExtraBaseCharacter
function ASTExtraVehicleBase:HandleOnPassengerHidenOnVehicleChange(Char) end

function ASTExtraVehicleBase:OnRep_GeneralCampID() end
