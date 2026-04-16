---@meta

---@class UGMComponentManager: UObject
---@field Components ULuaMapHelper<ESubSystemType, UActorComponent>
---@field OwnerGameMode UObject
---@field ComponentConfigs ULuaArrayHelper<UGMSubSystemBase>
---@field GenericComponentConfigs ULuaArrayHelper<UGMSubSystemBase>
---@field StatCallFunctionNameUniq ULuaArrayHelper<string>
local UGMComponentManager = {}
