---@meta

---@class EVehicleAvatarSlot
---@field MasterVehicle number @载具
---@field Pendant_SailingWake number @航行尾迹
---@field Pendant_TailFlag number @尾部旗帜
---@field Pendant_BowAccessory number @船头配饰
---@field Pendant_AccelerationEjector number @加速喷射器
---@field WheelVehicleFrontLicensePlate number @前车牌
---@field WheelVehicleBackLicensePlate number @后车牌
---@field Pendant_DynamicShow0 number @动态显示配件0
---@field Pendant_DynamicShow1 number @动态显示配件1
---@field Pendant_DynamicShow2 number @动态显示配件2
---@field FlowingLightPendant number @载具流光挂件
---@field Max number @最大值
EVehicleAvatarSlot = {}


---@class EVehicleMeshMode
---@field TPP number @第三人称模型
---@field FPP number @第一人称模型
---@field Scope number @开镜瞄准模型
EVehicleMeshMode = {}


---@class EVehicleAdvancedConditionType
---@field TPP number @第三人称
---@field FPP number @第一人称
---@field None number @无
EVehicleAdvancedConditionType = {}


---@class EBackpackHandleVehicleType
---@field Car number @四轮汽车
---@field Motor number @摩托车
---@field Other number @其他
EBackpackHandleVehicleType = {}


---@class EAvatarVehicleStatus
---@field NoneStatus number @无效状态
---@field DefaultStatus number @Default
---@field EngineOn number @引擎启动
---@field Running number @行驶中
---@field Boosting number @加速
---@field Brake number @刹车
EAvatarVehicleStatus = {}


---@class EVehicleBurnTireMode
---@field FrontWheelDrive number @前轮烧胎
---@field RearWheelDrive number @后轮烧胎
---@field FourWheelDrive number @四轮烧胎
EVehicleBurnTireMode = {}


---@class EVehiclePengState
---@field NoPeng number @CarHasNoPeng
---@field Opened number @PengOpened
---@field Closed number @PengClosed
---@field Opening number @PengOpening
---@field Closing number @PengClosing
EVehiclePengState = {}


---@class EVehicleTireState
---@field Illegal number @TireIllegal
---@field Static number @TireStatic
---@field Burning number @TireBurning
---@field Entering number @TireEntering
---@field EnteringStatic number @TireEnteringStatic
---@field XuanMu number @XuanMuDengChang
---@field UTurn number @UTurn
EVehicleTireState = {}


---@class FVehilePawnAnimData
---@field VehAnimType ECharacterVehicleAnimType
---@field VehAnimSoftPtr UAnimationAsset
FVehilePawnAnimData = {}


---@class FVehilePawnAnimList
---@field VehicleSeat string
---@field FPPHeadExtraOffset FVector
---@field AnimDataList ULuaArrayHelper<FVehilePawnAnimData>
FVehilePawnAnimList = {}


---@class FMaterialInstanceSet
---@field MatSlot string
FMaterialInstanceSet = {}


---@class FVehicleAvatarMaterialName
---@field SlotName string
---@field ParamName string
FVehicleAvatarMaterialName = {}


---@class FVehicleAvatarMaterialValue
---@field IsLoop boolean
---@field IsPingPong boolean
---@field StateValue number
---@field ValueRange FVector2D
---@field LoopSpeed number
FVehicleAvatarMaterialValue = {}


---@class FVehicleAvatarMaterialData
---@field NamePair FVehicleAvatarMaterialName
---@field VehicleStatusValueMap ULuaMapHelper<EAvatarVehicleStatus, FVehicleAvatarMaterialValue>
---@field UseLerp boolean
---@field AverageLerpSpeed number
---@field CurValue number
---@field CurLoopSpeed number
---@field CurState EAvatarVehicleStatus
FVehicleAvatarMaterialData = {}


---@class FVehicleLevelSeqIntro
---@field TagToMountPointMap ULuaMapHelper<string, string>
FVehicleLevelSeqIntro = {}


---@class FVehicleShapePreventPenetratingConfig
---@field bOverrideBlueprintConfig boolean
---@field bUseSphereSweepToPreventPenetrating boolean
---@field SphereSweepToPreventPenetrating_SphereRadius ULuaArrayHelper<number>
---@field SphereSweepToPreventPenetrating_Offset ULuaArrayHelper<FVector>
---@field bUseBoxOverlapToPreventPenetrating boolean
---@field BoxOverlapPreventPenetrating_BoxExtend ULuaArrayHelper<FVector>
---@field BoxOverlapPreventPenetrating_Offset ULuaArrayHelper<FVector>
FVehicleShapePreventPenetratingConfig = {}


---@class FVehicleExtraMesh
---@field SocketForExtra string
---@field ExtraMesh UStaticMesh
---@field ExtraMeshMaterial UMaterialInterface
---@field DstTags ULuaArrayHelper<string>
FVehicleExtraMesh = {}


---@class FVehicleBehaveParticle
---@field SocketForExtra string
---@field BehaveParticle UParticleSystem
---@field OffsetTrans FTransform
FVehicleBehaveParticle = {}


---@class FParticleAndAudio
---@field BehaveParticles ULuaArrayHelper<FVehicleBehaveParticle>
---@field BehaveAudio UAkAudioEvent
FParticleAndAudio = {}


---@class FVehicleExtraParticle
---@field SocketForExtra string
---@field ExtraParticle UParticleSystem
---@field OffsetTrans FTransform
---@field bDeactivateWhenMove boolean
---@field bShowForDisplayActor boolean
FVehicleExtraParticle = {}


---@class FVehicleShowParticle
---@field ShowParticleList ULuaArrayHelper<FVehicleExtraParticle>
---@field ShowParticleAudio UAkAudioEvent
FVehicleShowParticle = {}


---@class FStreamerMatBaseData
---@field StreamerId number
---@field StreamerMat ULuaArrayHelper<FMaterialAssetSet>
---@field StreamerParticle ULuaArrayHelper<FVehicleExtraParticle>
FStreamerMatBaseData = {}


---@class FLoobyMarketSuperHighConfig
---@field MarketHighMesh USkeletalMesh
---@field MarketHighMaterialList ULuaArrayHelper<FMaterialAssetSet>
---@field MarketHighMeshDstTag string
---@field SpecialMachineCondition number
FLoobyMarketSuperHighConfig = {}


---@class FMarketHigh
---@field MarketHighMesh USkeletalMesh
---@field MarketHighMaterialList ULuaArrayHelper<FMaterialAssetSet>
---@field MarketHighMeshDstTag string
FMarketHigh = {}


---@class FFlowLightMaterialListStruct
---@field MaterialList ULuaArrayHelper<FMaterialAssetSet>
FFlowLightMaterialListStruct = {}


---@class FFlowLightVehicleAvatarMaterialEffectDataSettingStruct
---@field VehicleAvatarMaterialEffectDataSetting ULuaArrayHelper<FVehicleAvatarMaterialEffectData>
---@field UseOtherIndexParameter number
FFlowLightVehicleAvatarMaterialEffectDataSettingStruct = {}


---@class FSubAnimInstanceStruct
---@field SeatAnimInsSlotName string
---@field SubAnimBPClass UAnimInstance
FSubAnimInstanceStruct = {}


---@class FVehicleAvatarSkeletalMeshConfig
---@field SkeletalMeshRef USkeletalMesh
---@field AnimBPClass UAnimInstance
FVehicleAvatarSkeletalMeshConfig = {}


---@class FVehicleAvatarStaticMeshConfig
---@field StaticMeshRef UStaticMesh
FVehicleAvatarStaticMeshConfig = {}


---@class FVehicleAvatarMeshConfig
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field SkeletalMeshConfig FVehicleAvatarSkeletalMeshConfig
---@field StaticMeshConfig FVehicleAvatarStaticMeshConfig
FVehicleAvatarMeshConfig = {}


---@class FVehicleAvatarMeshConfigCollection
---@field MeshConfigList ULuaArrayHelper<FVehicleAvatarMeshConfig>
FVehicleAvatarMeshConfigCollection = {}


---@class FVehicleTwinsCfg
---@field TwinsMaterialList ULuaArrayHelper<FMaterialAssetSet>
---@field TwinsParticleList ULuaArrayHelper<FVehicleExtraParticle>
---@field EnterAnimAudio UAkAudioEvent
---@field EnterParticleList ULuaArrayHelper<FVehicleExtraParticle>
---@field BurnTireAudio UAkAudioEvent
FVehicleTwinsCfg = {}


---@class FVehicleMeshCfg
---@field bUseMeshConfigCollection boolean
---@field bUsePCMeshConfigCollection boolean
---@field MeshConfigCollection_FPP_PC FVehicleAvatarMeshConfigCollection
---@field MeshConfigCollection_TPP_PC FVehicleAvatarMeshConfigCollection
---@field bUsePCBrokenMeshConfigCollection boolean
---@field MeshConfigCollection_Broken_PC FVehicleAvatarMeshConfigCollection
---@field LoobyMarketSuperHighConfig ULuaArrayHelper<FLoobyMarketSuperHighConfig>
---@field MarketHighSetting FMarketHigh
---@field LobbyMesh USkeletalMesh
---@field LobbyMeshMat ULuaArrayHelper<FMaterialAssetSet>
---@field StreamerMeshMat ULuaArrayHelper<FStreamerMatBaseData>
---@field FPPMesh USkeletalMesh
---@field TPPMesh USkeletalMesh
---@field ScopeMesh USkeletalMesh
---@field FPPMeshLOD USkeletalMesh
---@field TPPMeshLOD USkeletalMesh
---@field ScopeMeshLOD USkeletalMesh
---@field MaterialList ULuaArrayHelper<FMaterialAssetSet>
---@field MaterialListLOD ULuaArrayHelper<FMaterialAssetSet>
---@field DeviceQualityGradeToUseLowLevelResource number
---@field DeviceQualityGradeToUseHighLevelResource number
---@field FlowLightMaterialList ULuaMapHelper<number, FFlowLightMaterialListStruct>
---@field FlowLightMaterialListLOD ULuaMapHelper<number, FFlowLightMaterialListStruct>
---@field AnimBPClass UAnimInstance
---@field SubAnimBPInfo FSubAnimInstanceStruct
---@field DSShouldApplyAnimBPClass boolean
---@field ExtraMeshMat ULuaArrayHelper<FVehicleExtraMesh>
---@field ExtraParticle ULuaArrayHelper<FVehicleExtraParticle>
---@field ParticleShow ULuaMapHelper<string, FVehicleShowParticle>
---@field TwinsConFig ULuaArrayHelper<FVehicleTwinsCfg>
---@field BrokenStaticMesh UStaticMesh
---@field BrokenSkeletalMesh USkeletalMesh
---@field BrokenMeshMaterialList ULuaArrayHelper<FMaterialAssetSet>
---@field BrokenMeshMaterialListLOD ULuaArrayHelper<FMaterialAssetSet>
---@field BrokenMatList ULuaArrayHelper<FMaterialInstanceSet>
---@field MatInstanceMapping ULuaMapHelper<UMaterialInterface, UMaterialInterface>
---@field UseHighQualityMatMapping boolean
---@field HighQualitySlotName_BlackList ULuaArrayHelper<string>
---@field UserHighQualityUseIBL boolean
---@field HighDeviceUseIBL boolean
---@field VehicleAvatarMaterialDataSetting ULuaArrayHelper<FVehicleAvatarMaterialData>
---@field VehicleAvatarMaterialEffectDataSettingNew ULuaMapHelper<number, FFlowLightVehicleAvatarMaterialEffectDataSettingStruct>
---@field OverrideAvatarMaterialEffectManagerClass UAvatarMaterialEffectManager
---@field VehicleSeatsAnimOverride ULuaArrayHelper<FVehilePawnAnimList>
---@field WheelSetups ULuaArrayHelper<FWheelSetup>
---@field WheelHubSetups ULuaArrayHelper<FWheelHubSetup>
---@field TrailOffsetArray ULuaArrayHelper<FVector>
---@field IsForceOverrideTrailOffset boolean
---@field bEnableGearSetup boolean
---@field GearSetup FVehicleTransmissionData
---@field bEnableCenterOfMassOffset boolean
---@field CenterOfMassOffset FVector
---@field bEnableUseOverrideCOM boolean
---@field OverrideCOM FVector
---@field AdvancedConditionType EVehicleAdvancedConditionType
---@field AdvancedSlotName string
---@field AdvancedMaterial UMaterialInterface
---@field ShapePreventPenetratingConfig FVehicleShapePreventPenetratingConfig
---@field CanBurnT boolean
---@field LobbyBurnTireAudio UAkAudioEvent
---@field LobbyAnimBPClass UAnimInstance
---@field bHasAnimBPVehicleLobby boolean
---@field bCanHoodLobby boolean
---@field LobbySubAnimBPClass UAnimInstance
---@field bHasAnimBPVehicle boolean
---@field LobbyVehicleIdleAnim UAnimationAsset
---@field DriverAnimListComponent UUAECharAnimListCompBase
---@field VehicleAnimListComponent UUAEVehicleAnimListCompBase
---@field DriverPistolAnimListComponent UUAEChaVehAnimListComponent
---@field WeaponAnimNameAvatarSuffix string
---@field VehicleRootCurveData ULuaArrayHelper<FRootCurveDataConfig>
---@field bEnableIK boolean
FVehicleMeshCfg = {}


---@class FMontageWithParticleAudio
---@field Anim UAnimationAsset
---@field ParticleAndAudios ULuaMapHelper<number, FParticleAndAudio>
---@field PendantAnimList ULuaMapHelper<string, UAnimationAsset>
FMontageWithParticleAudio = {}


---@class FVehicleBehaviorCfg
---@field FlameAnim FMontageWithParticleAudio
---@field DriftAnim FMontageWithParticleAudio
---@field ControlAnim FMontageWithParticleAudio
---@field MultiParticleAudiosShow ULuaMapHelper<number, FParticleAndAudio>
---@field DiversionShow FMontageWithParticleAudio
FVehicleBehaviorCfg = {}


---@class FVehicleMotorbikeConfigOverride
---@field DriverSpineBoneName string
---@field bOverrideDriverSpineOffset boolean
---@field DriverSpineOffset FVector
---@field DriverSpineOffsetAddictiveLeftHand FVector
---@field DriverSpineOffsetAddictiveRightHand FVector
---@field DriverSpineSafeArea FBox
FVehicleMotorbikeConfigOverride = {}


---@class FVehicleAvatarSkillCfg
---@field SkillBP UVehicleSkillBaseHandle
---@field ShouldRemoveWhenChangeToOtherAvatar boolean
---@field ShouldRemoveWhenChangeToSiblingAvatar boolean
FVehicleAvatarSkillCfg = {}


---@class FVehiclePendantConfig
---@field VehiclePendantSlotType EVehicleAvatarSlot
---@field SkeletalMesh USkeletalMesh
---@field SkeletalMeshLow USkeletalMesh
---@field StaticMesh UStaticMesh
---@field MaterialList ULuaArrayHelper<FMaterialAssetSet>
---@field MaterialListLow ULuaArrayHelper<FMaterialAssetSet>
---@field AnimBPClass UAnimInstance
---@field ExtraParticleMap ULuaMapHelper<string, FParticleSoftWrapperArray>
---@field ForceUseStaticMeshDeviceQualityLevel number
---@field ForceUseLowSkeletalMeshDeviceQualityLevel number
---@field VehicleAvatarMaterialEffectDataSettingNew ULuaMapHelper<number, FFlowLightVehicleAvatarMaterialEffectDataSettingStruct>
---@field HideWhenScope boolean
FVehiclePendantConfig = {}


---@class FMultipleInstanceVehiclePendantConfig
---@field bIsMultipleInstance boolean
---@field MainInstanceSlotID EVehicleAvatarSlot
---@field CloneInstanceList ULuaArrayHelper<EVehicleAvatarSlot>
FMultipleInstanceVehiclePendantConfig = {}


---@class FVehiclePlateConfig
---@field CustomMat UMaterialInterface
---@field NameColor FSlateColor
---@field NameFontInfo FSlateFontInfo
FVehiclePlateConfig = {}


---@class FVehicleHandlePackage
FVehicleHandlePackage = {}


---@class UBackpackVehicleBaseHandle: UBattleItemHandleBase, IBackpackAvatarInterface
---@field MeshPackage FVehicleMeshCfg
---@field BehaviorPackage FVehicleBehaviorCfg
---@field SlotType EVehicleAvatarSlot
---@field CustomNameMat UMaterialInterface
---@field VariablesNeedCopyToDS ULuaArrayHelper<string>
---@field PreLoadObjects ULuaArrayHelper<UObject>
local UBackpackVehicleBaseHandle = {}

---@param HandleBase UBattleItemHandleBase
function UBackpackVehicleBaseHandle:PreLoadVehicleAsset(HandleBase) end

---@param handle UBattleItemHandleBase
---@param AssetRef FSoftObjectPath
---@param bUseLod00 boolean
---@param bExtraConfig boolean
---@return boolean
function UBackpackVehicleBaseHandle:GetMeshResRef(handle, AssetRef, bUseLod00, bExtraConfig) end


---@class UBackpackVehicleHandle: UBackpackVehicleBaseHandle
---@field ParentResList ULuaArrayHelper<FItemDefineID>
---@field SiblingAvatarConfig FSiblingAvatarConfig
---@field OwnerVehicleClass ASTExtraVehicleBase
---@field LobbyInteraction ULuaArrayHelper<FLobbyActionEntity>
---@field LicensePlateOffsetMap ULuaMapHelper<EVehicleAvatarSlot, FTransform>
---@field PlateID number
---@field DazzlingAppearanceTipID number
---@field VehicleIntroLevelSeq ULevelSequence
---@field VehicleLevelSeqMount string
---@field CirclePlaneLevelSeqMount string
---@field LevelSeqMountInfo ULuaArrayHelper<FVehicleLevelSeqIntro>
---@field CharacterMeshClipDatas ULuaArrayHelper<FCharacterMeshClipData>
---@field MotorbikeConfigOverride FVehicleMotorbikeConfigOverride
---@field VehicleAvatarBehaviorFeatureParamList ULuaArrayHelper<FVehicleAvatarBehaviorFeatureParam>
---@field CanTankTurn boolean
---@field LobbyTankTurn_YawSpeedInDegrees number
---@field LobbyUTurnAudio UAkAudioEvent
---@field LobbyUTurnStopAudio UAkAudioEvent
---@field CanVehicleShowHolographicEffect boolean
---@field CanVehicleShowDissolveEffect boolean
---@field VehiclePendantList ULuaArrayHelper<number>
---@field EnableDynamicShowVehiclePendant boolean
---@field LobbyDynamicVehiclePendant UBackpackLobbyItemHandle
---@field LobbyVehiclePendantList ULuaMapHelper<string, UBackpackLobbyItemHandle>
---@field VehicleSkillHandleList ULuaArrayHelper<FVehicleAvatarSkillCfg>
---@field VehicleAbilityHandleList ULuaArrayHelper<FGameModePlayerItem>
---@field CanLaunchControl boolean
---@field EngineStartEffect FParticleSoftWrapper
local UBackpackVehicleHandle = {}

---@param WorldContextObj UObject
---@return boolean
function UBackpackVehicleHandle:IsVirtualAvatarHandle(WorldContextObj) end


---@class UBackpackVehiclePendantHandle: UBattleItemHandleBase, IBackpackAvatarInterface, IInterface_MultipleAvatarEntityHandleInstance
---@field PendantConfig FVehiclePendantConfig
---@field bDefaultHidden boolean
---@field MultipleInstanceConfig FMultipleInstanceVehiclePendantConfig
---@field VehiclePlateConfig FVehiclePlateConfig
local UBackpackVehiclePendantHandle = {}
