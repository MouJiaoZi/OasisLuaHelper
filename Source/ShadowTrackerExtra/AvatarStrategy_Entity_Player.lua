---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Entity_Player: UAvatarStrategy
---@field bOverride_GetAnimBPPath boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_GetRawMeshTypeByMeshPack boolean
---@field bOverride_ApplyAvatarRenderConfig boolean
---@field bOverride_PostApplyAnimInstance boolean
---@field bOverride_PreprocessingEntityLoadedHandle boolean
---@field bOverride_PreprocessingEntityMeshData boolean
local UAvatarStrategy_Entity_Player = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Entity_Player:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Entity_Player:ReleaseStrategy() end

---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FMeshPackage
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Entity_Player:GetAnimBPPath(InCAC, InAE, InMeshPack, OutAssetRef) end

---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FMeshPackage
---@param OutMeshType EMeshType
---@return boolean
function UAvatarStrategy_Entity_Player:GetRawMeshTypeByMeshPack(InCAC, InAE, InMeshPack, OutMeshType) end

---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategy_Entity_Player:ApplyAvatarRenderConfig(InCAC, InAE) end

---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategy_Entity_Player:PostApplyAnimInstance(InCAC, InAE) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategy_Entity_Player:PreprocessingEntityLoadedHandle(InAC, InAE, InBackpackHandle) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategy_Entity_Player:PreprocessingEntityMeshData(InAC, InAE, InBackpackHandle) end

---HOT_UPDATE_PROTECT *****************************************
---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategy_Entity_Player:IsForceIgnoreSlotSocket(InCAC, InAE, InBackpackHandle) end

---HOT_UPDATE_PROTECT *****************************************
---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FMeshPackage
---@param OutAssetRef FSoftObjectPath
---@return boolean
function UAvatarStrategy_Entity_Player:BP_GetAnimBPPath(InCAC, InAE, InMeshPack, OutAssetRef) end

---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@param InMeshPack FMeshPackage
---@param OutMeshType EMeshType
---@return boolean
function UAvatarStrategy_Entity_Player:BP_GetRawMeshTypeByMeshPack(InCAC, InAE, InMeshPack, OutMeshType) end

---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategy_Entity_Player:BP_ApplyAvatarRenderConfig(InCAC, InAE) end

---@param InCAC UCharacterAvatarComponent
---@param InAE UAvatarEntity
---@return boolean
function UAvatarStrategy_Entity_Player:BP_PostApplyAnimInstance(InCAC, InAE) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategy_Entity_Player:BP_PreprocessingEntityLoadedHandle(InAC, InAE, InBackpackHandle) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategy_Entity_Player:BP_PreprocessingEntityMeshData(InAC, InAE, InBackpackHandle) end

---@param InMeshPack FMeshPackage
---@param InIsInBattle boolean
---@return boolean
function UAvatarStrategy_Entity_Player:IsUseMeshConfigCollection(InMeshPack, InIsInBattle) end
