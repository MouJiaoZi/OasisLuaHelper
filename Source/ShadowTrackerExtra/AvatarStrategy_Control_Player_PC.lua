---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Control_Player_PC: UAvatarStrategy_Control_Player
---@field bFallbackToNonPCConfig boolean @HOT_UPDATE_PROTECT *****************************************
local UAvatarStrategy_Control_Player_PC = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Control_Player_PC:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Control_Player_PC:ReleaseStrategy() end

---@param InCAC UCharacterAvatarComponent
---@param InHandle UBackpackAvatarHandle
---@param InSlotID number
---@return boolean
function UAvatarStrategy_Control_Player_PC:IsForceUseHighQualityMat(InCAC, InHandle, InSlotID) end

---@param InCAC UCharacterAvatarComponent
---@param InMeshPack FMeshPackage
---@return boolean
function UAvatarStrategy_Control_Player_PC:IsForceUseHighQualityMat_ByMeshPack(InCAC, InMeshPack) end

---@param InMeshPack FMeshPackage
---@param InIsInBattle boolean
---@return boolean
function UAvatarStrategy_Control_Player_PC:IsUseMeshConfigCollection(InMeshPack, InIsInBattle) end

---@param InMeshPack FMeshPackage
---@param InIsInBattle boolean
---@return boolean
function UAvatarStrategy_Control_Player_PC:IsUseMeshConfigCollection_PC(InMeshPack, InIsInBattle) end
