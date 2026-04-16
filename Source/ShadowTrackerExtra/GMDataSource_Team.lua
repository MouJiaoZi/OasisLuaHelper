---@meta

---@class FTeamInfo
---@field TeamId number
---@field TeamMembers ULuaArrayHelper<ASTExtraPlayerState>
---@field TotalKills number
---@field UIRandomTeamID number
FTeamInfo = {}


---@class UGMDataSource_Team: UGMDataSource
---@field TeamMap ULuaMapHelper<number, FTeamInfo>
---@field MaxTeamSize number
---@field MaxTeamIdInHistory number
---@field IsBuildRandomTeamID boolean
---@field CurRandomArrayIndex number
---@field OutofOrderTeamID ULuaArrayHelper<number>
---@field TeamIDToRandomTeamID ULuaMapHelper<number, number>
---@field bNeedSyncTeammateToClient boolean
---@field bNeedParachute boolean
local UGMDataSource_Team = {}
