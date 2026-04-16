---@meta

---@class FCompetitionDisplayLevelRepData
---@field LevelName string
---@field bOnlyVisibleToObserver boolean
FCompetitionDisplayLevelRepData = {}


---【【赛事】品牌BD植入（功能开发——新增IDIP配置下发关卡）】 https://tapd.woa.com/CJGame/prong/stories/view/1020386762114934545 同步关卡数据，复制到客户端，并在客户端加载
---@class UCompetitionDisplayLevelComponent: UActorComponent
---@field CompetitionDisplayLevelRepDataList ULuaArrayHelper<FCompetitionDisplayLevelRepData>
local UCompetitionDisplayLevelComponent = {}

---@param InCompetitionDisplayLevels ULuaArrayHelper<FCompetitionDisplayLevelCfg>
function UCompetitionDisplayLevelComponent:SyncDisplayLevels(InCompetitionDisplayLevels) end

function UCompetitionDisplayLevelComponent:OnRep_CompetitionDisplayLevelRepDataList() end
