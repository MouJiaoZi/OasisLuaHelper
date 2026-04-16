---@meta

---@class EWeaponPendantSocketType
---@field First number @第一人称
---@field Third number @第三人称
---@field Lobby number @大厅
---@field ArmamentBank number @军备库
---@field Store number @商店
---@field Max_Auto number @自动
EWeaponPendantSocketType = {}


---配件槽位类别
---@class EWeaponAttachmentSocketType
---@field GunPoint number @枪口配件位
---@field Grip number @握把配件位
---@field Magazine number @弹匣配件位
---@field Gunstock number @枪托配件位
---@field OpticalSight number @瞄准镜位
---@field MasterGun number @枪本位
---@field Ammo number @弹药位
---@field Pendant number @挂件
---@field AngledOpticalSight number @侧方瞄准镜位
---@field Refit_Sight number @瞄准镜改装件
---@field Refit_RearGrip number @后握把改装件
---@field Refit_Material number @材质改装件
---@field KillCountingScreen_L number @杀人数计数屏左
---@field KillCountingScreen_R number @杀人数计数屏右
---@field Armor1 number @护甲配件槽位1
---@field Armor2 number @护甲配件槽位2
---@field Armor3 number @护甲配件槽位3
---@field Max number
EWeaponAttachmentSocketType = {}


---@class EOccupationChipSocketType
---@field None number @None
---@field Chip1 number @Circle
---@field Chip2 number @Square
---@field Chip3 number @Triangle
EOccupationChipSocketType = {}


---@class EWeaponSubSlotType
---@field None number @无
---@field UpperLarge number @大瞄准镜位
---@field UpperSmall number @小瞄准镜位
---@field UpperDefault number @机瞄准镜位
---@field Laser number @镭射瞄准器
EWeaponSubSlotType = {}


---@class EAllAttachmentSet
---@field GunPoint number @枪口配件位
---@field Grip number @握把配件位
---@field Magazine number @弹匣配件位
---@field Gunstock number @枪托配件位
---@field IronSight number @机瞄
---@field RedPointScope number @红点
---@field QXScope number @全息
---@field X2Scope number @2倍
---@field X4Scope number @4倍
---@field X8Scope number @8倍
EAllAttachmentSet = {}


---@class EWeaponMeshType
---@field StaticMesh number @静态模型
---@field SkeletalMesh number @骨骼模型
EWeaponMeshType = {}


---@class FWeaponAttachmentAttrModify
---@field ModifyAttr string
---@field ComponentClassName string
---@field Op EAttrOperator
---@field bModifyResource boolean
---@field ModifyValue number
---@field ModifyResValue UObject
FWeaponAttachmentAttrModify = {}


---@class FWeaponAttachmentAttrListModifyWrapper
---@field PreSaveGroupID number
---@field WeaponAttachmentAttrModifys ULuaArrayHelper<FWeaponAttachmentAttrModify>
FWeaponAttachmentAttrListModifyWrapper = {}


---@class FWeaponAttachmentDesc
---@field Desc string
---@field DescValue string
FWeaponAttachmentDesc = {}


---@class FLobbyWeaponIdleState
---@field StateAnim UAnimationAsset
---@field StateLength number
FLobbyWeaponIdleState = {}


---@class FParticleRes
---@field NewParticleRes UParticleSystem
---@field AttachSocket string
---@field bEnableAttachTransform boolean
---@field bEnableInGame boolean
---@field AttachTransform FTransform
FParticleRes = {}


---@class FUIWidgetRes
---@field UserWidget UUserWidget
---@field UserWidgetSoft UUserWidget
---@field AttachSocket string
---@field Trans FTransform
---@field DrawSize FVector2D
---@field bShowDefault boolean
---@field bUseScreenSpace boolean
---@field bShowOnSimulated boolean
---@field bDisableDepthTest boolean
---@field bIsSightUI boolean
FUIWidgetRes = {}


---@class FLobbyWeaponMaterialConfig
---@field SlotName string
---@field Material UMaterialInterface
---@field bEnableBaseMatReplace boolean
---@field BaseMaterial UMaterialInterface
---@field MaterialPath FSoftObjectPath
---@field OldMaterialPath FSoftObjectPath
---@field BaseMaterialPath FSoftObjectPath
---@field OldBaseMaterialInsPath FSoftObjectPath
---@field bUseOldConfig boolean
FLobbyWeaponMaterialConfig = {}


---@class FSpecialMachineLobbyConfig
---@field MaterialSettingArray ULuaArrayHelper<FLobbyWeaponMaterialConfig>
---@field SpecialMachineCondition FRoleAndQualityLobbySelector
FSpecialMachineLobbyConfig = {}


---@class FWeaponMatParam
---@field MatSlot string
---@field MatSoftRef UMaterialInterface
---@field BastMatSoftRef UMaterialInterface
FWeaponMatParam = {}


---@class FWeaponMatParamList
---@field MatParamList ULuaArrayHelper<FWeaponMatParam>
FWeaponMatParamList = {}


---@class FSpecialMachineConfig
---@field Material UMaterialInterface
---@field MeshMatList FWeaponMatParamList
---@field stMesh UStaticMesh
---@field skMesh USkeletalMesh
---@field SpecialMachineCondition FNetRoleAndQualitySelector
FSpecialMachineConfig = {}


---@class FSingleMeshSocketInfo
---@field bSk boolean
---@field SocketName string
---@field BoneName string
---@field RelativeLocation FVector
---@field RelativeRotation FRotator
---@field RelativeScale FVector
---@field Tag string
---@field bForceAlwaysAnimated boolean @If true then the hierarchy of bones this socket is attached to will always be evaluated, even if it had previously been removed due to the current lod setting
FSingleMeshSocketInfo = {}


---@class FMeshSocketInfo
---@field SpecialMachineCondition FNetRoleAndQualitySelector
---@field bUsePCMeshConfigCollection boolean
---@field MeshSocketInfoArray ULuaArrayHelper<FSingleMeshSocketInfo>
FMeshSocketInfo = {}


---@class FSpecialConfigForFPP
---@field SpecialMachineConfig ULuaArrayHelper<FSpecialMachineConfig>
---@field bUsePCMeshConfigCollection boolean
---@field SpecialMachineConfigForPC ULuaArrayHelper<FSpecialMachineConfig>
FSpecialConfigForFPP = {}


---@class FWeaponAvatarSkeletalMeshConfig
---@field SkeletalMeshRef USkeletalMesh
---@field AnimBPClass UAnimInstance
FWeaponAvatarSkeletalMeshConfig = {}


---@class FWeaponAvatarStaticMeshConfig
---@field StaticMeshRef UStaticMesh
FWeaponAvatarStaticMeshConfig = {}


---@class FWeaponAvatarMeshConfig
---@field DeviceLevelNumber number
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field SkeletalMeshConfig FWeaponAvatarSkeletalMeshConfig
---@field StaticMeshConfig FWeaponAvatarStaticMeshConfig
FWeaponAvatarMeshConfig = {}


---@class FWeaponAvatarMeshConfigCollection
---@field bUseDeviceLevelNumberSelector boolean
---@field bUseRoleAndQualityAsAssistSelector boolean
---@field MeshConfigList ULuaArrayHelper<FWeaponAvatarMeshConfig>
FWeaponAvatarMeshConfigCollection = {}


---@class FWeaponMeshCfg
---@field bUseMeshConfigCollection boolean
---@field MeshConfigCollection FWeaponAvatarMeshConfigCollection
---@field bUsePCMeshConfigCollection boolean
---@field MeshConfigCollection_PC FWeaponAvatarMeshConfigCollection
---@field stMesh UStaticMesh
---@field skMesh USkeletalMesh
---@field stMeshLod UStaticMesh
---@field skMeshLod USkeletalMesh
---@field stMeshLod00 UStaticMesh
---@field skMeshLod00 USkeletalMesh
---@field BackOptStaticMesh_Autonomous UStaticMesh
---@field BackOptMat_Autonomous UMaterialInterface
---@field BackOptStaticMesh_Simulate UStaticMesh
---@field BackOptMat_Simulate UMaterialInterface
---@field MeshOffsetAdaptation FTransform
---@field MeshOffsetAdaptationForNewFPP FTransform
---@field EnableLod00MinTCQuality number
---@field SpecialMachineLobbyConfig ULuaArrayHelper<FSpecialMachineLobbyConfig>
---@field SpecialMachineConfig ULuaArrayHelper<FSpecialMachineConfig>
---@field NewFPPConfig FSpecialConfigForFPP
---@field bForceUseNewFPP boolean
---@field bNewSkeleton boolean
---@field bOpUpdateTramsform boolean
---@field MeshMat UMaterialInterface
---@field MeshMatList FWeaponMatParamList
---@field Lod00MeshMat UMaterialInterface
---@field MeshMatParams ULuaMapHelper<string, number>
---@field baseMatClass UMaterialInterface
---@field baseMatClass_FPP UMaterialInterface
---@field UseHighQualityMatMapping boolean
---@field UserHighQualityUseIBL boolean
---@field HighDeviceUseIBL boolean
---@field ParticleEffects ULuaArrayHelper<FParticleRes>
---@field WidgetList ULuaArrayHelper<FUIWidgetRes>
---@field bForceLODInLobby boolean
---@field meshType EMeshType
---@field IdleAnim UAnimationAsset
---@field LobbyWeaponIdleStateArray ULuaArrayHelper<FLobbyWeaponIdleState>
---@field BackAttachSocketName string
---@field BagAttachSocketName string
---@field LiquidMaterialAnimatorConfigList ULuaArrayHelper<FLiquidMaterialAnimatorConfig>
---@field ReloadOffsetLeftHandLocation FVector
---@field ReloadOffsetLeftHandRotation FRotator
---@field ReloadOffsetUseRelative boolean
---@field TacticsReloadOffsetLeftHandLocation FVector
---@field OpenTacticsReloadOffsetLeftHand boolean
---@field TPPReloadOffsetLeftHandLocation FVector
---@field TPPReloadOffsetLeftHandRotation FRotator
---@field TPPReloadOffsetUseRelative boolean
---@field TPPTacticsReloadOffsetLeftHandLocation FVector
---@field TPPOpenTacticsReloadOffsetLeftHand boolean
---@field animBPClass_FPP UAnimInstance
FWeaponMeshCfg = {}


---@class FReplacedAttament
---@field targetWeaponIDList ULuaArrayHelper<FItemDefineID>
---@field replacedAttachmentCfg FWeaponMeshCfg
---@field AttachmentAnimListClass ULuaArrayHelper<UAnimationAsset>
---@field replacedAttachmentMatIndex number
FReplacedAttament = {}


---@class FWeaponAttachmentConfig
---@field AttachmentName string
---@field AttachmentSocketType EWeaponAttachmentSocketType
---@field SubSlot EWeaponSubSlotType
---@field IsExtendMaxBulletNumInOneClip boolean
---@field ExtendMaxBulletNumInOneClipID number
---@field IsSilencer boolean
---@field IsFireSuppressor boolean
---@field IsCompensator boolean
---@field IsSightDefaultColor boolean
---@field WeaponAttachmentAttrModifys ULuaArrayHelper<FWeaponAttachmentAttrModify>
---@field SpecialWeaponAttachmentAttrModifysMap ULuaMapHelper<number, FWeaponAttachmentAttrListModifyWrapper>
---@field WeaponAttachmentDescs ULuaArrayHelper<FWeaponAttachmentDesc>
---@field socketTypeToName ULuaMapHelper<number, string>
---@field MeshPackage FWeaponMeshCfg
---@field replacementWeapon ULuaArrayHelper<FReplacedAttament>
---@field AttachmentAnimList ULuaArrayHelper<UAnimationAsset>
---@field AttachmentAnimListClass ULuaArrayHelper<UAnimationAsset>
---@field ParentID FItemDefineID
---@field UseSightCrossHairDistance boolean
---@field SightMaterialCrossHairDistance number
---@field SightCircleRadius number
FWeaponAttachmentConfig = {}


---@class FWeaponParticle
---@field SocketForParticle string
---@field WeaponParticle UParticleSystem
---@field OffsetTrans FTransform
FWeaponParticle = {}


---@class FWeaponAttachmentConfigWrapper
---@field WeaponAttachmentAttrList ULuaArrayHelper<FPESkillAttributeItem>
FWeaponAttachmentConfigWrapper = {}


---@class FCustomWeaponMeshConfig
---@field ItemID number
---@field MeshType EWeaponMeshType
---@field StMesh UStaticMesh
---@field SkMesh USkeletalMesh
FCustomWeaponMeshConfig = {}


---@class FCustomWeaponMeshResult
---@field MeshType EMeshType
---@field AssetPath FSoftObjectPath
FCustomWeaponMeshResult = {}


---@class FCustomItemHandleMeshConfig
---@field MeshType EWeaponMeshType
---@field StMesh UStaticMesh
---@field SkMesh USkeletalMesh
FCustomItemHandleMeshConfig = {}
