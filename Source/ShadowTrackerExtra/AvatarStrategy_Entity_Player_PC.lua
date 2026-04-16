---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Entity_Player_PC: UAvatarStrategy_Entity_Player
local UAvatarStrategy_Entity_Player_PC = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Entity_Player_PC:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Entity_Player_PC:ReleaseStrategy() end

---@param InMeshPack FMeshPackage
---@param InIsInBattle boolean
---@return boolean
function UAvatarStrategy_Entity_Player_PC:IsUseMeshConfigCollection(InMeshPack, InIsInBattle) end

---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategy_Entity_Player_PC:ApplyAvatarRenderConfig(InCAC, InAE) end
