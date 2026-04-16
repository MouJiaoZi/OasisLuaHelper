---@meta

---@class FWeaponPendantSocket
---@field PendantSocketType EWeaponPendantSocketType
---@field PendantIndex number
---@field IsOpenConstraint boolean
---@field AnimConstraint FAvatarPendantConfig
---@field OverrideLocalJoinOffset boolean
---@field LocalJoinOffset FVector
---@field LocalOffset FVector
FWeaponPendantSocket = {}


---@class FWeaponPendantMap
---@field WeaponID number
---@field PendantInfoList ULuaArrayHelper<FWeaponPendantSocket>
FWeaponPendantMap = {}


---@class UBackpackWeaponAttachHandle: UBattleItemHandleBase, IBackpackWeaponInterface, IBackpackAvatarInterface
---@field WeaponAttachmentConfig FWeaponAttachmentConfig
---@field animBP UAnimInstance
---@field animBPClass UAnimInstance
---@field animBPClass_FPP UAnimInstance
---@field animBPClass_Lobby UAnimInstance
---@field PendantConfigList ULuaArrayHelper<FWeaponPendantSocket>
---@field WeaponPendantMap ULuaArrayHelper<FWeaponPendantMap>
---@field SightNodeContainerIndex number
---@field ShootWeaponDataModeConfigMap ULuaMapHelper<EMultiFunctionalShootModeType, FShootWeaponDataModeConfig>
---@field DynamicUIBPName string
---@field OnEquipOrUnEquipToWeaponDelegate FOnEquipOrUnEquipToWeaponDelegate
---@field SightCameraSocket string
---@field SightCameraSocketTransform FTransform
---@field bCacheNotifyRPC boolean
---@field bCanSpawnWrapperOnDrop boolean
---@field CachedApplyedAttrUniqueIDList ULuaArrayHelper<number>
---@field bDropedByPlayer boolean
---@field ParentWeaponHandle UItemHandleBase
---@field AttrModifyConfigs_Character ULuaArrayHelper<FPESkillAttributeItem>
---@field AttrModifyConfigs_Weapon ULuaArrayHelper<FPESkillAttributeItem>
---@field SpecialWeaponAttachmentAttrByGameplayTag ULuaMapHelper<FGameplayTag, FWeaponAttachmentConfigWrapper>
---@field DynamicMeshSocketInfo ULuaMapHelper<string, FMeshSocketInfo> @Key: Mesh PathName ; Value:
---@field bOverrideAvatarEntityParticlesByHandleBP boolean
---@field AvatarBehaviorFeatureParamList ULuaArrayHelper<FWeaponAvatarBehaviorFeatureParam>
local UBackpackWeaponAttachHandle = {}

---@param InWeapon ASTExtraShootWeapon
---@param IsEquip boolean
---@param Reason EBattleItemDisuseReason
---@return boolean
function UBackpackWeaponAttachHandle:EquipOrUnEuipAttachment(InWeapon, IsEquip, Reason) end

---@param InWeapon ASTExtraShootWeapon
---@param OutModifyAttrNameSet ULuaSetHelper<string>
function UBackpackWeaponAttachHandle:ApplyAttrModifySpecialById(InWeapon, OutModifyAttrNameSet) end

---@param Weapon ASTExtraShootWeapon
---@param BulletNum number
function UBackpackWeaponAttachHandle:ReturnWeaponAdditionalBulletsToBackpack(Weapon, BulletNum) end

---@param NewHandle UBackpackWeaponAttachHandle
function UBackpackWeaponAttachHandle:HandleDisuseReplaceByNew(NewHandle) end

---@return number
function UBackpackWeaponAttachHandle:GetSlotID() end

---@param InIsMale boolean
---@return number
function UBackpackWeaponAttachHandle:GetSubSlotID(InIsMale) end

---@param MeshCfg FWeaponMeshCfg
function UBackpackWeaponAttachHandle:GetMeshPackCfg(MeshCfg) end

---@return FSoftObjectPath
function UBackpackWeaponAttachHandle:GetAnimationBPAsset_FPP() end

---@return FSoftObjectPath
function UBackpackWeaponAttachHandle:GetAnimationBPAsset_OldWithFPP() end

---@param MeshCfg FWeaponMeshCfg
---@param ParentWeaponDefineID FItemDefineID
---@param ParentWeaponSkinID FItemDefineID
---@param WorldContext UObject
function UBackpackWeaponAttachHandle:GetReplacedMeshPackCfg(MeshCfg, ParentWeaponDefineID, ParentWeaponSkinID, WorldContext) end

---@param bExtra boolean
---@return FWeaponMeshCfg
function UBackpackWeaponAttachHandle:GetMeshPackCfgCopy(bExtra) end

---@param ParentWeaponDefineID FItemDefineID
---@param ParentWeaponSkinID FItemDefineID
---@param WorldContext UObject
---@return FWeaponMeshCfg
function UBackpackWeaponAttachHandle:GetReplacedMeshPackCfgCopy(ParentWeaponDefineID, ParentWeaponSkinID, WorldContext) end

---@return FWeaponAttachmentConfig
function UBackpackWeaponAttachHandle:GetAttachmentConfig() end

---@return FSoftObjectPath
function UBackpackWeaponAttachHandle:GetAnimationBPAsset() end

---@return FSoftObjectPath
function UBackpackWeaponAttachHandle:GetAnimationBPAssetLobby() end

---@param UIList ULuaArrayHelper<FUIWidgetRes>
function UBackpackWeaponAttachHandle:GetWidgetList(UIList) end

---@param WorldContextObj UObject
---@return boolean
function UBackpackWeaponAttachHandle:IsVirtualAvatarHandle(WorldContextObj) end

---@param ResID number
---@return boolean
function UBackpackWeaponAttachHandle:IsAvatarOf(ResID) end

---@param WorldContextObj UObject
---@return boolean
function UBackpackWeaponAttachHandle:IsAvatarWeaponAttachment(WorldContextObj) end

---@param WorldContextObj UObject
---@return boolean
function UBackpackWeaponAttachHandle:IsAvatarWeapon_Interface(WorldContextObj) end

---@param WorldContextObj UObject
---@return FItemDefineID
function UBackpackWeaponAttachHandle:GetReadyPakItemDefineID(WorldContextObj) end

---@param Weapon ASTExtraWeapon
---@param bIsEquip boolean
function UBackpackWeaponAttachHandle:HandleEquipOrUnEquipToWeaponDelegate(Weapon, bIsEquip) end

---@return boolean
function UBackpackWeaponAttachHandle:NeedTransAdditionalData() end

---@param WorldContextObj UObject
---@return number
function UBackpackWeaponAttachHandle:GetReloadDefineID(WorldContextObj) end

---@param InParentWeaponHandle UItemHandleBase
function UBackpackWeaponAttachHandle:SetParentWeaponHandle(InParentWeaponHandle) end

---@param ParentWeaponDefineID FItemDefineID
---@param ParentWeaponSkinID FItemDefineID
---@param WorldContext UObject
---@return number
function UBackpackWeaponAttachHandle:FindReplacedAttachIndex(ParentWeaponDefineID, ParentWeaponSkinID, WorldContext) end

---@param SpecialMachineConfigFPP ULuaArrayHelper<FSpecialMachineConfig>
---@param bUsePCMeshConfigCollection boolean
---@param InOldSKMesh USkeletalMesh
---@param InOldSTMesh UStaticMesh
function UBackpackWeaponAttachHandle:RecordNewFPPSocketInfo(SpecialMachineConfigFPP, bUsePCMeshConfigCollection, InOldSKMesh, InOldSTMesh) end

---@param SKMesh USkeletalMesh
---@param STMesh UStaticMesh
---@param WeaponAvatarComp UWeaponAvatarComponent
function UBackpackWeaponAttachHandle:ApplyFPPDynamicSocketInfo(SKMesh, STMesh, WeaponAvatarComp) end

---@param AvatarEntity UWeaponAvatarEntity
---@param SlotID number
function UBackpackWeaponAttachHandle:HandleAvatarEntityApplyParticles(AvatarEntity, SlotID) end

---@param AvatarEntity UWeaponAvatarEntity
---@param SlotID number
function UBackpackWeaponAttachHandle:HandleAvatarEntityRemoveParticles(AvatarEntity, SlotID) end
