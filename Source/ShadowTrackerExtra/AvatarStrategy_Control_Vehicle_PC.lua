---@meta

---子类覆盖时，HOT_UPDATE_PROTECT 中的几个关键方法必须用热更保护宏做保护 HOT_UPDATE_PROTECT(FuncName) *****
---@class UAvatarStrategy_Control_Vehicle_PC: UAvatarStrategy_Control_Vehicle
local UAvatarStrategy_Control_Vehicle_PC = {}

---HOT_UPDATE_PROTECT *****************************************
---@param InTriggerProxy UAvatarStrategyProxy
function UAvatarStrategy_Control_Vehicle_PC:InitStrategy(InTriggerProxy) end

function UAvatarStrategy_Control_Vehicle_PC:ReleaseStrategy() end

---@param InMeshPack FVehicleMeshCfg
---@param InIsInBattleMap boolean
---@return boolean
function UAvatarStrategy_Control_Vehicle_PC:IsUseMeshConfigCollection(InMeshPack, InIsInBattleMap) end
