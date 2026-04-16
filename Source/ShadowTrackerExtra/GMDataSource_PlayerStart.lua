---@meta

---@class UGMDataSource_PlayerStart: UGMDataSource
---@field CachedPlayerStarts ULuaArrayHelper<ASTExtraPlayerStart>
---@field BornIDToPlayerStartsMap ULuaMapHelper<number, FBornPlayerStartData>
---@field BornIDToActivityPlayerStartsMap ULuaMapHelper<number, FBornPlayerStartData> @缓存活动出生点, feishen, 20200515
local UGMDataSource_PlayerStart = {}
