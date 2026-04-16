---@meta

---@class UGMDataSource_DynamicObject: UGMDataSource
---@field LevelDirectorClass AUAELevelDirector
---@field DynamicTriggers ULuaArrayHelper<AActor>
---@field DynamicBlockActors ULuaArrayHelper<FDynamicBlockActor>
---@field UDPMessageSenderMap ULuaMapHelper<number, AUDPMessageSender>
local UGMDataSource_DynamicObject = {}
