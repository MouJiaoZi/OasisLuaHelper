---@meta

---@class EAvatarSlotType
---@field EAvatarSlotType_NONE number @NONE
---@field EAvatarSlotType_HeadEquipemtSlot number @头颅
---@field EAvatarSlotType_HairEquipemtSlot number @头发
---@field EAvatarSlotType_HatEquipemtSlot number @帽子
---@field EAvatarSlotType_FaceEquipemtSlot number @脸部
---@field EAvatarSlotType_ClothesEquipemtSlot number @衣服
---@field EAvatarSlotType_PantsEquipemtSlot number @裤子
---@field EAvatarSlotType_ShoesEquipemtSlot number @鞋子
---@field EAvatarSlotType_BackpackEquipemtSlot number @背包
---@field EAvatarSlotType_HelmetEquipemtSlot number @头盔
---@field EAvatarSlotType_ArmorEquipemtSlot number @防弹衣
---@field EAvatarSlotType_ParachuteEquipemtSlot number @降落伞
---@field EAvatarSlotType_GlassEquipemtSlot number @眼镜
---@field EAvatarSlotType_NightVisionEquipemtSlot number @夜视仪
---@field EAvatarSlotType_WingClothesGlideTrail number @翼装尾迹
---@field EAvatarSlotType_BackPack_PendantSlot number @背包挂件
---@field EAvatarSlotType_FacePainting number @脸部涂装
---@field EAvatarSlotType_BackPack_ExtendPendantSlot number @背包自带宠物
---@field EAvatarSlotType_OccupationCard number @职业卡
---@field EAvatarSlotType_OccupationArmband number @臂章
---@field EAvatarSlotType_SwimSuit number @泳衣
---@field EAvatarSlotType_ActivitySlot number @活动装扮
---@field EAvatarSlotType_MechaChestSlot number @外骨骼胸甲
---@field EAvatarSlotType_MechaArmSlot number @外骨骼臂甲
---@field EAvatarSlotType_MechaLegSlot number @外骨骼腿甲
---@field EAvatarSlotType_ModeAvatarFeature_ClothesSlot number @模式特殊衣服
---@field EAvatarSlotType_EmergencyCallEquipment number @紧急呼叫器
---@field EAvatarSlotType_BoxingGloves number @拳套
---@field EAvatarSlotType_CoverAll number @特殊部位，覆盖所有
---@field EAvatarSlotType_Max number @Max
EAvatarSlotType = {}


---@class EAvatarSubSlot
---@field ESubSlot_None number @无
---@field ESubSlot_HairOrnament number @发饰子类
---@field ESubSlot_VeilSlot number @面纱子类
---@field ESubSlot_HoodSlot number @兜帽服子类
---@field ESubSlot_SilkStockingSlot number @丝袜子类
---@field ESubSlot_StockingSlot number @长筒袜子类
---@field ESubSlot_BootsSlot number @长靴子类
---@field ESubSlot_HighTops number @高帮鞋
---@field ESubSlot_Glide number @尾迹类
---@field ESubSlot_Wingcloth number @飞行服类
EAvatarSubSlot = {}


---@class EReplaceSlot
---@field EReplaceType_NONE number @NONE
---@field EReplaceType_HeadEquipemtSlot number @头颅
---@field EReplaceType_HairEquipemtSlot number @头发
---@field EReplaceType_HatEquipemtSlot number @帽子
---@field EReplaceType_FaceEquipemtSlot number @脸部
---@field EReplaceType_ClothesEquipemtSlot number @衣服
---@field EReplaceType_PantsEquipemtSlot number @裤子
---@field EReplaceType_ShoesEquipemtSlot number @鞋子
---@field EReplaceType_BackpackEquipemtSlot number @背包
---@field EReplaceType_HelmetEquipemtSlot number @头盔
---@field EReplaceType_ArmorEquipemtSlot number @防弹衣
---@field EReplaceType_ParachuteEquipemtSlot number @降落伞
---@field EReplaceType_GlassEquipemtSlot number @眼镜
---@field ESubSlot_HairOrnament number @发饰子类
---@field EReplaceType_VeilSlot number @面纱子类
---@field EReplaceType_HoodSlot number @兜帽服子类
---@field EReplaceType_SilkStockingSlot number @丝袜子类
---@field EReplaceType_StockingSlot number @长筒袜子类
---@field EReplaceType_BootsSlot number @长靴子类
---@field EReplaceType_HighTops number @高帮鞋
EReplaceSlot = {}


---标记Slot特性
---@class EAvatarSlotFeatureTag
---@field ASFT_None number @ASFT_None
---@field ASFT_Head_All number @头颅_所有
---@field ASFT_Hair_All number @头发_所有
---@field ASFT_Hat_All number @帽子_所有
---@field ASFT_Hat_CoverWholeHead number @帽子_覆盖整个头颅
---@field ASFT_Face_All number @脸部_所有
---@field ASFT_Face_CoverWholeHead number @脸部_覆盖整个头颅
---@field ASFT_Clothes_All number @衣服_所有
---@field ASFT_Pants_All number @裤子_所有
---@field ASFT_Shoes_All number @鞋子_所有
---@field ASFT_Backpack_All number @背包_所有
---@field ASFT_Helmet_All number @头盔_所有
---@field ASFT_Armor_All number @防弹衣_所有
---@field ASFT_Parachute_All number @降落伞_所有
---@field ASFT_Glass_All number @眼镜_所有
---@field ASFT_NightVision_All number @夜视仪_所有
---@field ASFT_Max number @ASFT_Max
EAvatarSlotFeatureTag = {}


---@class EFlowLightEmoteType
---@field Emote number @普通表情
---@field SP_Emote number @专属表情
---@field FashionShow number @FashionShow表情
EFlowLightEmoteType = {}


---@class EFlowLightGenderType
---@field OnlyBoy number @男性专用
---@field OnlyGirl number @女性专用
---@field General number @通用
EFlowLightGenderType = {}


---@class EMeshType
---@field Skeletal number @骨骼模型
---@field Static number @静态模型
---@field SkeletalWithSocket number @带挂接点的骨骼
EMeshType = {}


---@class EAvatarVisiblityType
---@field EAllVisible number @所有人可见
---@field ETeammateOnly number @仅队友可见
EAvatarVisiblityType = {}


---@class ECharacterAnimOverrideType
---@field ECAOT_Default number @默认动作
---@field ECAOT_FlySuit number @飞行服
---@field ECAOT_FlyDevice number @飞行器
---@field ECAOT_Parachute number @降落伞
ECharacterAnimOverrideType = {}


---@class EUseSWPState
---@field IsFPP number @FPP开启第一人称视角
---@field GISAnim number @GIS触发主角动画
---@field HaveBackPack number @背着背包
EUseSWPState = {}


---@class ELobbyUseSWPState
---@field Lobby_PlayEmote number @大厅表情动画
---@field Lobby_Paragliding number @大厅飞行器动画
---@field Lobby_FashionShow number @大厅出场动画（FashionShow）
---@field Lobby_SPEmote number @大厅专属动画（SPEmote）
---@field Lobby_Error number @异常状态
ELobbyUseSWPState = {}


---@class EAvatarEmoteType
---@field EAvatarEmote_Run number @疾跑
---@field EAvatarEmote_Jump number @跳跃
---@field EAvatarEmote_Climb number @翻越
---@field EAvatarEmote_AddHP1 number @加血
EAvatarEmoteType = {}


---@class EBattleResultTeamNum
---@field TeamNum_Single number @一个
---@field TeamNum_Double number @两个
---@field TeamNum_Triple number @三个
---@field TeamNum_Que number @四个
EBattleResultTeamNum = {}


---@class ECharacterAvatarState
---@field NoneState number @无效状态
---@field DefaultState number @Default
---@field SpecialEmote number @专属表情
ECharacterAvatarState = {}


---@class EAvatarMaterialParamType
---@field ScalarParameterValues number
---@field VectorParameterValues number
EAvatarMaterialParamType = {}


---@class EAvatarVehicleState
---@field NoneState number @无效状态
---@field DefaultState number @Default
---@field EngineOn number @引擎启动
---@field Running number @行驶中
---@field Boosting number @加速
---@field Brake number @刹车
EAvatarVehicleState = {}


---@class EMeshDeviceAdaptationType
---@field NoAdaptation number @不使用适配Mesh
---@field MidLowAdaptation number @中低端机使用适配Mesh
---@field LowAdaptation number @仅低端机使用适配Mesh
EMeshDeviceAdaptationType = {}


---@class EAvatarNewFPPMatSetType
---@field None number @不做特殊处理，使用Mesh原有配置
---@field Copy number @从TPP拷贝
---@field SameAsTPP number @像TPP一样走肤色和高级材质匹配流程
EAvatarNewFPPMatSetType = {}


---@class EAvatarMatCutCondition
---@field Normal_EmptyHanded number @普通状态 空手
---@field Normal_MeleeWeapon number @普通状态 近战武器
---@field Normal_ThrowWeapon number @普通状态 投掷物
---@field Normal_ShootWeapon number @普通状态 射击类武器
---@field Driver_EmptyHanded number @司机位 空手
---@field Driver_MeleeWeapon number @司机位 近战武器
---@field Driver_ThrowWeapon number @司机位 投掷物
---@field Driver_ShootWeapon number @司机位 射击类武器
---@field Passenger_EmptyHanded number @乘客位 空手
---@field Passenger_MeleeWeapon number @乘客位 近战武器
---@field Passenger_ThrowWeapon number @乘客位 投掷物
---@field Passenger_ShootWeapon number @乘客位 射击类武器
---@field Passenger_Lean_EmptyHanded number @乘客位 探头 空手
---@field Passenger_Lean_MeleeWeapon number @乘客位 探头 近战武器
---@field Passenger_Lean_ThrowWeapon number @乘客位 探头 投掷物
---@field Passenger_Lean_ShootWeapon number @乘客位 探头 射击类武器
---@field AllCut number
EAvatarMatCutCondition = {}


---@class EMatSlotCutType
---@field Default number
---@field ExtraPart number
EMatSlotCutType = {}


---@class ERetargetAvatarAdaptSpace
---@field RAAS_None number @Default Master Component RootBone Space Addtive
---@field RAAS_MasterComponent_RootBoneSpace number @Master Component RootBone Space
---@field RAAS_MasterComponent_ParentSpace number @Master Component Parent (Bone or Socket) Space
---@field RAAS_RetargetComponent_RootBoneSpace number @Retarget Component RootBone Space
---@field RAAS_RetargetComponent_ParentSpace number @Retarget Component Parent Space
---@field RAAS_MasterComponent_MeshShift number @Shift Mesh by Master Component Anim(Anim Instance Required)
---@field RAAS_RetargetComponent_ParentSpace_CopyPose number @Retarget Component Parent Space, Use Retarget Component as Copy Pose Mesh
ERetargetAvatarAdaptSpace = {}


---@class FModeAvatarFeatureInverseBoneRetargetAdaptInfo
---@field bIgnoreAdapt boolean
---@field bIgnoreAssignedRefPose boolean
FModeAvatarFeatureInverseBoneRetargetAdaptInfo = {}


---@class FWeaponOffsetTrans
---@field WeaponId number
---@field WeaponOffsetTrans FTransform
FWeaponOffsetTrans = {}


---@class FGenderWithAnimAsset
---@field GenderType EFlowLightGenderType
---@field AnimAsset UAnimationAsset
FGenderWithAnimAsset = {}


---@class FMeshPackGenderAnim
---@field MeshPackConfigIndex number
---@field GenderAnim ULuaArrayHelper<FGenderWithAnimAsset>
FMeshPackGenderAnim = {}


---@class FExtraPartGenderAnim
---@field ExtraPartParamIndex number
---@field MeshPackGenderAnim ULuaArrayHelper<FMeshPackGenderAnim>
FExtraPartGenderAnim = {}


---@class FExtraPartGenderWithAnimAssetArray
---@field GenderWithAnimAssetArray ULuaArrayHelper<FExtraPartGenderAnim>
FExtraPartGenderWithAnimAssetArray = {}


---@class FSWSHideBoneConfig
---@field bCheckLod00 boolean
---@field OverrideSlotArray ULuaArrayHelper<EAvatarSlotType>
FSWSHideBoneConfig = {}


---@class FGripWeaponIdleConfig
---@field GenderType EFlowLightGenderType
---@field GripWeaponIdle UAnimationAsset
FGripWeaponIdleConfig = {}


---@class FGripWeaponIdleTypeConfig
---@field TypeName string
---@field GripWeaponIdleAnimArray ULuaArrayHelper<FGripWeaponIdleConfig>
---@field GripWeaponWingIdleAnimArray ULuaMapHelper<EAvatarSlotType, FExtraPartGenderWithAnimAssetArray>
---@field bEnableWeaponOffset boolean
---@field WeaponOffsetTransArray ULuaArrayHelper<FWeaponOffsetTrans>
FGripWeaponIdleTypeConfig = {}


---@class FFlowLightMatParamInput
---@field GenderType EFlowLightGenderType
---@field MatSlotName string
---@field MatParamName string
---@field bUseFloatCurve boolean
FFlowLightMatParamInput = {}


---@class FFlowLightEmoteTypeConfig
---@field EmoteType EFlowLightEmoteType
---@field EmoteTypeMatConfigArray ULuaArrayHelper<FFlowLightMatParamInput>
FFlowLightEmoteTypeConfig = {}


---@class FFlowLightSpecificEmoteConfig
---@field EmoteIdArray ULuaArrayHelper<number>
---@field SpecificEmoteMatConfigArray ULuaArrayHelper<FFlowLightMatParamInput>
FFlowLightSpecificEmoteConfig = {}


---@class FFlowLightConfig
---@field bUseFlowLightConfig boolean
---@field SpecificEmoteConfig ULuaArrayHelper<FFlowLightSpecificEmoteConfig>
---@field EmoteTypeConfig ULuaArrayHelper<FFlowLightEmoteTypeConfig>
FFlowLightConfig = {}


---@class FTemporalMaterialParameterInputConfig
---@field bApplyOnExtraPart boolean
---@field bApplyOnParticle boolean
---@field ParticleTemplate UParticleSystem
---@field MatSlotName string
---@field MatParamName string
---@field bEnableLooping boolean
---@field bEnablePingPong boolean
FTemporalMaterialParameterInputConfig = {}


---@class FTemporalMaterialParameterEmoteConfig
---@field EmoteId number
---@field SpecificEmoteMatConfigArray ULuaArrayHelper<FTemporalMaterialParameterInputConfig>
FTemporalMaterialParameterEmoteConfig = {}


---@class FTemporalMaterialParameterConfig
---@field bUseTemporalMaterialParameter boolean
---@field IdleConfig ULuaArrayHelper<FTemporalMaterialParameterInputConfig>
---@field SpecificEmoteConfig ULuaArrayHelper<FTemporalMaterialParameterEmoteConfig>
FTemporalMaterialParameterConfig = {}


---@class FMultiPawnStatesCheck
---@field bHasAllStates number
---@field bHasAnyStates number
---@field bHasNoStates number
---@field States ULuaArrayHelper<EPawnState>
---@field ExcludeVehicleTypeList ULuaArrayHelper<ESTExtraVehicleType>
FMultiPawnStatesCheck = {}


---@class FAvatarMaterialNamePair
---@field SlotName string
---@field ParamName string
---@field AvatarMaterialParamType EAvatarMaterialParamType
---@field AvatarExtraPartType EABF_AvatarExtraPartType
FAvatarMaterialNamePair = {}


---@class FAvatarMaterialEffectValue
---@field UseOtherIndexParameter number
---@field IsLoop boolean
---@field IsPingPong boolean
---@field StateValue number
---@field ValueRange FVector2D
---@field StateLinearColorValue FLinearColor
---@field LinearColorValueStart FLinearColor
---@field LinearColorValueEnd FLinearColor
---@field LoopSpeed number
FAvatarMaterialEffectValue = {}


---@class FAvatarParticleSet
---@field Particle UParticleSystem
---@field bLoadParticle boolean
---@field SocketName string
---@field Transform FTransform
FAvatarParticleSet = {}


---@class FBaseAvatarMaterialEffectData
---@field bIsParticle boolean
---@field AvatarParticleSets ULuaArrayHelper<FAvatarParticleSet>
---@field EventName string
---@field NamePair FAvatarMaterialNamePair
---@field DefaultParameter number
---@field LinearColorDefaultParameter FLinearColor
---@field UseLerp boolean
---@field AverageLerpSpeed number
FBaseAvatarMaterialEffectData = {}


---@class FAvatarMaterialEffectDataRuntime
---@field BaseMatEffectData FBaseAvatarMaterialEffectData
---@field StateValueMap ULuaMapHelper<number, FAvatarMaterialEffectValue>
---@field CurValue number
---@field CurLinearColorValue FLinearColor
---@field CurLoopSpeed number
---@field CurState number
---@field bTriggerEvent boolean
FAvatarMaterialEffectDataRuntime = {}


---@class FAvatarMaterialEffectData_Lerp
---@field StateValue FAvatarMaterialEffectValue
---@field NamePair FAvatarMaterialNamePair
---@field AvatarParticleSets ULuaArrayHelper<FAvatarParticleSet>
---@field IsLoop boolean
---@field bIsParticle boolean
---@field CurValidState number
---@field IsPingPong boolean
---@field AverageLerpSpeed number
---@field CurValue number
---@field LerpCurTime number
---@field LerpTotalTime number
---@field LerpStartValue number
---@field LerpEndValue number
---@field EventName string
---@field bTriggerEvent boolean
---@field CurLinearColorValue FLinearColor
---@field LerpStartLinearColorValue FLinearColor
---@field LerpEndLinearColorValue FLinearColor
FAvatarMaterialEffectData_Lerp = {}


---@class FAvatarMaterialEffectDataExtraPartMeshComp
---@field ExtraPartMeshCompWeakRef ULuaArrayHelper<UMeshComponent>
FAvatarMaterialEffectDataExtraPartMeshComp = {}


---@class FAvatarMaterialEffectDataMeshComp
---@field MeshCompWeakRef UMeshComponent
---@field SlotID number
---@field ExtraPartMeshCompsWeakRef ULuaMapHelper<EABF_AvatarExtraPartType, FAvatarMaterialEffectDataExtraPartMeshComp>
---@field AvatarMaterialEffectDataList ULuaMapHelper<FAvatarMaterialNamePair, FAvatarMaterialEffectDataRuntime>
---@field AvatarMaterialEffectData_LerpList ULuaMapHelper<FAvatarMaterialNamePair, FAvatarMaterialEffectData_Lerp>
FAvatarMaterialEffectDataMeshComp = {}


---@class FSpecialAvatarMaterialEffectValue
---@field SpecialAvatarMaterialEffectValueMap ULuaMapHelper<number, FAvatarMaterialEffectValue>
---@field bUseSameParameter boolean
FSpecialAvatarMaterialEffectValue = {}


---@class FCharacterAvatarMaterialEffectData
---@field StateValueMapSetting ULuaMapHelper<EPawnState, FAvatarMaterialEffectValue>
---@field AdditionalStateValueMapSetting ULuaMapHelper<ECharacterAvatarState, FAvatarMaterialEffectValue>
---@field SpecialStateValueMapSetting ULuaMapHelper<ECharacterAvatarState, FSpecialAvatarMaterialEffectValue>
---@field BaseMatEffectData FBaseAvatarMaterialEffectData
FCharacterAvatarMaterialEffectData = {}


---@class FVehicleAvatarMaterialEffectData
---@field StateValueMapSetting ULuaMapHelper<EAvatarVehicleState, FAvatarMaterialEffectValue>
---@field BaseMatEffectData FBaseAvatarMaterialEffectData
FVehicleAvatarMaterialEffectData = {}


---@class FAvatarActionEffectsDataEffectItem
---@field PlayerCameraMode EPlayerCameraMode
---@field EffectAttachSlotType EAvatarSlotType
---@field ParticleSystemItem UParticleSystem
---@field EffectTransform FTransform
---@field EffectTransformInVehicle ULuaMapHelper<number, FTransform>
---@field SocketName string
---@field DurableTime number
FAvatarActionEffectsDataEffectItem = {}


---@class FAvatarActionEffectsDataAudioItem
---@field AkAudioEventItem UAkAudioEvent
---@field AudioTransform FTransform
FAvatarActionEffectsDataAudioItem = {}


---@class FAvatarActionEffectsDataItem
---@field bInterrupted boolean
---@field bTriggeredByAnimation boolean
---@field AvatarActionEffectsDataEffectItem FAvatarActionEffectsDataEffectItem
---@field AdditionalAvatarActionEffectsDataEffectItem FAvatarActionEffectsDataEffectItem
---@field AvatarActionEffectsDataAudioItem FAvatarActionEffectsDataAudioItem
FAvatarActionEffectsDataItem = {}


---@class FCharacterAvatarActionEffectsDataItem
---@field InterruptOtherStates ULuaArrayHelper<EPawnState>
---@field DisableStates ULuaArrayHelper<EPawnState>
FCharacterAvatarActionEffectsDataItem = {}


---@class FCharacterAvatarChangeTwinsData
---@field AvatarActionEffectsDataEffectItem FAvatarActionEffectsDataEffectItem
---@field AdditionalAvatarActionEffectsDataEffectItem FAvatarActionEffectsDataEffectItem
---@field AvatarActionEffectsDataAudioItem FAvatarActionEffectsDataAudioItem
FCharacterAvatarChangeTwinsData = {}


---@class FAvatarMVPShowSetting
---@field EmoteID number
---@field DelayTime number
---@field MVPShowStageClass ABattleSceneAvatarDisplayDirector
FAvatarMVPShowSetting = {}


---@class FAssociationItem
---@field AssociationItems ULuaArrayHelper<UItemHandleBase>
FAssociationItem = {}


---@class FMaterialSet
---@field targetSlot EAvatarSlotType
---@field targetMatSlotName string
---@field targetMat UMaterialInterface
---@field FXLight_Color FLinearColor
---@field FXLight_TEXPanner FLinearColor
---@field FXLight_TEXUV FLinearColor
---@field UseFXLight_Scalar number
---@field UV0or1_1 number
FMaterialSet = {}


---@class FParticleSet
---@field Particle UParticleSystem
---@field LobbyParticle UParticleSystem
---@field SocketName string
---@field Transform FTransform
---@field bWithModelParticle boolean
---@field bExtraPartParticle boolean
---@field bIgnoreWhenExtraPartSocketHidden boolean
FParticleSet = {}


---@class FAvatarAnim
---@field GenderType ELobbyCharacterAnimType
---@field AnimAsset UAnimationAsset
---@field Alpha number
---@field PoseType ESkirtPoseType
FAvatarAnim = {}


---@class FAvatarAnimList
---@field SlotAnims ULuaArrayHelper<FAvatarAnim>
FAvatarAnimList = {}


---@class FSyncAdditionData
---@field Name string
---@field FloatData number
---@field StringData string
---@field IntData number
---@field Priority number
---@field bSkipEmpty boolean
FSyncAdditionData = {}


---@class FSyncAdditionDataArray
---@field AddiDataArray ULuaArrayHelper<FSyncAdditionData>
FSyncAdditionDataArray = {}


---@class FTagCameraOff
---@field Market string
---@field Market2 string
---@field Research string
---@field Wardrobe string
---@field AvatarPreview string
---@field TreasurePreviewUI string
---@field FiveElementsShop string
---@field FULL string
---@field ExpendSystem ULuaMapHelper<string, string>
FTagCameraOff = {}


---@class FAvatarRandomIdleWeightAnimConfig
---@field Weight number
---@field NormalizedWeight number
---@field Slot2IdleMap ULuaMapHelper<EAvatarSlotType, UAnimationAsset>
---@field bUseSameWingIdle boolean
---@field NormalWingIdle UAnimationAsset
---@field SlotWingIdleAnimConfig ULuaMapHelper<EAvatarSlotType, FExtraPartGenderWithAnimAssetArray>
---@field StrongRefForIdleSeqMap ULuaMapHelper<number, UAnimSequence>
---@field WingIdleRefMap ULuaMapHelper<number, UAnimSequence>
FAvatarRandomIdleWeightAnimConfig = {}


---@class FAvatarRandomIdleConfig
---@field GenderType EFlowLightGenderType
---@field IdleWeightAnimConfigList ULuaArrayHelper<FAvatarRandomIdleWeightAnimConfig>
FAvatarRandomIdleConfig = {}


---@class FAvatarMeshVariantMatConfig
---@field bOnlyRenderQualityVERYSMOOTH boolean
---@field MatSlotName string
---@field MatResRef UMaterialInterface
FAvatarMeshVariantMatConfig = {}


---@class FAvatarSkeletalMeshConfig
---@field SkeletalMeshRef USkeletalMesh
---@field MeshVariantMatList ULuaArrayHelper<FAvatarMeshVariantMatConfig>
---@field AnimBPClass UAnimInstance
---@field bSkipOverlayMatWhenSuperLow boolean
---@field OverlayMatRef UMaterialInterface
---@field bUseSpecialOverlayMatWhenSuperLow boolean
---@field SuperLowOverlayMatRef UMaterialInterface
---@field IndexedOverrideOutlineMatList ULuaArrayHelper<FAvatarMeshVariantMatConfig>
---@field OverlayMaterialMaxDrawDistance number
---@field bCastTranslucentShadow boolean
---@field bOverrideDefaultSlotSocketUse boolean
---@field bForceIgnoreSlotSocket boolean
FAvatarSkeletalMeshConfig = {}


---@class FAvatarStaticMeshConfig
---@field StaticMeshRef UStaticMesh
---@field MeshVariantMatList ULuaArrayHelper<FAvatarMeshVariantMatConfig>
---@field bSkipOverlayMatWhenSuperLow boolean
---@field OverlayMatRef UMaterialInterface
---@field bUseSpecialOverlayMatWhenSuperLow boolean
---@field SuperLowOverlayMatRef UMaterialInterface
---@field IndexedOverrideOutlineMatList ULuaArrayHelper<FAvatarMeshVariantMatConfig>
---@field OverlayMaterialMaxDrawDistance number
---@field bCastTranslucentShadow boolean
---@field bOverrideDefaultSlotSocketUse boolean
---@field bForceIgnoreSlotSocket boolean
FAvatarStaticMeshConfig = {}


---@class FLobbyFeatureConfig
---@field bCastTranslucentShadow boolean
FLobbyFeatureConfig = {}


---@class FAvatarMeshFeatureConfig
---@field SkeletalMeshTranslucentMap ULuaMapHelper<USkeletalMesh, FLobbyFeatureConfig>
---@field StaticMeshTranslucentMap ULuaMapHelper<UStaticMesh, FLobbyFeatureConfig>
FAvatarMeshFeatureConfig = {}


---@class FAvatarMeshConfig
---@field DeviceLevelNumber number
---@field RoleAndQualitySelector FRoleAndQualitySelector
---@field LobbyRoleAndQualitySelector FRoleAndQualityLobbySelector
---@field SkeletalMeshConfig FAvatarSkeletalMeshConfig
---@field StaticMeshConfig FAvatarStaticMeshConfig
---@field bUseNewFPPMeshFeature boolean
---@field NewFPPMatSetType EAvatarNewFPPMatSetType
---@field SkeletalMeshConfig_NewFPP FAvatarSkeletalMeshConfig
FAvatarMeshConfig = {}


---@class FAvatarMeshConfigCollection
---@field bUseDeviceLevelNumberSelector boolean
---@field bUseRoleAndQualityAsAssistSelector boolean
---@field MeshConfigList ULuaArrayHelper<FAvatarMeshConfig>
FAvatarMeshConfigCollection = {}


---@class FMeshPackage
---@field bMeshPathIsNone boolean
---@field bUseMeshConfigCollection boolean
---@field MeshConfigCollection_Male FAvatarMeshConfigCollection
---@field MeshConfigCollection_Female FAvatarMeshConfigCollection
---@field bUseLobbyMeshConfigCollection boolean
---@field bUseLobbyMeshConfigCollectionForItemShowActor boolean
---@field MeshConfigCollection_Male_Lobby FAvatarMeshConfigCollection
---@field MeshConfigCollection_Female_Lobby FAvatarMeshConfigCollection
---@field bUsePCMeshConfigCollection boolean
---@field ForceUsePlayerMatPCGPUGrade number
---@field MeshConfigCollection_Male_PC FAvatarMeshConfigCollection
---@field MeshConfigCollection_Female_PC FAvatarMeshConfigCollection
---@field bUsePCLobbyMeshConfigCollection boolean
---@field MeshConfigCollection_Male_PC_Lobby FAvatarMeshConfigCollection
---@field MeshConfigCollection_Female_PC_Lobby FAvatarMeshConfigCollection
---@field SockectName string
---@field maleStMesh UStaticMesh
---@field femaleStMesh UStaticMesh
---@field maleSkMesh USkeletalMesh
---@field femaleSkMesh USkeletalMesh
---@field maleLODSkMesh USkeletalMesh
---@field femaleLODSkMesh USkeletalMesh
---@field maleStMeshLod00 UStaticMesh
---@field femaleStMeshLod00 UStaticMesh
---@field maleSkMeshLod00 USkeletalMesh
---@field femaleSkMeshLod00 USkeletalMesh
---@field EnableLod00MinTCQuality number
---@field meshDeviceAdaptationType EMeshDeviceAdaptationType
---@field maleDeviceAdaptationSkMesh USkeletalMesh
---@field femaleDeviceAdaptationSkMesh USkeletalMesh
---@field maleDeviceAdaptationStMesh UStaticMesh
---@field femaleDeviceAdaptationStMesh UStaticMesh
---@field UseHighQualityMatMapping boolean
---@field UserHighQualityUseIBL boolean
---@field HighDeviceUseIBL boolean
---@field CharacterAvatarMaterialEffectDataSetting ULuaArrayHelper<FCharacterAvatarMaterialEffectData>
---@field OverrideAvatarMaterialEffectManagerClass UAvatarMaterialEffectManager
---@field CharacterAvatarMaterialEffectDataSettingFemale ULuaArrayHelper<FCharacterAvatarMaterialEffectData>
---@field OverrideAvatarMaterialEffectManagerClassFemale UAvatarMaterialEffectManager
---@field maleMat UMaterialInterface
---@field femaleMat UMaterialInterface
---@field maleLod00Mat UMaterialInterface
---@field femaleLod00Mat UMaterialInterface
---@field SkinMapConfig ULuaMapHelper<EAvatarSlotType, EAvatarSlotType>
---@field LodMatDeviceQualityLevel number
---@field maleLODMat UMaterialInterface
---@field femaleLODMat UMaterialInterface
---@field replaceMaleMaterials ULuaArrayHelper<FMaterialSet>
---@field replaceFemaleMaterials ULuaArrayHelper<FMaterialSet>
---@field additionalMaleMats ULuaArrayHelper<FMaterialSet>
---@field additionalFemaleMats ULuaArrayHelper<FMaterialSet>
---@field AdvancedParentMat_MaleSoft UMaterialInterface
---@field AdvancedParentMat_FemaleSoft UMaterialInterface
---@field bCheckStaticSwitchParametersCompatibleForAdvancedParentMatMap boolean
---@field bIgnoreMatInstanceStaticSwitchParamCheckForAdvancedParentMatMap boolean
---@field bUseStaticSwitchParamPermutationFeature boolean
---@field AdvancedParentMatMap ULuaMapHelper<UMaterialInterface, UMaterialInterface>
---@field SSSMatMap_Male ULuaMapHelper<UMaterialInterface, UMaterialInterface>
---@field SSSMatMap_Female ULuaMapHelper<UMaterialInterface, UMaterialInterface>
---@field lobbyWingSuitMat UMaterialInterface
---@field AvatarAnimList FAvatarAnimList
---@field AnimConfigData ULuaArrayHelper<FLobbyAnimConfigData>
---@field LobbyAvatarSpecialStyleAnims ULuaArrayHelper<FLobbyGenderAnim>
---@field MaleAvatarStyle string
---@field FemaleAvatarStyle string
---@field CurEntity ULuaArrayHelper<FLobbyEntity>
---@field maleParticles ULuaArrayHelper<FParticleSet>
---@field femaleParticles ULuaArrayHelper<FParticleSet>
---@field LobbyItemParticleAttachRule EAttachLocation
---@field animBPClass UAnimInstance
---@field LOD00AnimBPClass UAnimInstance
---@field lobbyanimBPClass UAnimInstance
---@field LobbyItemIdleAnim UAnimationAsset
---@field IsReplacedMesh boolean
---@field OverrideMaleSocketName string
---@field OverrideFeMaleSocketName string
FMeshPackage = {}


---@class FBodyAttachmentAttrModify
---@field ModifyAttr string
---@field Op EAttrOperator
---@field ModifyValue number
FBodyAttachmentAttrModify = {}


---@class FBodyAttachmentConfig
---@field AttachmentID string
---@field BodyAttachmentAttrModifiers ULuaArrayHelper<FBodyAttachmentAttrModify>
---@field BodyDurabilityIndexName string
FBodyAttachmentConfig = {}


---@class FAvatarPendantConfig
---@field ConfigName string
---@field SocketRelativeTransform FTransform
---@field AngularLimitsMin FVector
---@field AngularLimitsMax FVector
FAvatarPendantConfig = {}


---@class FAvatarPendantConfig_SpecialParam
---@field SpecialUseExplanation string
---@field AdditionalTransform2SocketRelativeTransform FTransform
FAvatarPendantConfig_SpecialParam = {}


---@class FAdditionalItem
---@field SlotID EAvatarSlotType
---@field ItemID number
---@field bFallbackToChildItem boolean
FAdditionalItem = {}


---@class FNotifySoundModifiedItem
---@field NotifyName string
---@field bIsOverride boolean
---@field bIsSwitchGroupName boolean
---@field DefaultState string
---@field SwitchState string
FNotifySoundModifiedItem = {}


---@class FComparePriority
---@field SlotID EAvatarSlotType
---@field Priority number
FComparePriority = {}


---排除Cut材质Slot列表,如果为空，默认所有Slot都排除
---@class FMatCutExcludeItem
---@field ExcludeCameraMode EPlayerCameraMode
---@field ExcludeCutSlotNameList ULuaArrayHelper<string>
FMatCutExcludeItem = {}


---@class FAvatarMatCutCondition
---@field MatCutConfig number
FAvatarMatCutCondition = {}


---@class FMatCutOverrideData
---@field IsOverrideCut boolean
---@field CutCameraMode ULuaArrayHelper<EPlayerCameraMode>
---@field ShouldCutWhenFPPHaveGun boolean
---@field ExcludeSlotName ULuaArrayHelper<string>
---@field CameraModeCutConditionMap ULuaMapHelper<EPlayerCameraMode, FAvatarMatCutCondition>
FMatCutOverrideData = {}


---@class FAvatarNamedMatSlotCutCondition
---@field MatSlotName string
---@field MatSlotCutType EMatSlotCutType
---@field CutCondition FAvatarMatCutCondition
FAvatarNamedMatSlotCutCondition = {}


---@class FAvatarNamedMatSlotCutConditionCollection
---@field NamedMatSlotCutConditionList ULuaArrayHelper<FAvatarNamedMatSlotCutCondition>
FAvatarNamedMatSlotCutConditionCollection = {}


---@class FAvatarNamedMatSlotCutConfig
---@field MatCutConditionMap ULuaMapHelper<EPlayerCameraMode, FAvatarNamedMatSlotCutConditionCollection>
FAvatarNamedMatSlotCutConfig = {}


---@class FAvatarAnimOverrideData
---@field Layer EAnimLayerType
---@field AnimListCompClass UUAECharAnimListCompBase
FAvatarAnimOverrideData = {}


---@class FExtraDamageReduce
---@field AvatarPosition EAvatarDamagePosition
---@field DamageReduceScale number
FExtraDamageReduce = {}


---@class FArmorPartCoverCfg
---@field CoverMainAvatarPosition EAvatarDamagePosition
---@field CoverSubAvatarPositionList ULuaArrayHelper<EAvatarDamagePosition>
FArmorPartCoverCfg = {}


---@class FExtraDamageReduceCfg
---@field AttachmentID string
---@field ExtraDamageReduceArray ULuaArrayHelper<FExtraDamageReduce>
FExtraDamageReduceCfg = {}


---@class FSkillCoverConfig
---@field SkillCoverClass AUTSkill
---@field SkillCoveredClass AUTSkill
FSkillCoverConfig = {}


---@class FSkinWeightProfileConfig
---@field UseSkinWeightProfileStatus ULuaArrayHelper<EPawnState>
---@field ExcludeVehicleTypeList ULuaArrayHelper<ESTExtraVehicleType>
---@field UseSkinWeightMultiPawnStates ULuaArrayHelper<FMultiPawnStatesCheck>
---@field UseSWPStates ULuaArrayHelper<EUseSWPState>
---@field LobbyStandAloneSetting boolean
---@field LobbyUseSWPStates ULuaArrayHelper<ELobbyUseSWPState>
---@field LobbyIgnore_SkirtPose_Lobby_Paragliding boolean
---@field LobbyIgnore_Fashion_Show boolean
FSkinWeightProfileConfig = {}


---@class FBoneRetargetMeshShiftCompensation
---@field CompensationType EMeshShiftCompensationType
---@field CompensationStateList ULuaArrayHelper<EPawnState>
---@field bAutoUseMeshShiftFeatureIn boolean
---@field bAutoUseMeshShiftFeatureInLobby boolean
FBoneRetargetMeshShiftCompensation = {}


---@class FAvatarScaleConfig
---@field ScaleSlot EAvatarSlotType
---@field bAdaptToSlotMustHaveAnimInstance boolean
---@field TriggerSlot EAvatarSlotType
---@field ScalePriority number
---@field bForceRecreateAdaptSlotMesh boolean
---@field SlotAdaptSpace ERetargetAvatarAdaptSpace
---@field ScaleBoneNameList ULuaArrayHelper<string>
---@field BoneScale3D FVector
---@field bIsOverrideBoneScale boolean
---@field ScaleTransform FTransform
---@field bClearMeshShiftFeatureAnim boolean
---@field MeshShiftFeatureBone string
---@field MeshShiftAnchorRefBone string
---@field bOnlyPartOfShiftRefBoneAsRoot boolean
---@field MeshShiftFeatureTransform FTransform
---@field MeshShiftCompensationConfig FBoneRetargetMeshShiftCompensation
---@field WingClothScaleTransformMap ULuaMapHelper<string, FTransform>
---@field bForceRecreateAdaptAssociatedSlotMesh boolean
---@field AssociatedSlotAdaptSpace ERetargetAvatarAdaptSpace
---@field AssociatedSlotAdaptTransform FTransform
---@field AssociatedScaleSlotList ULuaArrayHelper<EAvatarSlotType>
---@field bClearAssociatedMeshShiftFeatureAnim boolean
---@field AssociatedMeshShiftFeatureBone string
---@field AssociatedMeshShiftAnchorRefBone string
---@field bOnlyPartOfAssociatedShiftRefBoneAsRoot boolean
---@field AssociatedMeshShiftFeatureTransform FTransform
---@field AssociatedMeshShiftCompensationConfig FBoneRetargetMeshShiftCompensation
FAvatarScaleConfig = {}


---@class FAvatarScaleConfigAlternativeSlot
---@field AlternativeSlot EAvatarSlotType
---@field AlternativeNameScaleConfigMap ULuaMapHelper<string, FAvatarScaleConfig>
FAvatarScaleConfigAlternativeSlot = {}


---@class FAvatarScaleConfigCollection
---@field bUseAsAvatarAdaptMasterSlot boolean
---@field AvatarScaleList ULuaArrayHelper<FAvatarScaleConfig>
---@field AlternativeName string
---@field AvatarScaleAlternativeSlotList ULuaArrayHelper<FAvatarScaleConfigAlternativeSlot>
FAvatarScaleConfigCollection = {}


---@class FBoneRetargetBackWeaponAdaptInfo
---@field bUseAdaptTrasnform boolean
---@field AdaptTransform_L FTransform
---@field AdaptTransform_R FTransform
FBoneRetargetBackWeaponAdaptInfo = {}


---@class FBoneRetargetBackWeaponAdaptConfig
---@field BackWeaponAdaptInfo_NoBag FBoneRetargetBackWeaponAdaptInfo
---@field BackWeaponAdaptInfo_Lv1Bag FBoneRetargetBackWeaponAdaptInfo
---@field BackWeaponAdaptInfo_Lv2Bag FBoneRetargetBackWeaponAdaptInfo
---@field BackWeaponAdaptInfo_Lv3Bag FBoneRetargetBackWeaponAdaptInfo
FBoneRetargetBackWeaponAdaptConfig = {}


---@class FAdjustSocketAttachedCompInfo
---@field AdjustFromSlot EAvatarSlotType
---@field bFromSlotMustUseAdjustSocketAttachedCompFeature boolean
---@field AdjustToSlot EAvatarSlotType
---@field bToSlotMustUseAdjustSocketAttachedCompFeature boolean
---@field AdjustSocketName string
---@field CustomParamMatchName string
---@field bUseParamIfNotConfig boolean
---@field bUseParamTransform boolean
---@field ParamAdjustSocketTransform FTransform
FAdjustSocketAttachedCompInfo = {}


---@class FAdjustSocketAttachedComp_ExtendParam
---@field CustomParamMatchName string
---@field bUseAdjustSocketAttachedCompFeature boolean
---@field bUseCustomAdjustSocketTransform boolean
---@field CustomAdjustSocketTransform FTransform
---@field OriginalTransform FTransform
---@field bAdjustFeatureTriggered boolean
---@field bFromParam boolean
---@field RealAdjustToSlot EAvatarSlotType
FAdjustSocketAttachedComp_ExtendParam = {}


---@class FAdjustSocketAttachedComp_ExtendParamCollection
---@field ExtendParamList ULuaArrayHelper<FAdjustSocketAttachedComp_ExtendParam>
FAdjustSocketAttachedComp_ExtendParamCollection = {}


---@class FAvatarSlotConfig
---@field AvatarSlotList ULuaArrayHelper<EAvatarSlotType>
FAvatarSlotConfig = {}


---@class FMultiReplaceMeshPacks
---@field bIgnoreDefaultChildSlotItem boolean
---@field Flags ULuaArrayHelper<EReplaceSlot>
---@field MeshPackItem FMeshPackage
FMultiReplaceMeshPacks = {}


---@class FReplaceMeshPack_SpecificID
---@field SpecificSlot EAvatarSlotType
---@field SpecificAvatarIDList ULuaArrayHelper<number>
---@field SpecificMeshPack FMeshPackage
FReplaceMeshPack_SpecificID = {}


---@class FHideSlotBonePair
---@field TriggerSlot EAvatarSlotType
---@field TargetSlot EAvatarSlotType
---@field TargetBoneName string
---@field bCustomSpecialHide boolean
---@field HideBoneMeshObj UObject
FHideSlotBonePair = {}


---@class FAvatarBodyTypeAdaptInfo
---@field ScaleBoneName string
---@field ExtraScaleBoneNameList ULuaArrayHelper<string>
---@field Scale3D FVector
---@field bIsOverrideScale boolean
---@field bForceDisableFollowMasterBoneVisibility boolean
FAvatarBodyTypeAdaptInfo = {}


---@class FModifyMaterialParam
---@field bIsValid boolean
---@field MatParamName string
---@field MaxTime number
---@field CurTime number
---@field Direction number
---@field bEnableLooping boolean
---@field bEnablePingPong boolean
FModifyMaterialParam = {}


---@class FWingClothesParachuteFollowParticleParam
---@field bIsValid boolean
---@field TargetSocket string
FWingClothesParachuteFollowParticleParam = {}


---@class UBackpackAvatarHandle: UBattleItemHandleBase, IBackpackAvatarInterface, IAddNewSkillToOwnerInterface, IBackpackItemCommonInterface
---@field SkillsConfig ULuaArrayHelper<FItemSkillsConfig>
---@field SkillsCoverConfig ULuaArrayHelper<FSkillCoverConfig>
---@field SpecificSkillsConfig ULuaMapHelper<string, FItemSkillsConfig>
---@field EnableLobbyAvatarExtEffect boolean
---@field AttachReceiverProxyTemplate UBackpackItemCommonAttachReceiverProxy
---@field AttachProviderProxyTemplate UBackpackItemCommonAttachProviderProxy
---@field ExtraDamageReduceCfg FExtraDamageReduceCfg
---@field ArmorPartCoverCfg FArmorPartCoverCfg
---@field RecvProdConfig FBackpackItemCommonRecvProdConfig
---@field OverrideAnimMap_Lobby ULuaMapHelper<UAnimationAsset, UAnimMontage>
---@field OverrideAnimMap_Battle ULuaMapHelper<UAnimationAsset, UAnimMontage>
---@field BodyType number
---@field bForceIgnoreBodyTypeDirty boolean
---@field BodyTypeAdaptInfoMap ULuaMapHelper<number, FAvatarBodyTypeAdaptInfo>
---@field bUseLobbyBodyTypeAdaptInfoMap boolean
---@field BodyTypeAdaptInfoMap_Lobby ULuaMapHelper<number, FAvatarBodyTypeAdaptInfo>
---@field MultiAircraftLevel number
---@field CameraClipMobile number
---@field CameraClipPC number
---@field bAircraftCameraOffset boolean
---@field CameraConfigforTag FTagCameraOff
---@field slotID EAvatarSlotType
---@field subSlot EAvatarSubSlot
---@field bSkipTickPoseWhenAvatarInvisible boolean
---@field bUseFemaleSubSlotFeature boolean
---@field subSlot_Female EAvatarSubSlot
---@field SlotFeatureTagList ULuaArrayHelper<EAvatarSlotFeatureTag>
---@field ExcludeSlotFeatureTagList ULuaArrayHelper<EAvatarSlotFeatureTag>
---@field avatarVisiblityType EAvatarVisiblityType
---@field bUseAvatarSwitchLODTickOpt boolean
---@field StaticSwitchRawMatInfoList ULuaArrayHelper<FStaticSwitchRawMatInfo>
---@field meshPack FMeshPackage
---@field replacedMeshPack FMeshPackage
---@field MultireplacedInfo ULuaArrayHelper<FMultiReplaceMeshPacks>
---@field ReplaceMeshPackList_SpecificID ULuaArrayHelper<FReplaceMeshPack_SpecificID> @在MultireplacedInfo里加指定ID，太复杂，基本上无法与MultireplacedInfo原有的用法兼容 在MultireplacedInfo后新增一个与当前所有MeshPack并行的，按指定id替换的Meshpack，
---@field hiddenFlags ULuaArrayHelper<EAvatarSlotType>
---@field femaleHiddenFlags ULuaArrayHelper<EAvatarSlotType>
---@field ExcludeEmotionHiddenSlotCollectionList_Male ULuaMapHelper<number, FAvatarSlotConfig>
---@field ExcludeEmotionHiddenSlotCollectionList_Female ULuaMapHelper<number, FAvatarSlotConfig>
---@field replaceFlags ULuaArrayHelper<EReplaceSlot>
---@field femaleReplaceFlags ULuaArrayHelper<EReplaceSlot>
---@field ignoreFlags ULuaArrayHelper<EAvatarSlotType>
---@field itemCapacity number
---@field itemOverFlowCapacity number
---@field ItemCapacitySuit number
---@field ItemCapacitySuitLimit number
---@field BagLevel number
---@field durability number
---@field BodyAttachmentConfig FBodyAttachmentConfig
---@field hideBoneSlot EAvatarSlotType
---@field hideBoneName string
---@field ExtendHideBoneList ULuaArrayHelper<FHideSlotBonePair>
---@field hatMeshType EMeshType
---@field PendantConfigList ULuaArrayHelper<FAvatarPendantConfig>
---@field PendantSpecialConfigMap ULuaMapHelper<number, FAvatarPendantConfig_SpecialParam>
---@field DefaultExtendPendantID number
---@field PendantTargetGender number
---@field PendantConfigIndex number
---@field PendantSlotForMale EAvatarSlotType
---@field PendantSocketForMale string
---@field PendantSlotForFemale EAvatarSlotType
---@field PendantSocketForFemale string
---@field UseMaleOrFemaleForceIgnoreSlotSocket boolean
---@field ForceIgnoreSlotSocket boolean
---@field FemaleForceIgnoreSlotSocket boolean
---@field ForceUseSkeletalWithSocket boolean
---@field AdditionalItems ULuaArrayHelper<FAdditionalItem>
---@field NotifySoundModifiedItems ULuaArrayHelper<FNotifySoundModifiedItem>
---@field CharacterAnimListOverrideList ULuaArrayHelper<FAvatarAnimOverrideData>
---@field CharacterAnimOverrideType ECharacterAnimOverrideType
---@field ComparePriority FComparePriority
---@field Priority number
---@field bSeparateGenderPriority boolean
---@field Priority_Female number
---@field AdditionalDataList ULuaArrayHelper<FSyncAdditionData>
---@field MatCutExcludeList ULuaArrayHelper<FMatCutExcludeItem>
---@field MatCutOverrideList FMatCutOverrideData
---@field ConsiderPawnFactor boolean
---@field bOverrideFPPSkinWeight boolean
---@field FPPArmSkinWeightMap ULuaArrayHelper<FSkinWeightInfoForFPP>
---@field NamedMatSlotCutConfig_Non_CutSuffix_Male FAvatarNamedMatSlotCutConfig @For Mat Slot Name has Non _Cut Suffix Cut Config if has _cut suffix,should use FMatCutOverrideData config
---@field NamedMatSlotCutConfig_Non_CutSuffix_Female FAvatarNamedMatSlotCutConfig @For Mat Slot Name has Non _Cut Suffix Cut Config if has _cut suffix,should use FMatCutOverrideData config
---@field SkinWeightProfileConfig FSkinWeightProfileConfig
---@field SkinWeightProfileConfig_Male FSkinWeightProfileConfig
---@field bAllowBakeMeshOverride boolean
---@field bUseMasterLOD boolean
---@field bUseAttachParentBound boolean
---@field AvatarScaleCollection FAvatarScaleConfigCollection @为骨骼重定向服装开发，但是可以用作其它特殊服装
---@field WeaponAnimAdaptValueMap ULuaMapHelper<number, number> @为骨骼重定向服装开发，但是可以用作其它特殊服装 大厅武器姿势适配BS的参数，配置武器蓝图ID，则所有皮肤可共享；若直接配置武器ID，则为特殊配置；
---@field bIgnoreAnimHidenByLODFeature boolean @为骨骼重定向服装开发，但是可以用作其它特殊服装
---@field bHandAttachWeaponAdaptForBoneRetarget boolean
---@field bBackAttachWeaponAdaptForBoneRetarget boolean
---@field bBackAttachWeaponAdaptForBoneRetarget_AllWeaponSlotType boolean
---@field BackAdaptWeaponSlotList_OverrideDefault ULuaArrayHelper<ESurviveWeaponPropSlot>
---@field BoneRetargetBackWeaponAdaptInfoMap ULuaMapHelper<number, FBoneRetargetBackWeaponAdaptConfig>
---@field bInverseRetargetAdaptNonEmoteDynamicSequence boolean
---@field ModeAvatarFeatureInverseBoneRetargetAdaptEmoteMap ULuaMapHelper<number, FModeAvatarFeatureInverseBoneRetargetAdaptInfo>
---@field NeedAdaptForBoneRetargetWingClothIDSet ULuaSetHelper<number> @为骨骼重定向服装开发，不是最优解，但是目前时间节点下改动和影响比较小，风险可控;如果重构Avatar的显隐，考虑优化这里；
---@field bUseAnimNotifyStateBoneRetargetAdaptFeature boolean
---@field bForceAllAnimNotifyStateBoneRetargetAdaptFeature boolean
---@field bAutoAdaptForBoneRetargetAttachedComp boolean
---@field bUseAsAdjustSocketAttachedCompAdaptMasterSlot boolean
---@field AdjustSocketAttachedCompInfoCollection_Male ULuaMapHelper<FAdjustSocketAttachedCompInfo, FAdjustSocketAttachedComp_ExtendParamCollection> @为骨骼重定向服装开发，但是可以用作其它特殊服装
---@field AdjustSocketAttachedCompInfoCollection_Female ULuaMapHelper<FAdjustSocketAttachedCompInfo, FAdjustSocketAttachedComp_ExtendParamCollection> @为骨骼重定向服装开发，但是可以用作其它特殊服装
---@field BackWeaponAdaptUniformOffsetTransforms ULuaMapHelper<string, FTransform>
---@field LobbyBackWeaponAdaptUniformOffsetTransforms ULuaMapHelper<string, FTransform>
---@field AvatarBehaviorFeatureList_Male ULuaArrayHelper<FAvavatarBehaviorFeatureParam>
---@field AvatarBehaviorFeatureList_Female ULuaArrayHelper<FAvavatarBehaviorFeatureParam>
---@field AvatarBodyTypeVariantParam FAvatarBodyTypeVariantParam
---@field bModeAvatarFeature boolean
---@field bModeFeature_AlwaysCollapse boolean
---@field bUseAppearanceGender boolean
---@field AvatarAppearanceGender ECharacterGender
---@field bIsSuitGenderEnable boolean
---@field SuitGender ECharacterGender
---@field AdditionalEmotionNewbieGuidePath string
---@field HideBoneOverrideConfig ULuaMapHelper<USkeletalMesh, FSWSHideBoneConfig>
---@field LobbyAvatarRandomIdleConfigList ULuaArrayHelper<FAvatarRandomIdleConfig>
---@field GenericToSpecialEmoteIdMap ULuaMapHelper<number, number>
---@field bEnableBattleResultPosition boolean
---@field BattleResultPosition ULuaMapHelper<EBattleResultTeamNum, FVector>
---@field bOnlyCloth boolean
---@field AvatarSuitIdMap ULuaMapHelper<EAvatarSlotType, number>
---@field EnableMeshClip boolean
---@field SourceWrapperTrans_CPP FTransform
---@field RealRecvProdConfig FBackpackItemCommonRecvProdConfig
---@field WingClothesParachuteFollowParticleParam FWingClothesParachuteFollowParticleParam
---@field RotateThreshold number
---@field TranslucentShadowConfig FAvatarMeshFeatureConfig
---@field CurHandleFlowLightConfig FFlowLightConfig
---@field TemporalMaterialParameterConfig FTemporalMaterialParameterConfig
---@field bResetAnimPositionWhenChange boolean
---@field CharacterGripWeaponIdleConfig ULuaArrayHelper<FGripWeaponIdleTypeConfig>
---@field WingIdleConfig ULuaMapHelper<EAvatarSlotType, FExtraPartGenderWithAnimAssetArray>
---@field AvatarEmoteSettingMale ULuaMapHelper<EAvatarEmoteType, FAvatarActionEffectsDataItem>
---@field AvatarEmoteSettingFemale ULuaMapHelper<EAvatarEmoteType, FAvatarActionEffectsDataItem>
---@field AvatarMvpShowSetting FAvatarMVPShowSetting
---@field CharacterAvatarActionEffectsDataSettingMale ULuaMapHelper<EPawnState, FCharacterAvatarActionEffectsDataItem>
---@field OverrideCharacterAvatarActionEffectsManagerClassMale UAvatarActionEffectsManager
---@field CharacterAvatarActionEffectsDataSettingFemale ULuaMapHelper<EPawnState, FCharacterAvatarActionEffectsDataItem>
---@field OverrideCharacterAvatarActionEffectsManagerClassFemale UAvatarActionEffectsManager
---@field TwinsID number
---@field TwinsTipID number
---@field TwinsChangeWrongTipID number
---@field CharacterAvatarChangeTwinsDataMale FCharacterAvatarChangeTwinsData
---@field CharacterAvatarChangeTwinsDataFemale FCharacterAvatarChangeTwinsData
---@field bSkipFashionShowRecoverAlpha boolean
---@field bDonotHiddenWhenHeadLOD2 boolean
---@field bDonotHiddenWhenSimulatedHeadHide boolean
---@field bWhenEquipDontEquipOtherSameTypeAvatar boolean
---@field bDisusingAvatar boolean
local UBackpackAvatarHandle = {}

---引入这个Event解决UFeatureClothesAvatarEntity中的特例做法的外部扩展适配问题，Handle上写服装逻辑不是很友好，尽量不要使用
---@param InFeatureTagStr string
---@param InFeatureTagInt number
---@param InTriggerObj UObject
---@param InObjParam1 UObject
---@param InObjParam2 UObject
function UBackpackAvatarHandle:ProcessItemFeature(InFeatureTagStr, InFeatureTagInt, InTriggerObj, InObjParam1, InObjParam2) end

---@return boolean
function UBackpackAvatarHandle:CanDealyUse() end

---@param ItemContainer IItemContainerInterface
---@return boolean
function UBackpackAvatarHandle:CanPickUpHandle(ItemContainer) end

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@return boolean
function UBackpackAvatarHandle:HandlePickup(ItemContainer, PickupInfo, Reason) end

---@param ItemContainer IItemContainerInterface
---@param PickupInfo FBattleItemPickupInfo
---@param Reason EBattleItemPickupReason
---@param InPickupResult boolean
function UBackpackAvatarHandle:PostHandlePickup(ItemContainer, PickupInfo, Reason, InPickupResult) end

---@param InCount number
---@param Reason EBattleItemDropReason
---@return boolean
function UBackpackAvatarHandle:HandleDrop(InCount, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@return boolean
function UBackpackAvatarHandle:HandleUse(Target, Reason) end

---@param Target FBattleItemUseTarget
---@param Reason EBattleItemUseReason
---@param InUseResult boolean
function UBackpackAvatarHandle:PostHandleUse(Target, Reason, InUseResult) end

function UBackpackAvatarHandle:ActiveEmotionFeature() end

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackAvatarHandle:HandleDisuse(Reason) end

---@param Reason EBattleItemDisuseReason
---@param InDisuseResult boolean
function UBackpackAvatarHandle:PostHandleDisuse(Reason, InDisuseResult) end

function UBackpackAvatarHandle:DeactiveEmotionFeature() end

---@param bEnable boolean
---@return boolean
function UBackpackAvatarHandle:HandleEnable(bEnable) end

---@param Reason EBattleItemDropReason
function UBackpackAvatarHandle:DoSomethingBeforeDrop(Reason) end

---@param avatarComp UCharacterAvatarComponent
---@param nowCapcity number
---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackAvatarHandle:CheckCanPickUp(avatarComp, nowCapcity, Reason) end

---@param Reason EBattleItemUseReason
---@param ToBackPack boolean
function UBackpackAvatarHandle:DoSomethingAfterPickup(Reason, ToBackPack) end

---@param owner AActor
---@param attrName string
---@param deltaVal number
---@param resultVal number
function UBackpackAvatarHandle:OnCharacterAttrChangedWithDetailEvent(owner, attrName, deltaVal, resultVal) end

---@return number
function UBackpackAvatarHandle:GetSlotID() end

---@param InIsMale boolean
---@return number
function UBackpackAvatarHandle:GetSubSlotID(InIsMale) end

---@param InTestAvatarHandle UBackpackAvatarHandle
---@return boolean
function UBackpackAvatarHandle:IsExcludedByMyExcludeSlotFeatureTag(InTestAvatarHandle) end

---@param IsMaleGender boolean
---@return boolean
function UBackpackAvatarHandle:IsForceIgnoreSlotSocket(IsMaleGender) end

---@param AvatarHandle UBackpackAvatarHandle
---@return boolean
function UBackpackAvatarHandle:CompareCutPriority(AvatarHandle) end

---@param WorldContextObj UObject
---@return boolean
function UBackpackAvatarHandle:IsVirtualAvatarHandle(WorldContextObj) end

---@param IsAutonomous boolean
---@param IsMale boolean
---@param bUseLod00 boolean
---@return string
function UBackpackAvatarHandle:GetSkeletalMesh(IsAutonomous, IsMale, bUseLod00) end

---@param IsMale boolean
---@param bUseLod00 boolean
---@return string
function UBackpackAvatarHandle:GetStaticMesh(IsMale, bUseLod00) end

---@param IsMale boolean
---@return string
function UBackpackAvatarHandle:GetTwinsEffectPath(IsMale) end

---@param IsMale boolean
---@return string
function UBackpackAvatarHandle:GetTwinsAudioPath(IsMale) end

---@param IsMale boolean
function UBackpackAvatarHandle:GetParticlePaths(IsMale) end

function UBackpackAvatarHandle:GetAnimBPClassPaths() end

function UBackpackAvatarHandle:GetAdvancedParentMaterialPaths() end

---@param IsMale boolean
function UBackpackAvatarHandle:GetReplaceFlags(IsMale) end

---@param InSlotName string
---@param InCameraMode EPlayerCameraMode
---@param Owner ASTExtraBaseCharacter
---@return boolean
function UBackpackAvatarHandle:IsNamedSlotMatCutExclude(InSlotName, InCameraMode, Owner) end

---@param InSlotName string
---@param InCameraMode EPlayerCameraMode
---@param Owner ASTExtraBaseCharacter
---@param InOriginalVisible boolean
---@return boolean
function UBackpackAvatarHandle:GetNamedSectionOverrideCutVisible(InSlotName, InCameraMode, Owner, InOriginalVisible) end

---@param InAvatarMatCutCondition FAvatarMatCutCondition
---@param InOwner ASTExtraBaseCharacter
---@return boolean
function UBackpackAvatarHandle:IsAvatarMatCutByCondition(InAvatarMatCutCondition, InOwner) end

---@param InIsMale boolean
---@param InSlotName string
---@param InCameraMode EPlayerCameraMode
---@param Owner ASTExtraBaseCharacter
---@param InOriginalVisible boolean
---@param InMatSlotCutType EMatSlotCutType
---@return boolean
function UBackpackAvatarHandle:GetNon_CutSuffixNamedSectionVisible(InIsMale, InSlotName, InCameraMode, Owner, InOriginalVisible, InMatSlotCutType) end

---@param InIsMale boolean
---@return number
function UBackpackAvatarHandle:GetHandlePriority(InIsMale) end

---@param InTestItemID number
---@return boolean
function UBackpackAvatarHandle:IsDefaultChildItem(InTestItemID) end

---@return boolean
function UBackpackAvatarHandle:CanAddSkill() end

function UBackpackAvatarHandle:AddSkills() end

---@param AddEffect boolean
function UBackpackAvatarHandle:AddAdditionalEffect(AddEffect) end

function UBackpackAvatarHandle:RemoveSkills() end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageTypeID number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function UBackpackAvatarHandle:RemoveSkillsAfterDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageTypeID, DamageTypeClass, IsHeadShotDamage, Context) end

---@param InWeaponAvatarBPID number
---@param InWeaponAvatarID number
---@return number
function UBackpackAvatarHandle:GetWeaponAnimAdaptValue(InWeaponAvatarBPID, InWeaponAvatarID) end

---@return boolean
function UBackpackAvatarHandle:IsUsePermutationFeature() end

---@return FTransform
function UBackpackAvatarHandle:BP_GetSourceWrapperTrans() end

---@param PendingSocketType EBackpackItemCommonSocketTypeGlobal
---@param PendingSocketConfigItem FBackpackItemCommonSocketConfigItem
---@return boolean
function UBackpackAvatarHandle:AddDynamicItemCommonSocket(PendingSocketType, PendingSocketConfigItem) end

---@param WorldContextObj UObject
---@return boolean
function UBackpackAvatarHandle:CheckIsUnique(WorldContextObj) end
