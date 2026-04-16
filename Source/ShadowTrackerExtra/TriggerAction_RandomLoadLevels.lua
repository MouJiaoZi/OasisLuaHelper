---@meta

---随机加载子level
---@class UTriggerAction_RandomLoadLevels: UTriggerAction
---@field LoadNums number
---@field LevelInfos ULuaArrayHelper<FTriggerLevelConifgInfo>
---@field bDSFlushLoading boolean
local UTriggerAction_RandomLoadLevels = {}

function UTriggerAction_RandomLoadLevels:GetValidIndex() end
