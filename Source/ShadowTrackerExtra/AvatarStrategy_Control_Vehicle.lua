---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Control_Vehicle: UAvatarStrategy
---@field bOverride_GetMeshResRef boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_GetMeshResRefByMeshPack boolean
---@field bOverride_GetSkeletalMeshResRef boolean
---@field bOverride_GetStaticMeshResRef boolean
---@field bOverride_GetAnimBPPath boolean
local UAvatarStrategy_Control_Vehicle = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Control_Vehicle:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Control_Vehicle:ReleaseStrategy() end

---@param InVAC UVehicleAvatarComponent
---@param InHandleBase UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:GetMeshResRef(InVAC, InHandleBase, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:GetMeshResRefByMeshPack(InVAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:GetSkeletalMeshResRef(InVAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@return boolean
function UAvatarStrategy_Control_Vehicle:GetSkeletalMesh(InVAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:GetStaticMeshResRef(InVAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@return boolean
function UAvatarStrategy_Control_Vehicle:GetStaticMesh(InVAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:GetAnimBPPath(InVAC, InMeshPack, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---HOT_UPDATE_PROTECT *****************************************
---@param InVAC UVehicleAvatarComponent
---@param InHandleBase UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:BP_GetMeshResRef(InVAC, InHandleBase, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:BP_GetMeshResRefByMeshPack(InVAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:BP_GetSkeletalMeshResRef(InVAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsUseLod00 boolean
---@param InIsExtraConfig boolean
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:BP_GetStaticMeshResRef(InVAC, InMeshPack, InIsUseLod00, InIsExtraConfig, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InVAC UVehicleAvatarComponent
---@param InMeshPack FVehicleMeshCfg
---@param InIsFallbackWhenNoBrokenConfig boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Vehicle:BP_GetAnimBPPath(InVAC, InMeshPack, InIsFallbackWhenNoBrokenConfig, OutAssetRef) end

---@param InMeshPack FVehicleMeshCfg
---@param InIsInBattleMap boolean
---@return boolean
function UAvatarStrategy_Control_Vehicle:IsUseMeshConfigCollection(InMeshPack, InIsInBattleMap) end
