---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategyProxy_Player: UAvatarStrategyProxy
local UAvatarStrategyProxy_Player = {}

---HOT_UPDATE_PROTECT *****************************************
function UAvatarStrategyProxy_Player:InitStrategyProxy() end

function UAvatarStrategyProxy_Player:ReleaseStrategyProxy() end

---+++++++++Control/Component+++++++++ Should Contains Avatar Component in Params
---@param InAC UAvatarComponent
---@param InHandle UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param OutAvatarMeshConfigRef FAvatarMeshConfig
---@return boolean
function UAvatarStrategyProxy_Player:GetAvatarMeshConfig(InAC, InHandle, InIsUseLod00, InIsExtraConfig, OutAvatarMeshConfigRef) end

---@param InAC UAvatarComponent
---@param InHandle UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Player:GetMeshResRef(InAC, InHandle, InIsUseLod00, InIsExtraConfig, InIsIgnoreBodyTypeVariant, OutAssetRef) end

---Try not use this Function unless you are absolutely know what you are doing
---@param InAC UAvatarComponent
---@param meshPack FMeshPackage
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Player:GetMeshResRefByMeshPack(InAC, meshPack, InIsUseLod00, InIsExtraConfig, OutAssetRef) end

---@param InAC UAvatarComponent
---@param InHandle UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Player:GetMeshResRef_NewFPP(InAC, InHandle, InIsUseLod00, InIsExtraConfig, InIsIgnoreBodyTypeVariant, OutAssetRef) end

---@param InAC UAvatarComponent
---@param meshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategyProxy_Player:GetSkeletalMesh(InAC, meshPack, bUseLod00) end

---@param InAC UAvatarComponent
---@param meshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategyProxy_Player:GetSkeletalMesh_NewFPP(InAC, meshPack, bUseLod00) end

---@param InAC UAvatarComponent
---@param meshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategyProxy_Player:GetStaticMesh(InAC, meshPack, bUseLod00) end

---@param InAC UAvatarComponent
---@param InMasterBoneComp USceneComponent
---@param InSyncBoneComp USkinnedMeshComponent
---@param InTargetSlot number
---@return boolean
function UAvatarStrategyProxy_Player:SyncBoneVisibilityWithMaster(InAC, InMasterBoneComp, InSyncBoneComp, InTargetSlot) end

---@param InAC UAvatarComponent
---@param InHandle UBattleItemHandleBase
---@param InSlotID number
---@return boolean
function UAvatarStrategyProxy_Player:IsSlotHasEquiped(InAC, InHandle, InSlotID) end

---@param InAC UAvatarComponent
---@param InHandle UBattleItemHandleBase
---@param InSlotID number
---@return boolean
function UAvatarStrategyProxy_Player:IsForceUseHighQualityMat(InAC, InHandle, InSlotID) end

---@param InAC UAvatarComponent
---@param InMeshPack FMeshPackage
---@return boolean
function UAvatarStrategyProxy_Player:IsForceUseHighQualityMat_ByMeshPack(InAC, InMeshPack) end

---@param InAC UAvatarComponent
---@param InSlotID number
---@param InMeshComp UMeshComponent
---@param InMeshPack FMeshPackage
---@return boolean
function UAvatarStrategyProxy_Player:ApplyMeshVariantMatSetColorMaterial(InAC, InSlotID, InMeshComp, InMeshPack) end

---+++++++++Entity+++++++++ Should Contains Avatar Component and Avatar Entity in Params
---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FMeshPackage
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategyProxy_Player:GetAnimBPPath(InAC, InAE, InMeshPack, OutAssetRef) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FMeshPackage
---@param OutMeshType EMeshType
---@return boolean
function UAvatarStrategyProxy_Player:GetRawMeshTypeByMeshPack(InAC, InAE, InMeshPack, OutMeshType) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategyProxy_Player:ApplyAvatarRenderConfig(InAC, InAE) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategyProxy_Player:PostApplyAnimInstance(InAC, InAE) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategyProxy_Player:PreprocessingEntityLoadedHandle(InAC, InAE, InBackpackHandle) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategyProxy_Player:PreprocessingEntityMeshData(InAC, InAE, InBackpackHandle) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategyProxy_Player:IsForceIgnoreSlotSocket(InAC, InAE, InBackpackHandle) end
