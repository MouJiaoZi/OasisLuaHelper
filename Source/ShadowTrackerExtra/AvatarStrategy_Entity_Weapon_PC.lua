---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Entity_Weapon_PC: UAvatarStrategy_Entity_Weapon
local UAvatarStrategy_Entity_Weapon_PC = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Entity_Weapon_PC:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Entity_Weapon_PC:ReleaseStrategy() end

---@param InWAC UWeaponAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategy_Entity_Weapon_PC:ApplyAvatarRenderConfig(InWAC, InAE) end

---@param InMeshPack FWeaponMeshCfg
---@param InIsInBattleMap boolean
---@return boolean
function UAvatarStrategy_Entity_Weapon_PC:IsUseMeshConfigCollection(InMeshPack, InIsInBattleMap) end
