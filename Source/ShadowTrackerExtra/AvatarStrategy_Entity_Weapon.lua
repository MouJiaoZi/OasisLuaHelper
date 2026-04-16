---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Entity_Weapon: UAvatarStrategy
---@field bOverride_GetAnimBPPath boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_GetRawMeshTypeByMeshPack boolean
---@field bOverride_ApplyAvatarRenderConfig boolean
local UAvatarStrategy_Entity_Weapon = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Entity_Weapon:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Entity_Weapon:ReleaseStrategy() end

---@param InWAC UWeaponAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FWeaponMeshCfg
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Entity_Weapon:GetAnimBPPath(InWAC, InAE, InMeshPack, OutAssetRef) end

---@param InWAC UWeaponAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FWeaponMeshCfg
---@param OutMeshType EMeshType
---@return boolean
function UAvatarStrategy_Entity_Weapon:GetRawMeshTypeByMeshPack(InWAC, InAE, InMeshPack, OutMeshType) end

---@param InWAC UWeaponAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategy_Entity_Weapon:ApplyAvatarRenderConfig(InWAC, InAE) end

---HOT_UPDATE_PROTECT *****************************************
---@param InWAC UWeaponAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FWeaponMeshCfg
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Entity_Weapon:BP_GetAnimBPPath(InWAC, InAE, InMeshPack, OutAssetRef) end

---@param InWAC UWeaponAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FWeaponMeshCfg
---@param OutMeshType EMeshType
---@return boolean
function UAvatarStrategy_Entity_Weapon:BP_GetRawMeshTypeByMeshPack(InWAC, InAE, InMeshPack, OutMeshType) end

---@param InWAC UWeaponAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategy_Entity_Weapon:BP_ApplyAvatarRenderConfig(InWAC, InAE) end

---@param InMeshPack FWeaponMeshCfg
---@param InIsInBattleMap boolean
---@return boolean
function UAvatarStrategy_Entity_Weapon:IsUseMeshConfigCollection(InMeshPack, InIsInBattleMap) end
