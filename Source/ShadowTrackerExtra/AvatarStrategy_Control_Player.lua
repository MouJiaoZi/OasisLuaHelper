---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Control_Player: UAvatarStrategy
---@field bOverride_GetAvatarMeshConfig boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_GetAvatarMeshConfigByMeshPack boolean
---@field bOverride_GetMeshResRef boolean
---@field bOverride_GetMeshResRef_NewFPP boolean
---@field bOverride_GetSkeletalMesh boolean
---@field bOverride_GetSkeletalMesh_NewFPP boolean
---@field bOverride_GetStaticMesh boolean
---@field bOverride_SyncBoneVisibilityWithMaster boolean
---@field bOverride_IsSlotHasEquiped boolean
---@field bOverride_IsForceUseHighQualityMat boolean
---@field bOverride_IsForceUseHighQualityMat_ByMeshPack boolean
---@field bOverride_ApplyMeshVariantMatSetColorMaterial boolean
local UAvatarStrategy_Control_Player = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Control_Player:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Control_Player:ReleaseStrategy() end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param OutAvatarMeshConfigRef FAvatarMeshConfig
---@return boolean
function UAvatarStrategy_Control_Player:GetAvatarMeshConfig(InCAC, InHandle, InIsUseLod00, InIsExtraConfig, OutAvatarMeshConfigRef) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param InIsUseLod00 boolean
---@param OutAvatarMeshConfigRef FAvatarMeshConfig
---@return boolean
function UAvatarStrategy_Control_Player:GetAvatarMeshConfigByMeshPack(InCAC, InMeshPack, InIsUseLod00, OutAvatarMeshConfigRef) end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Player:GetMeshResRef(InCAC, InHandle, InIsUseLod00, InIsExtraConfig, InIsIgnoreBodyTypeVariant, OutAssetRef) end

---Try not use this Function unless you are absolutely know what you are doing
---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Player:GetMeshResRefByMeshPack(InCAC, InMeshPack, InIsUseLod00, InIsExtraConfig, OutAssetRef) end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Player:GetMeshResRef_NewFPP(InCAC, InHandle, InIsUseLod00, InIsExtraConfig, InIsIgnoreBodyTypeVariant, OutAssetRef) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Player:GetSkeletalMesh(InCAC, InMeshPack, bUseLod00) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Player:GetSkeletalMesh_NewFPP(InCAC, InMeshPack, bUseLod00) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Player:GetStaticMesh(InCAC, InMeshPack, bUseLod00) end

---@param InCAC UCharacterAvatarComponent
---@param InMasterBoneComp USceneComponent
---@param InSyncBoneComp USkinnedMeshComponent
---@param InTargetSlot number
---@return boolean
function UAvatarStrategy_Control_Player:SyncBoneVisibilityWithMaster(InCAC, InMasterBoneComp, InSyncBoneComp, InTargetSlot) end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InSlotID number
---@return boolean
function UAvatarStrategy_Control_Player:IsSlotHasEquiped(InCAC, InHandle, InSlotID) end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InSlotID number
---@return boolean
function UAvatarStrategy_Control_Player:IsForceUseHighQualityMat(InCAC, InHandle, InSlotID) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@return boolean
function UAvatarStrategy_Control_Player:IsForceUseHighQualityMat_ByMeshPack(InCAC, InMeshPack) end

---@param InCAC UCharacterAvatarComponent
---@param InSlotID number
---@param InMeshComp UMeshComponent
---@param InMeshPack FMeshPackage
---@return boolean
function UAvatarStrategy_Control_Player:ApplyMeshVariantMatSetColorMaterial(InCAC, InSlotID, InMeshComp, InMeshPack) end

---HOT_UPDATE_PROTECT *****************************************
---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param OutAvatarMeshConfigRef FAvatarMeshConfig
---@return boolean
function UAvatarStrategy_Control_Player:BP_GetAvatarMeshConfig(InCAC, InHandle, InIsUseLod00, InIsExtraConfig, OutAvatarMeshConfigRef) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param InIsUseLod00 boolean
---@param OutAvatarMeshConfigRef FAvatarMeshConfig
---@return boolean
function UAvatarStrategy_Control_Player:BP_GetAvatarMeshConfigByMeshPack(InCAC, InMeshPack, InIsUseLod00, OutAvatarMeshConfigRef) end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Player:BP_GetMeshResRef(InCAC, InHandle, InIsUseLod00, InIsExtraConfig, InIsIgnoreBodyTypeVariant, OutAssetRef) end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsIgnoreBodyTypeVariant boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Player:BP_GetMeshResRef_NewFPP(InCAC, InHandle, InIsUseLod00, InIsExtraConfig, InIsIgnoreBodyTypeVariant, OutAssetRef) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Player:BP_GetSkeletalMesh(InCAC, InMeshPack, bUseLod00) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Player:BP_GetSkeletalMesh_NewFPP(InCAC, InMeshPack, bUseLod00) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Player:BP_GetStaticMesh(InCAC, InMeshPack, bUseLod00) end

---@param InCAC UCharacterAvatarComponent
---@param InMasterBoneComp USceneComponent
---@param InSyncBoneComp USkinnedMeshComponent
---@param InTargetSlot number
---@return boolean
function UAvatarStrategy_Control_Player:BP_SyncBoneVisibilityWithMaster(InCAC, InMasterBoneComp, InSyncBoneComp, InTargetSlot) end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InSlotID number
---@return boolean
function UAvatarStrategy_Control_Player:BP_IsSlotHasEquiped(InCAC, InHandle, InSlotID) end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InSlotID number
---@return boolean
function UAvatarStrategy_Control_Player:BP_IsForceUseHighQualityMat(InCAC, InHandle, InSlotID) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@return boolean
function UAvatarStrategy_Control_Player:BP_IsForceUseHighQualityMat_ByMeshPack(InCAC, InMeshPack) end

---@param InCAC UCharacterAvatarComponent
---@param InSlotID number
---@param InMeshComp UMeshComponent
---@param InMeshPack FMeshPackage
---@return boolean
function UAvatarStrategy_Control_Player:BP_ApplyMeshVariantMatSetColorMaterial(InCAC, InSlotID, InMeshComp, InMeshPack) end

---@param InMeshPack FMeshPackage
---@param InIsInBattle boolean
---@return boolean
function UAvatarStrategy_Control_Player:IsUseMeshConfigCollection(InMeshPack, InIsInBattle) end
