---@meta

---@class FWeaponAvatarCharacterAnimOverrideData
---@field Layer EAnimLayerType
---@field AnimListCompClass UUAECharAnimListCompBase
FWeaponAvatarCharacterAnimOverrideData = {}


---@class FWeaponHiddenBoneName
---@field HiddenBoneNames ULuaArrayHelper<string>
---@field InSlotTypes ULuaArrayHelper<EAvatarSlotType>
FWeaponHiddenBoneName = {}


---@class FSpecialWeaponAttachment
---@field Attachments ULuaArrayHelper<EWeaponAttachmentSocketType>
---@field RelativeTransform FTransform
FSpecialWeaponAttachment = {}


---@class UBackpackWeaponHandle: UBattleItemHandleBase, IBackpackWeaponInterface, IBackpackAvatarInterface
---@field bForbidSpawnWrapper boolean
---@field BulletsNumStoreToWrapper number
---@field TimeLimitExpiredTipID number
---@field CustomWeaponSlotType ESurviveWeaponPropSlot
---@field LobbySoloShowMeshOffset FTransform
---@field LobbySoloShowMeshOffsetOffhand FTransform
---@field WeaponAnimAdaptMapID number
---@field NewFPPMeshAdditiveMap ULuaMapHelper<string, FVector>
---@field SightOffsetMap ULuaMapHelper<string, FTransform>
---@field WeaponAttachmentNewSocketTransform ULuaMapHelper<EWeaponAttachmentSocketType, FTransform>
---@field ScopeAlphaToCutAlpha FVector2D
---@field WeaponScopeAnim UAnimMontage
---@field WeaponScopeAngleAnim UAnimMontage
---@field WeaponAttrModifyItemList ULuaArrayHelper<FAttrModifyItem>
---@field MeshPackage FWeaponMeshCfg
---@field bConfigOffHandle boolean
---@field MeshPackage_OffHand FWeaponMeshCfg
---@field animBP UAnimInstance
---@field animBPClass UAnimInstance
---@field animBPClass_FPP UAnimInstance
---@field TPPToFPPAnim UAnimInstance
---@field animBPClass_OldWithFPP UAnimInstance
---@field bForcePrepareAnimBPAssets boolean
---@field animBPClass_Lobby UAnimInstance
---@field SubAnimList_Lobby ULuaArrayHelper<FAnimMapData>
---@field FireAnim UAnimMontage
---@field ScopeAnimList ULuaArrayHelper<UAnimationAsset>
---@field FireParticle FWeaponParticle
---@field AttachmentAvatarList ULuaMapHelper<FItemDefineID, FItemDefineID>
---@field DefaultAvatarList ULuaArrayHelper<FItemDefineID>
---@field ParentIDList ULuaArrayHelper<FItemDefineID>
---@field DefaultWeaponAbilities ULuaArrayHelper<FItemDefineID>
---@field lobbyWeapon ASTExtraWeapon
---@field ParticleEffectList ULuaArrayHelper<FParticleRes>
---@field bOpenSightCloseParticle boolean
---@field ParticleEffectDisplayCondition FRoleAndQualitySelector
---@field WeaponAnimDisplayCondition FRoleAndQualitySelector
---@field OverrideHitEffectDataAsset UHitEffectDataAsset
---@field OverrideMagStMesh UStaticMesh
---@field OverrideMagFPPStMesh UStaticMesh
---@field OverrideMagMat UMaterialInterface
---@field OverrideMagFPPMat UMaterialInterface
---@field OverrideHitEffectDataAssetSimulate UHitEffectDataAsset
---@field OverrideMagStMeshSimulate UStaticMesh
---@field OverrideMagMatSimulate UMaterialInterface
---@field SightSocket string
---@field AngledSightSocket string
---@field NoSightScopeCameraSocket string
---@field DefaultSightScopeCameraSocket string
---@field MuzzleSocket string
---@field bForceEnableAnim boolean
---@field bNeedSyncWithCharacter boolean
---@field OverrideSocket EWeaponAttachmentSocketType
---@field WeaponAttachmentAdditionalDataList ULuaArrayHelper<FBattleItemAdditionalData>
---@field CachedBattleItemPickupInfo FBattleItemPickupInfo
---@field CachedWeaponAttachmentListBeforeDrop ULuaArrayHelper<FWeaponAttachItemUnit>
---@field SightSocketTransform FTransform
---@field AngledSightSocketTransform FTransform
---@field MuzzleSocketTransform FTransform
---@field NoSightScopeCameraSocketTransform FTransform
---@field bNeedNewFPPMagAdjust boolean
---@field NewFPPMagAdjust FTransform
---@field bHasSkillConfig boolean
---@field bEnableInspectingDepthOfView boolean
---@field bServerForceBroadcastOnExcluded boolean
---@field bIsFirstUse boolean
---@field CacheAvailableAttachmentIDList ULuaArrayHelper<number>
---@field AvatarBehaviorFeatureParamList ULuaArrayHelper<FWeaponAvatarBehaviorFeatureParam>
---@field AssociatedBaseWeaponHandle UBackpackWeaponHandle
---@field WeaponAttrModifyConfigs ULuaArrayHelper<FItemHandleAttrModifyConfigNoCondition>
---@field SkillCovers ULuaArrayHelper<FSkillCoverConfig>
---@field CharacterAnimListOverrideList ULuaArrayHelper<FWeaponAvatarCharacterAnimOverrideData>
---@field FPPDefaultMesh USkeletalMesh
---@field TPPDefaultMesh USkeletalMesh
---@field FPPToTPPAnim UAnimInstance
---@field bEnableTPPCompatible boolean
---@field bEnableTPPCompatible_InGame boolean
---@field DynamicMeshSocketInfo ULuaArrayHelper<FMeshSocketInfo>
---@field NewFPPRefPose ULuaArrayHelper<FTransform>
---@field NewFPPRefInfo ULuaArrayHelper<string>
---@field NewFPPPoseOffset ULuaMapHelper<string, FTransform>
---@field TPPPoseOffset ULuaMapHelper<string, FTransform>
---@field SpecialMainWeaponOffsetAttachments ULuaMapHelper<string, FSpecialWeaponAttachment>
---@field HiddenBoneSlotMap ULuaArrayHelper<FWeaponHiddenBoneName>
---@field WeaponEffectAssetOverrideMap ULuaMapHelper<string, FSoftObjectPath>
---@field AutoSocketMap ULuaArrayHelper<EWeaponAttachmentSocketType>
---@field OverrideSocketNameForFPP ULuaMapHelper<string, string>
---@field bForbidRemapping boolean
local UBackpackWeaponHandle = {}

---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackWeaponHandle:HandleDisuseInner(Reason) end

---@return number
function UBackpackWeaponHandle:GetSlotID() end

---@param InIsMale boolean
---@return number
function UBackpackWeaponHandle:GetSubSlotID(InIsMale) end

---@param MeshCfg FWeaponMeshCfg
function UBackpackWeaponHandle:GetMeshPackCfg(MeshCfg) end

---@param bOffHand boolean
---@return FWeaponMeshCfg
function UBackpackWeaponHandle:GetMeshPackCfgCopy(bOffHand) end

---@param DefaultAvatarList ULuaArrayHelper<FItemDefineID>
function UBackpackWeaponHandle:GetDefaultAvatarList(DefaultAvatarList) end

---@return FSoftObjectPath
function UBackpackWeaponHandle:GetAnimationBPAsset() end

---@return FSoftObjectPath
function UBackpackWeaponHandle:GetAnimationBPAsset_FPP() end

---@return FSoftObjectPath
function UBackpackWeaponHandle:GetAnimationBPAsset_OldWithFPP() end

---@return boolean
function UBackpackWeaponHandle:ForcePrepareAnimBPAssets() end

---@return FSoftObjectPath
function UBackpackWeaponHandle:GetAnimationBPAssetLobby() end

---@param WorldContextObj UObject
---@return boolean
function UBackpackWeaponHandle:IsVirtualAvatarHandle(WorldContextObj) end

---@param WorldContextObj UObject
---@return boolean
function UBackpackWeaponHandle:IsAvatarWeapon(WorldContextObj) end

---@param WorldContextObj UObject
---@return boolean
function UBackpackWeaponHandle:IsAvatarWeapon_Interface(WorldContextObj) end

---@param ResID number
---@return boolean
function UBackpackWeaponHandle:IsAvatarOf(ResID) end

---@param WorldContextObj UObject
---@return FItemDefineID
function UBackpackWeaponHandle:GetReadyPakItemDefineID(WorldContextObj) end

---@param InWeaponMgr UWeaponManagerComponent
---@param InTargetLogicSocket string
---@param bInTargetAutoUse boolean
---@param InMainLogicSlot1Name string
---@param InMainLogicSlot2Name string
---@param InSubLogicSlotName string
---@param bInIsPistol boolean
---@param InOwningPlayerController ASTExtraPlayerController
---@param bOutAutoUse boolean
---@return string
function UBackpackWeaponHandle:LocalGetAvailableInstantLogicSocketName(InWeaponMgr, InTargetLogicSocket, bInTargetAutoUse, InMainLogicSlot1Name, InMainLogicSlot2Name, InSubLogicSlotName, bInIsPistol, InOwningPlayerController, bOutAutoUse) end

---@param InTarget FBattleItemUseTarget
---@param InReason EBattleItemUseReason
---@param InWeaponMgr UWeaponManagerComponent
---@param InTargetLogicSocket string
---@param bInTargetAutoUse boolean
---@param InMainLogicSlot1Name string
---@param InMainLogicSlot2Name string
---@param InSubLogicSlotName string
---@param bInIsPistol boolean
---@param InOwningPlayerController ASTExtraPlayerController
---@param InCharacterItemHandle UBattleItemHandleBase
---@param InOwningBackpackComponnent UBackpackComponent
---@param InOwningCharacter ASTExtraBaseCharacter
---@param InWeaponClass ASTExtraWeapon
---@param bInResetInitBulletInBullet boolean
---@param bOutSocket string
---@param bInAutoSwitch boolean
---@return boolean
function UBackpackWeaponHandle:LocalHandleUse(InTarget, InReason, InWeaponMgr, InTargetLogicSocket, bInTargetAutoUse, InMainLogicSlot1Name, InMainLogicSlot2Name, InSubLogicSlotName, bInIsPistol, InOwningPlayerController, InCharacterItemHandle, InOwningBackpackComponnent, InOwningCharacter, InWeaponClass, bInResetInitBulletInBullet, bOutSocket, bInAutoSwitch) end

function UBackpackWeaponHandle:LocalAutoEquipAttachments() end

---@param bInAutoUse boolean
---@param OwnerPawn ASTExtraBaseCharacter
---@return boolean
function UBackpackWeaponHandle:BPModifyAutoUse(bInAutoUse, OwnerPawn) end

---@param UIList ULuaArrayHelper<FUIWidgetRes>
function UBackpackWeaponHandle:GetWidgetList(UIList) end

---@param Reason EBattleItemDisuseReason
function UBackpackWeaponHandle:PreLocalHandleDisuse(Reason) end

function UBackpackWeaponHandle:SaveWeaponAttachmentListBeforeDrop() end

function UBackpackWeaponHandle:GetAvailableWeaponAttachment() end

function UBackpackWeaponHandle:GetWeaponClass() end

function UBackpackWeaponHandle:CollectAdditionalResources() end

---@param meshComp UMeshComponent
function UBackpackWeaponHandle:SetDynamicParameterValueOnMaterials(meshComp) end

---@param BulletNum number
---@return number
function UBackpackWeaponHandle:ReturnAdditionalBullets(BulletNum) end

---@param WorldContextObj UObject
---@return number
function UBackpackWeaponHandle:GetReloadDefineID(WorldContextObj) end

---@param Weapon ASTExtraWeapon
---@param bEnable boolean
function UBackpackWeaponHandle:ToggleAttrModifyEnabledOnServer(Weapon, bEnable) end

---@param ShootWeapon ASTExtraShootWeapon
function UBackpackWeaponHandle:UpdateWeaponDurability(ShootWeapon) end

function UBackpackWeaponHandle:GetWeaponResourcePath() end

---@param bIsLod boolean
---@return string
function UBackpackWeaponHandle:GetWeaponSkeletalMeshPath(bIsLod) end

---@param bIsLod boolean
---@return string
function UBackpackWeaponHandle:GetWeaponStaticMeshPath(bIsLod) end

---@param BulletDefineID FItemDefineID
---@param InCount number
---@param bDropBulletsWhenNoCapacity boolean
---@param bAdjustWeaponClipBulletNum boolean
---@return number
function UBackpackWeaponHandle:TryReturnBullets(BulletDefineID, InCount, bDropBulletsWhenNoCapacity, bAdjustWeaponClipBulletNum) end

---@param AttachmentID number
---@return boolean
function UBackpackWeaponHandle:CheckCanEquipTargetAttachmentByID(AttachmentID) end

---@param InData FBattleItemAdditionalData
function UBackpackWeaponHandle:AddOrSetWeaponAttachmentAdditionalData(InData) end

---@param InName string
---@param InValue number
function UBackpackWeaponHandle:AddOrSetWeaponAttachmentAdditionalFloatData(InName, InValue) end

---@param InName string
---@param InValue number
function UBackpackWeaponHandle:AddOrSetWeaponAttachmentAdditionalIntData(InName, InValue) end

---@param InName string
---@param InValue string
function UBackpackWeaponHandle:AddOrSetWeaponAttachmentAdditionalStringData(InName, InValue) end

---@param DeadCharacter ASTExtraCharacter
---@param Killer AController
---@param DamageCauser AActor
---@param KillingHitInfo FHitResult
---@param KillingHitImpulseDir FVector
---@param KillingHitDamageTypeID number
---@param DamageTypeClass USTExtraDamageType
---@param IsHeadShotDamage boolean
---@param Context FGameMagnitudeContext
function UBackpackWeaponHandle:RemoveSkillsAfterDead(DeadCharacter, Killer, DamageCauser, KillingHitInfo, KillingHitImpulseDir, KillingHitDamageTypeID, DamageTypeClass, IsHeadShotDamage, Context) end

---@param WorldContextObj UObject
---@return boolean
function UBackpackWeaponHandle:CheckIsUnique(WorldContextObj) end

---@param Data FBattleItemAdditionalData
---@param bHandleNeedExist boolean
---@return boolean
function UBackpackWeaponHandle:CheckAdditionalDataValid(Data, bHandleNeedExist) end

---@return boolean
function UBackpackWeaponHandle:CheckWeaponCanEquip() end

---@return FSoftObjectPath
function UBackpackWeaponHandle:GetFPPDefaultMesh() end

---@param SpecialMachineConfigFPP ULuaArrayHelper<FSpecialMachineConfig>
---@param bUsePCMeshConfigCollection boolean
function UBackpackWeaponHandle:RecordNewFPPSocketInfo(SpecialMachineConfigFPP, bUsePCMeshConfigCollection) end

---@param SpecialMachineConfigFPP ULuaArrayHelper<FSpecialMachineConfig>
---@param bUsePCMeshConfigCollection boolean
function UBackpackWeaponHandle:RecordNewFPPRefPose(SpecialMachineConfigFPP, bUsePCMeshConfigCollection) end

---@param SpecialMachineConfigFPP ULuaArrayHelper<FSpecialMachineConfig>
---@param bUsePCMeshConfigCollection boolean
function UBackpackWeaponHandle:RecordNewFPPPoseOffset(SpecialMachineConfigFPP, bUsePCMeshConfigCollection) end

---@return boolean
function UBackpackWeaponHandle:NeedSkipSocketSearch() end

---@param SKMesh USkeletalMesh
---@param STMesh UStaticMesh
---@param WeaponAvatarComp UWeaponAvatarComponent
function UBackpackWeaponHandle:ApplyFPPDynamicSocketInfo(SKMesh, STMesh, WeaponAvatarComp) end
