---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Control_Weapon: UAvatarStrategy
---@field bOverride_GetMeshResRef boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_GetSkeletalMesh boolean
---@field bOverride_GetStaticMesh boolean
---@field bOverride_GetAvatarMeshConfigByMeshPack boolean
local UAvatarStrategy_Control_Weapon = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Control_Weapon:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Control_Weapon:ReleaseStrategy() end

---@param InWAC UWeaponAvatarComponent
---@param InHandleBase UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsOffHand boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Weapon:GetMeshResRef(InWAC, InHandleBase, InIsUseLod00, InIsOffHand, OutAssetRef) end

---@param InWAC UWeaponAvatarComponent
---@param InMeshPack FWeaponMeshCfg
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Weapon:GetSkeletalMesh(InWAC, InMeshPack, bUseLod00) end

---@param InWAC UWeaponAvatarComponent
---@param InMeshPack FWeaponMeshCfg
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Weapon:GetStaticMesh(InWAC, InMeshPack, bUseLod00) end

---@param InWAC UWeaponAvatarComponent
---@param InMeshPack FWeaponMeshCfg
---@param bUseLod00 boolean
---@param OutAvatarMeshConfigRef FWeaponAvatarMeshConfig
---@return boolean
function UAvatarStrategy_Control_Weapon:GetAvatarMeshConfigByMeshPack(InWAC, InMeshPack, bUseLod00, OutAvatarMeshConfigRef) end

---HOT_UPDATE_PROTECT *****************************************
---@param InWAC UWeaponAvatarComponent
---@param InHandleBase UBattleItemHandleBase
---@param InIsUseLod00 boolean
---@param InIsOffHand boolean
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Control_Weapon:BP_GetMeshResRef(InWAC, InHandleBase, InIsUseLod00, InIsOffHand, OutAssetRef) end

---@param InWAC UWeaponAvatarComponent
---@param InMeshPack FWeaponMeshCfg
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Weapon:BP_GetSkeletalMesh(InWAC, InMeshPack, bUseLod00) end

---@param InWAC UWeaponAvatarComponent
---@param InMeshPack FWeaponMeshCfg
---@param bUseLod00 boolean
---@return boolean
function UAvatarStrategy_Control_Weapon:BP_GetStaticMesh(InWAC, InMeshPack, bUseLod00) end

---@param InWAC UWeaponAvatarComponent
---@param InMeshPack FWeaponMeshCfg
---@param bUseLod00 boolean
---@param OutAvatarMeshConfigRef FWeaponAvatarMeshConfig
---@return boolean
function UAvatarStrategy_Control_Weapon:BP_GetAvatarMeshConfigByMeshPack(InWAC, InMeshPack, bUseLod00, OutAvatarMeshConfigRef) end

---@param InMeshPack FWeaponMeshCfg
---@param InIsInBattleMap boolean
---@return boolean
function UAvatarStrategy_Control_Weapon:IsUseMeshConfigCollection(InMeshPack, InIsInBattleMap) end
