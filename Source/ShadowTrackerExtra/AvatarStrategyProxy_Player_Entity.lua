---@meta

---@class UAvatarStrategyProxy_Player_Entity: UAvatarStrategyProxy_Player
---@field bOverride_PreprocessingEntityLoadedHandle boolean @HOT_UPDATE_PROTECT *****************************************
---@field bOverride_PreprocessingEntityMeshData boolean
local UAvatarStrategyProxy_Player_Entity = {}

---HOT_UPDATE_PROTECT *****************************************
function UAvatarStrategyProxy_Player_Entity:InitStrategyProxy() end

function UAvatarStrategyProxy_Player_Entity:ReleaseStrategyProxy() end

---+++++++++Entity+++++++++ Should Contains Avatar Component and Avatar Entity in Params
---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategyProxy_Player_Entity:PreprocessingEntityLoadedHandle(InAC, InAE, InBackpackHandle) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategyProxy_Player_Entity:PreprocessingEntityMeshData(InAC, InAE, InBackpackHandle) end

---HOT_UPDATE_PROTECT *****************************************
---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategyProxy_Player_Entity:BP_PreprocessingEntityLoadedHandle(InAC, InAE, InBackpackHandle) end

---@param InAC UAvatarComponent
---@param InAE UAvatarEntity
---@param InBackpackHandle UBattleItemHandleBase
---@return boolean
function UAvatarStrategyProxy_Player_Entity:BP_PreprocessingEntityMeshData(InAC, InAE, InBackpackHandle) end
