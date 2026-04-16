---@meta

---@class EABF_AvatarExtraPartType
---@field Default number
---@field Cloth_Wing number
---@field Elf number
---@field FunnyPart number
---@field NewFPP number
EABF_AvatarExtraPartType = {}


---@class EAvatarMatDynamicParameterType
---@field SocketLocation_WorldSpace number @Socket位置(World Space)
---@field SocketRotation_WorldSpace number @Socket朝向(World Space)
EAvatarMatDynamicParameterType = {}


---@class EAvatarTimeSliceMatPlayMode
---@field Forward number @顺序播（一次）
---@field Reverse number @逆序播（一次）
---@field Loop number @循环播
---@field PingPong number @乒乓播
---@field Random number @随机播
EAvatarTimeSliceMatPlayMode = {}


---@class EAvatarTimeSliceMatInterruptInstruction
---@field None number
---@field Pause number @暂停
---@field PauseToTaggedMat number @暂停到特定Mat
---@field JumpToTaggedMat number @跳转到特定Mat
---@field ModifyPlayMode number @更改播放模式
---@field ExitPlay number @退出播放
---@field Terminated number @已终结(不再更新)
EAvatarTimeSliceMatInterruptInstruction = {}


---@class EOpenParachuteParticleType
---@field PhoenixToPawn number @其他形态变人
---@field PawnToPhoenix number @人变其他形态
---@field OpenParachute number @开伞
---@field Jump number @从飞机上跳下
EOpenParachuteParticleType = {}


---@class FAvatarWeakObjPtr
---@field WeakObjPtr UObject
FAvatarWeakObjPtr = {}


---@class FAvatarFastShapeParam
---@field ShapeTargetClass UObject
---@field bUseGameConcernObjFeature boolean
---@field AxisRelevantRange number
---@field ShapeType ECollisionShape
---@field Radius number
---@field BoxExtent FVector
FAvatarFastShapeParam = {}


---@class FAvatarBuffParam
---@field BuffName string
---@field bUseBuffFastShape boolean
---@field BuffFastShapeParam FAvatarFastShapeParam
FAvatarBuffParam = {}


---@class FAvatarBuffParam_Player
FAvatarBuffParam_Player = {}


---@class FMatDeviceRoleSelector
---@field MatResourceReference UMaterialInterface
---@field MatSlotName string
---@field RoleAndQualitySelector FRoleAndQualitySelector
FMatDeviceRoleSelector = {}


---@class FMatDeviceRoleBehaviorParam
---@field MatSelectorList ULuaArrayHelper<FMatDeviceRoleSelector>
FMatDeviceRoleBehaviorParam = {}


---@class FParticleSystemDeviceRoleSelector
---@field ParticleSystemResourceReference UParticleSystem
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field PlayerCameraMode EPlayerCameraMode
FParticleSystemDeviceRoleSelector = {}


---@class FParticleSystemDeviceRoleBehaviorParam
---@field ParticleSystemSelectorList ULuaArrayHelper<FParticleSystemDeviceRoleSelector>
FParticleSystemDeviceRoleBehaviorParam = {}


---@class FMatPlayerStateSelector
---@field MatResourceReference UMaterialInterface
---@field MatSlotName string
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field bMatchAllCondition boolean
---@field MatchBuffList ULuaArrayHelper<string>
---@field BuffFastShapeParamMap ULuaMapHelper<string, FAvatarFastShapeParam>
---@field MatchStateList ULuaArrayHelper<EPawnState>
---@field bIsEnterWater boolean
FMatPlayerStateSelector = {}


---@class FMatSelector_PlayerStateMatch
---@field bUseAsPureStateMatch boolean
---@field MatSlotName string
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field bMapHighQualityMat_NormalMat boolean
---@field NormalMatResourceReference UMaterialInterface
---@field bMapHighQualityMat_StateMat boolean
---@field StateMatResourceReference UMaterialInterface
---@field bMatchAllCondition boolean
---@field MatchBuffList ULuaArrayHelper<string>
---@field BuffFastShapeParamMap ULuaMapHelper<string, FAvatarFastShapeParam>
---@field MatchBuffParamList ULuaArrayHelper<FAvatarBuffParam_Player>
---@field bMatchAllPlayerState boolean
---@field MatchStateList ULuaArrayHelper<EPawnState>
---@field MatchGameplayTagStateList ULuaArrayHelper<FGameplayTag>
---@field bIsEnterWater boolean
FMatSelector_PlayerStateMatch = {}


---@class FMatPlayerStateBehaviorParam
---@field TickInterval number
---@field bMeltToShareBuffCheckResult boolean
---@field PlayerMatSelectorList ULuaArrayHelper<FMatSelector_PlayerStateMatch>
FMatPlayerStateBehaviorParam = {}


---@class FParticleHiddenPlayerStateSelector
---@field ParticleResourceReference UParticleSystem
---@field ParticleSocketName string
---@field bIgnoreParticleScale boolean
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field bOnlyMatchRoleAndQuality boolean
---@field bMatchAllCondition boolean
---@field bMatchCameraMode boolean
---@field MatchCameraModeList ULuaArrayHelper<EPlayerCameraMode>
---@field bHiddenByCameraMode boolean
---@field bMatchBuff boolean
---@field MatchBuffList ULuaArrayHelper<string>
---@field BuffFastShapeParamMap ULuaMapHelper<string, FAvatarFastShapeParam>
---@field bMatchState boolean
---@field bMatchAnyState boolean
---@field MatchStateList ULuaArrayHelper<EPawnState>
---@field bIsEnterWater boolean
---@field RuntimePSCList ULuaArrayHelper<FAvatarWeakObjPtr>
FParticleHiddenPlayerStateSelector = {}


---@class FParticleHiddenWeaponStateSelector
---@field ParticleResourceReference UParticleSystem
---@field ParticleSocketName string
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field bOnlyMatchRoleAndQuality boolean
---@field bMatchAllCondition boolean
---@field bMatchCameraMode boolean
---@field MatchCameraModeList ULuaArrayHelper<EPlayerCameraMode>
---@field bHiddenByCameraMode boolean
---@field bMatchState boolean
---@field MatchStateList ULuaArrayHelper<EPawnState>
---@field bMatchBuff boolean
---@field MatchBuffList ULuaArrayHelper<string>
---@field BuffFastShapeParamMap ULuaMapHelper<string, FAvatarFastShapeParam>
FParticleHiddenWeaponStateSelector = {}


---@class FParticleHiddenBehaviorParam
---@field TickInterval number
---@field bMeltToShareBuffCheckResult boolean
---@field bHideParticleWhenAttachBoneNotUpdate boolean
---@field ParticleHiddenPlayerStateSelectorList ULuaArrayHelper<FParticleHiddenPlayerStateSelector>
FParticleHiddenBehaviorParam = {}


---@class FWeaponParticleHiddenBehaviorParam
---@field TickInterval number
---@field ParticleHiddenWeaponStateSelectorList ULuaArrayHelper<FParticleHiddenWeaponStateSelector>
FWeaponParticleHiddenBehaviorParam = {}


---@class FParticleMatDeviceRoleSelector
---@field ParticleResRef UParticleSystem
---@field ParticleSlotName string
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field EmitterMatList ULuaArrayHelper<UMaterialInterface>
FParticleMatDeviceRoleSelector = {}


---@class FParticleMatDeviceRoleBehaviorParam
---@field ParticleMatSelectorList ULuaArrayHelper<FParticleMatDeviceRoleSelector>
FParticleMatDeviceRoleBehaviorParam = {}


---@class FParticleReplaceDeviceRoleSelector
---@field FromParticleResRef UParticleSystem
---@field ParticleSlotName string
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field ToParticleResRef UParticleSystem
---@field MatchCameraModeList ULuaMapHelper<EPlayerCameraMode, UParticleSystem>
---@field MatchStateList ULuaMapHelper<EPawnState, UParticleSystem>
FParticleReplaceDeviceRoleSelector = {}


---@class FParticleReplaceDeviceRoleBehaviorParam
---@field ParticleReplaceSelectorList ULuaArrayHelper<FParticleReplaceDeviceRoleSelector>
FParticleReplaceDeviceRoleBehaviorParam = {}


---@class FFlyBoardBehaviorParam
---@field ParticlesMap ULuaMapHelper<string, UParticleSystem>
---@field TickInterval number
FFlyBoardBehaviorParam = {}


---@class FABF_ParticleUnit
---@field ParticleAsset UParticleSystem
---@field SocketName string
---@field bUseRelativeTransform boolean
---@field RelativeTransform FTransform
FABF_ParticleUnit = {}


---@class FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig
---@field SkeletalMeshRef USkeletalMesh
---@field AircraftIDsAndMesh ULuaMapHelper<number, USkeletalMesh>
---@field WeaponItemIDBlackList ULuaArrayHelper<number>
---@field SkeletalMeshes ULuaArrayHelper<USkeletalMesh>
FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig = {}


---@class FAvatarExtraPartCharacterStateAndStaticMeshItemConfig
---@field StaticMeshRef UStaticMesh
---@field AircraftIDsAndMesh ULuaMapHelper<number, UStaticMesh>
---@field WeaponItemIDBlackList ULuaArrayHelper<number>
---@field StaticMeshes ULuaArrayHelper<UStaticMesh>
FAvatarExtraPartCharacterStateAndStaticMeshItemConfig = {}


---@class FAvatarExtraPartCharacterStateAndSkeletalMeshConfig
---@field PawnStateSkeletalMeshConfig ULuaMapHelper<EPawnState, FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig>
---@field MovementModeSkeletalMeshConfig ULuaMapHelper<EMovementMode, FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig>
---@field CustomMovementModeSkeletalMeshConfig ULuaMapHelper<ECustomMovmentMode, FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig>
---@field PlayerHandFoldedSkeletalMeshConfig FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig
---@field PlayerCameraModeSkeletalMeshConfig ULuaMapHelper<EPlayerCameraMode, FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig>
---@field GameplayTagSkeletalMeshConfig ULuaMapHelper<FGameplayTag, FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig>
---@field AvatarSlotTypeSkeletalMeshConfig ULuaMapHelper<number, FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig>
FAvatarExtraPartCharacterStateAndSkeletalMeshConfig = {}


---@class FAvatarExtraPartLobbyStateAndSkeletalMeshConfig
---@field LobbyPawnStateSkeletalMeshConfig ULuaMapHelper<ELobbyPawnState, FAvatarExtraPartCharacterStateAndSkeletalMeshItemConfig>
FAvatarExtraPartLobbyStateAndSkeletalMeshConfig = {}


---@class FAvatarExtraPartLobbyStateAndStaticMeshConfig
---@field LobbyPawnStateStaticMeshConfig ULuaMapHelper<ELobbyPawnState, FAvatarExtraPartCharacterStateAndStaticMeshItemConfig>
FAvatarExtraPartLobbyStateAndStaticMeshConfig = {}


---@class FAvatarExtraPartCharacterStateAndStaticMeshConfig
---@field PawnStateStaticMeshConfig ULuaMapHelper<EPawnState, FAvatarExtraPartCharacterStateAndStaticMeshItemConfig>
---@field MovementModeStaticMeshConfig ULuaMapHelper<EMovementMode, FAvatarExtraPartCharacterStateAndStaticMeshItemConfig>
---@field CustomMovementModeStaticMeshConfig ULuaMapHelper<ECustomMovmentMode, FAvatarExtraPartCharacterStateAndStaticMeshItemConfig>
---@field PlayerHandFoldedStaticMeshConfig FAvatarExtraPartCharacterStateAndStaticMeshItemConfig
---@field PlayerCameraModeStaticMeshConfig ULuaMapHelper<EPlayerCameraMode, FAvatarExtraPartCharacterStateAndStaticMeshItemConfig>
---@field GameplayTagStaticMeshConfig ULuaMapHelper<FGameplayTag, FAvatarExtraPartCharacterStateAndStaticMeshItemConfig>
---@field AvatarSlotTypeStaticMeshConfig ULuaMapHelper<number, FAvatarExtraPartCharacterStateAndStaticMeshItemConfig>
FAvatarExtraPartCharacterStateAndStaticMeshConfig = {}


---@class FAvatarExtraPartSkeletalMeshConfig
---@field bAttachToCurrentHandleSlot boolean
---@field SkeletalMeshRef USkeletalMesh
---@field bUsePlayerLODFeature boolean
---@field CurrentSkeletalMeshComponent UMeshComponent
---@field AvatarExtraPartCharacterStateAndSkeletalMeshConfig FAvatarExtraPartCharacterStateAndSkeletalMeshConfig
---@field AvatarExtraPartLobbyStateAndSkeletalMeshConfig FAvatarExtraPartLobbyStateAndSkeletalMeshConfig
---@field AnimBPClass UAnimInstance
---@field bUseCustomAttachParams boolean
---@field CustomAttachSocket string
---@field CustomRelativeTransform FTransform
---@field OverrideAnimMap_Lobby ULuaMapHelper<UAnimationAsset, UAnimMontage>
---@field OverrideAnimMap_Battle ULuaMapHelper<UAnimationAsset, UAnimMontage>
---@field PlayerStateMatSelector FMatSelector_PlayerStateMatch
---@field bHideParticleInTranslucentArea boolean
---@field ParticleUnitList ULuaArrayHelper<FABF_ParticleUnit>
---@field ParticleUnitList_Lobby ULuaArrayHelper<FABF_ParticleUnit>
---@field bSelected boolean
FAvatarExtraPartSkeletalMeshConfig = {}


---@class FAvatarExtraPartStaticMeshConfig
---@field bAttachToCurrentHandleSlot boolean
---@field StaticMeshRef UStaticMesh
---@field bUsePlayerLODFeature boolean
---@field CurrentStaticMeshComponent UMeshComponent
---@field AvatarExtraPartCharacterStateAndStaticMeshConfig FAvatarExtraPartCharacterStateAndStaticMeshConfig
---@field AvatarExtraPartLobbyStateAndStaticMeshConfig FAvatarExtraPartLobbyStateAndStaticMeshConfig
---@field bUseCustomAttachParams boolean
---@field CustomAttachSocket string
---@field CustomRelativeTransform FTransform
---@field PlayerStateMatSelector FMatSelector_PlayerStateMatch
---@field bHideParticleInTranslucentArea boolean
---@field ParticleUnitList ULuaArrayHelper<FABF_ParticleUnit>
---@field ParticleUnitList_Lobby ULuaArrayHelper<FABF_ParticleUnit>
---@field bSelected boolean
FAvatarExtraPartStaticMeshConfig = {}


---@class FAvatarExtraPartMeshPack
---@field AvatarExtraPartType EABF_AvatarExtraPartType
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field bUseInLod00 boolean
---@field bHideExtraPartControlBoneParticleInTranslucentArea boolean
---@field ExtraPartControlBoneNameList ULuaArrayHelper<string>
---@field SkeletalMeshConfig FAvatarExtraPartSkeletalMeshConfig
---@field SkeletalMeshConfig_LOD FAvatarExtraPartSkeletalMeshConfig
---@field StaticMeshConfig FAvatarExtraPartStaticMeshConfig
---@field StaticMeshConfig_LOD FAvatarExtraPartStaticMeshConfig
---@field MeshPackOriginalIndex number
---@field bIsInTranslucentArea boolean
---@field RuntimeParticleList ULuaArrayHelper<UParticleSystemComponent>
---@field EnableLod00MinTCQuality number
---@field Lod00NotValidTCQualityList ULuaArrayHelper<number>
FAvatarExtraPartMeshPack = {}


---@class FAvatarExtraPartBehaviorParam
---@field TickInterval number
---@field bMeltToShareBuffCheckResult boolean
---@field PawnStateWeight ULuaMapHelper<EPawnState, number>
---@field GameplayTagWeight ULuaMapHelper<FGameplayTag, number>
---@field ExtraPartMeshPackList ULuaArrayHelper<FAvatarExtraPartMeshPack>
FAvatarExtraPartBehaviorParam = {}


---@class FFeatureUsageScene
---@field CurSelector FRoleAndQualitySelector
---@field bLod00Type boolean
---@field EnableLod00MinTCQuality number
FFeatureUsageScene = {}


---@class FTranslucentDetailConfig
---@field TranslucentDepthWriteConfig FFeatureUsageScene
---@field TwoPassTranslucentConfig FFeatureUsageScene
---@field TwoPassTranslucentepthWriteConfig FFeatureUsageScene
---@field TwoPassConfig FFeatureUsageScene
FTranslucentDetailConfig = {}


---@class FAvatarTranslucentConfig
---@field SkeletalMeshTranslucentMap ULuaMapHelper<USkeletalMesh, FTranslucentDetailConfig>
---@field StaticMeshTranslucentMap ULuaMapHelper<UStaticMesh, FTranslucentDetailConfig>
---@field SetTranslucentDepthWriteMeshObj UMeshComponent
---@field SetTwoPassTranslucentMeshObj UMeshComponent
---@field SetTwoPassMeshObj UMeshComponent
---@field SetTwoPassTranslucentDepthWriteMeshObj UMeshComponent
FAvatarTranslucentConfig = {}


---@class FAvatarTranslucentBehaviorParam
---@field AvatarTranslucentConfig FAvatarTranslucentConfig
FAvatarTranslucentBehaviorParam = {}


---@class FWeaponTranslucentConfig
---@field SkeletalMeshTranslucentMap ULuaMapHelper<USkeletalMesh, FTranslucentDetailConfig>
---@field StaticMeshTranslucentMap ULuaMapHelper<UStaticMesh, FTranslucentDetailConfig>
---@field SetTranslucentDepthWriteMeshObj UMeshComponent
---@field SetTwoPassTranslucentMeshObj UMeshComponent
---@field SetTwoPassMeshObj UMeshComponent
---@field SetTwoPassTranslucentDepthWriteMeshObj UMeshComponent
FWeaponTranslucentConfig = {}


---@class FWeaponTranslucentBehaviorParam
---@field AvatarTranslucentConfig FWeaponTranslucentConfig
FWeaponTranslucentBehaviorParam = {}


---@class FAvatarMatDynamicParam_VectorParam_BoneSocket
---@field VectorParamName string
---@field SocketName string
---@field bKeepOriginalAlpha boolean
---@field bUseCustomTransform boolean
---@field CustomTransform FTransform
---@field AvatarMatDynamicParameterType EAvatarMatDynamicParameterType
FAvatarMatDynamicParam_VectorParam_BoneSocket = {}


---@class FAvatarMatDynamicParam_FromBoneSocket
---@field MatSlotName string
---@field MatResourceReference UMaterialInterface
---@field MatResourceSoftPath FSoftObjectPath
---@field VectorParam_BoneSocket_List ULuaArrayHelper<FAvatarMatDynamicParam_VectorParam_BoneSocket>
FAvatarMatDynamicParam_FromBoneSocket = {}


---@class FAvatarMatDynamicBehaviorParam
---@field MatDynamicParam_FromBoneSocket_List ULuaArrayHelper<FAvatarMatDynamicParam_FromBoneSocket>
FAvatarMatDynamicBehaviorParam = {}


---@class FAvatarOverrideTimeSliceMat
---@field MatTimeSlice number
---@field CustomTag string
FAvatarOverrideTimeSliceMat = {}


---@class FAvatarTimeSliceMat
---@field MatResourceReference UMaterialInterface
---@field MatTimeSlice number
---@field CustomTag string
FAvatarTimeSliceMat = {}


---@class FAvatarTimeSliceMatSlotModifier
---@field MatSlotName string
---@field bOverrideTimeSliceMatSlot boolean
---@field MatInterruptInstruction EAvatarTimeSliceMatInterruptInstruction
---@field MatPlayMode EAvatarTimeSliceMatPlayMode
---@field InterruptTag string
---@field OverrideTimeSliceMat_List ULuaArrayHelper<FAvatarOverrideTimeSliceMat>
FAvatarTimeSliceMatSlotModifier = {}


---@class FAvatarTimeSliceMatBehaviorModifierParam
---@field TimeSliceMatSlotModifier_List ULuaArrayHelper<FAvatarTimeSliceMatSlotModifier>
FAvatarTimeSliceMatBehaviorModifierParam = {}


---@class FAvatarTimeSliceMatSlot
---@field MatSlotName string
---@field MatPlayMode EAvatarTimeSliceMatPlayMode
---@field bAutoPauseByCharEmote boolean
---@field TimeSliceMat_List ULuaArrayHelper<FAvatarTimeSliceMat>
---@field bInterrupted boolean
---@field MatInterruptInstruction EAvatarTimeSliceMatInterruptInstruction
---@field MatPlayInterruptModifyMode EAvatarTimeSliceMatPlayMode
---@field InterruptTag string
---@field CurTimeSliceMatIndex number
---@field CurTimeSlice number
---@field bIsPlayingForward boolean
FAvatarTimeSliceMatSlot = {}


---@class FAvatarTimeSliceMatBehaviorParam
---@field bAutoStartPlay boolean
---@field TimeSliceMatSlot_List ULuaArrayHelper<FAvatarTimeSliceMatSlot>
---@field bPauseTriggeredByCharEmote boolean
FAvatarTimeSliceMatBehaviorParam = {}


---@class FEasterEggAvatarParticleSet
---@field Particle UParticleSystem
---@field SocketName string
---@field Transform FTransform
FEasterEggAvatarParticleSet = {}


---@class FEasterEggBehaviorParam
---@field ParticleSetList ULuaArrayHelper<FEasterEggAvatarParticleSet>
---@field TickInterval number
---@field MeleeTriggerThreshold number
---@field MeleeFrameTriggerThreshold number
FEasterEggBehaviorParam = {}


---@class FPlayClothEffectConfigItem
---@field ParticleSet FEasterEggAvatarParticleSet
FPlayClothEffectConfigItem = {}


---@class FPlayClothEffectBehaviorParam
---@field PlayClothEffectConfigItemMap ULuaMapHelper<number, FPlayClothEffectConfigItem>
---@field MatchBuffParamList ULuaArrayHelper<FAvatarBuffParam>
---@field bIsEnterWater boolean
---@field PersistEffectClass UPersistEffectBase
FPlayClothEffectBehaviorParam = {}


---@class FOpenParachuteParticleParam
---@field Particle UParticleSystem
---@field SocketName string
---@field Transform FTransform
---@field Sound UAkAudioEvent
---@field bSoundUseSwitch boolean
---@field SwitchGroup string
---@field SwitchState string
---@field ContinuousSound UAkAudioEvent
---@field OpenParachuteParticleType EOpenParachuteParticleType
FOpenParachuteParticleParam = {}


---@class FOpenParachuteParticlesParam
---@field OpenParachuteParticleParam ULuaArrayHelper<FOpenParachuteParticleParam>
FOpenParachuteParticlesParam = {}


---@class FParachuteFollowingParticleParam
---@field TickInterval number
---@field bSpecialAircraftShowParticle boolean
---@field AvatarIDList ULuaArrayHelper<number>
---@field Particle UParticleSystem
---@field AvatarParticle UParticleSystem
---@field Sound UAkAudioEvent
---@field TARGETSOCKET string
---@field SoftClassPtr UAvatarBehaviorFeature
FParachuteFollowingParticleParam = {}


---@class FAvatarSetSkinWeightParam
---@field AvatarOpenSkinWeightProfileName string
FAvatarSetSkinWeightParam = {}


---@class FModifyAllMatBehaviorFeatureParamItem
---@field MatParamName string
---@field bIsFloatValue boolean
---@field LerpTime number
---@field DelayTime number
---@field LerpTimerHandle FTimerHandle
---@field CurrentPlatformTime number
---@field DynamicMatInstanceArray ULuaArrayHelper<UMaterialInstanceDynamic>
FModifyAllMatBehaviorFeatureParamItem = {}


---@class FModifyAllMatBehaviorFeatureParam
---@field ModifyAllMatBehaviorFeatureParamItemMap ULuaMapHelper<string, FModifyAllMatBehaviorFeatureParamItem>
FModifyAllMatBehaviorFeatureParam = {}


---@class FAddAvatarSubSystemBehaviorFeatureParam
---@field SubsystemList ULuaArrayHelper<UAvatarSubsystem_HandleRelatedBase>
---@field CreateConfig number
FAddAvatarSubSystemBehaviorFeatureParam = {}


---模式相关特性，一般无法直接复制 仅核心基础参数允许放到基类参数中
---@class FModeFeatureBaseInfo
---@field Priority number
FModeFeatureBaseInfo = {}


---@class FSuperPeopleProfessionAvatarBehaviorFeatureParam
---@field ModeFeatureBaseInfo FModeFeatureBaseInfo
---@field bBlockAvatarPickup boolean
---@field bMutexBehavior_BlockAvatarPickup boolean
FSuperPeopleProfessionAvatarBehaviorFeatureParam = {}


---所有表现行为特性参数都配置这个结构体下， 不同表现行为特性通过编辑器控制自己需要配置的参数显示、编辑
---@class FAvavatarBehaviorFeatureParam
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field BehaviorFeatureClass UAvatarBehaviorFeature
---@field MatDeviceRoleBehaviorParam FMatDeviceRoleBehaviorParam
---@field MatPlayerStateBehaviorParam FMatPlayerStateBehaviorParam
---@field MatDynamicBehaviorParam FAvatarMatDynamicBehaviorParam
---@field TimeSliceMatBehaviorParam FAvatarTimeSliceMatBehaviorParam
---@field ParticleHiddenBehaviorParam FParticleHiddenBehaviorParam
---@field ParticleMatDeviceRoleBehaviorParam FParticleMatDeviceRoleBehaviorParam
---@field ParticleReplaceDeviceRoleBehaviorParam FParticleReplaceDeviceRoleBehaviorParam
---@field ExtraPartBehaviorParam FAvatarExtraPartBehaviorParam
---@field FlyBoardBehaviorParam FFlyBoardBehaviorParam
---@field TranslucentBehaviorParam FAvatarTranslucentBehaviorParam
---@field EasterEggBehaviorParam FEasterEggBehaviorParam
---@field OpenParachuteParticlesParam FOpenParachuteParticlesParam
---@field PlayClothEffectBehaviorParam FPlayClothEffectBehaviorParam
---@field ModifyAllMatBehaviorParam FModifyAllMatBehaviorFeatureParam
---@field ParachuteFollowingParticleParam FParachuteFollowingParticleParam
---@field AvatarSetSkinWeightParam FAvatarSetSkinWeightParam
---@field AddAvatarSubSystemParam FAddAvatarSubSystemBehaviorFeatureParam
---@field SuperPeopleProfessionAvatarBehaviorParam FSuperPeopleProfessionAvatarBehaviorFeatureParam
FAvavatarBehaviorFeatureParam = {}


---@class FVehicleFeatureUsageScene
---@field CurSelector FNetRoleAndQualitySelector
---@field bLod00Type boolean
---@field EnableLod00MinTCQuality number
FVehicleFeatureUsageScene = {}


---@class FVehicleTranslucentDetailConfig
---@field TranslucentDepthWriteConfig FVehicleFeatureUsageScene
---@field TwoPassTranslucentConfig FVehicleFeatureUsageScene
---@field TwoPassTranslucentepthWriteConfig FVehicleFeatureUsageScene
---@field TwoPassConfig FVehicleFeatureUsageScene
FVehicleTranslucentDetailConfig = {}


---@class FVehicleTranslucentConfig
---@field SkeletalMeshTranslucentMap ULuaMapHelper<USkeletalMesh, FVehicleTranslucentDetailConfig>
---@field StaticMeshTranslucentMap ULuaMapHelper<UStaticMesh, FVehicleTranslucentDetailConfig>
---@field SetTranslucentDepthWriteMeshObj UMeshComponent
---@field SetTwoPassTranslucentMeshObj UMeshComponent
---@field SetTwoPassMeshObj UMeshComponent
---@field SetTwoPassTranslucentDepthWriteMeshObj UMeshComponent
FVehicleTranslucentConfig = {}


---@class FVehicleTranslucentBehaviorParam
---@field AvatarTranslucentConfig FVehicleTranslucentConfig
FVehicleTranslucentBehaviorParam = {}


---@class FVehicleAvatarBuffMatchParam
---@field BuffName string
---@field BuffTargetClass UObject
---@field bUseGameConcernObjFeature boolean
---@field BuffShapeType ECollisionShape
---@field AxisRelevantRange number
---@field Radius number
---@field BoxExtent FVector
FVehicleAvatarBuffMatchParam = {}


---@class FMatVehicleStateSelector
---@field MatResourceReference UMaterialInterface
---@field MatSlotName string
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field MatchBuffList ULuaArrayHelper<FVehicleAvatarBuffMatchParam>
FMatVehicleStateSelector = {}


---@class FMatVehicleStateBehaviorParam
---@field TickInterval number
---@field NormalMatSelectorList ULuaArrayHelper<FMatDeviceRoleSelector>
---@field VehicleStateMatSelectorList ULuaArrayHelper<FMatVehicleStateSelector>
FMatVehicleStateBehaviorParam = {}


---@class FVehicleAvatarBehaviorFeatureParam
---@field BehaviorFeatureClass UAvatarBehaviorFeature
---@field MatVehicleStateBehaviorParam FMatVehicleStateBehaviorParam
---@field VehicleTranslucentBehaviorParam FVehicleTranslucentBehaviorParam
FVehicleAvatarBehaviorFeatureParam = {}


---@class FAvatarBuffParam_Weapon
FAvatarBuffParam_Weapon = {}


---@class FMatSelector_WeaponStateMatch
---@field MatSlotName string
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field NormalMatResourceReference UMaterialInterface
---@field StateMatResourceReference UMaterialInterface
---@field bMatchAllCondition boolean
---@field MatchBuffList ULuaArrayHelper<FAvatarBuffParam_Weapon>
---@field MatchStateList ULuaArrayHelper<EPawnState>
---@field bIsEnterWater boolean
FMatSelector_WeaponStateMatch = {}


---@class FMatWeaponStateBehaviorParam
---@field TickInterval number
---@field bMeltToShareBuffCheckResult boolean
---@field WeaponStateMatSelectorList ULuaArrayHelper<FMatSelector_WeaponStateMatch>
FMatWeaponStateBehaviorParam = {}


---@class FWeaponAddAvatarSubSystemBehaviorFeatureParam
---@field SubsystemList ULuaArrayHelper<UAvatarSubsystem_HandleRelatedBase>
---@field CreateConfig number
FWeaponAddAvatarSubSystemBehaviorFeatureParam = {}


---@class FWeaponAvatarBehaviorFeatureParam
---@field BehaviorFeatureClass UAvatarBehaviorFeature
---@field MatWeaponStateBehaviorParam FMatWeaponStateBehaviorParam
---@field WeaponParticleHiddenBehaviorParam FWeaponParticleHiddenBehaviorParam
---@field ParticleReplaceDeviceRoleBehaviorParam FParticleReplaceDeviceRoleBehaviorParam
---@field WeaponTranslucentBehaviorParam FWeaponTranslucentBehaviorParam
---@field WeaponAddAvatarSubSystemParam FWeaponAddAvatarSubSystemBehaviorFeatureParam
FWeaponAvatarBehaviorFeatureParam = {}
