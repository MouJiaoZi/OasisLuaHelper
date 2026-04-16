---@meta

---排行榜周期类型枚举
---@class ERankListPeriodType
---@field DailyReset number @每日重置
---@field WeeklyReset number @每周重置
---@field MonthlyReset number @每月重置
---@field NotReset number @不重置
ERankListPeriodType = {}


---排行榜排序类型枚举
---@class ERankListSortType
---@field LargeValuePrefer number @大值优先
---@field SmallValuePrefer number @小值优先
ERankListSortType = {}


---排行榜是否启用枚举
---@class ERankListEnableType
---@field Enable number @启用
---@field UnEnable number @禁用
ERankListEnableType = {}


---排行榜是否显示
---@class ERankListDisplayType
---@field Show number @显示
---@field Hide number @隐藏
ERankListDisplayType = {}


---排行榜分数显示格式
---@class ERankListScoreFormatType
---@field Number number @数字
---@field Time number @时间
---@field Percent number @百分比
ERankListScoreFormatType = {}


---排行榜物品结构体
---@class FUGCRankingListAwardItem
---@field ItemID number @物品ID
---@field ItemNum number @物品数量
FUGCRankingListAwardItem = {}


---排行榜排名奖励结构体
---@class FRankListAward
---@field BeginRanking number @起始排名
---@field EndRanking number @结束排名
---@field AwardList ULuaArrayHelper<FUGCRankingListAwardItem> @奖励列表
FRankListAward = {}


---排行榜表格结构体
---@class FUGCRankingListData
---@field ID number @排行榜索引ID
---@field PeopleNum number @排行榜最大上榜人数
---@field PeriodType ERankListPeriodType @排行榜周期类型
---@field BeginDate FDateTime @排行榜开始时间
---@field SettleDate FDateTime @非周期榜结算时间
---@field EndDate FDateTime @排行榜结束时间
---@field SortPropertyName string @排序属性名称
---@field SortType ERankListSortType @排序类型
---@field RankAward ULuaArrayHelper<FRankListAward> @排行榜奖励列表
---@field TabName string @排行榜页签名称
---@field EnableType ERankListEnableType @是否启用排行榜
---@field ShowInGame ERankListDisplayType @是否在玩法内展示
---@field ShowInDetails ERankListDisplayType @是否在玩法详情页展示
---@field Desc string @排行榜说明
---@field ScoreFormatType ERankListScoreFormatType @分数显示格式
FUGCRankingListData = {}


---@class UUGCRankingListDataTable: UUAEDataTable
local UUGCRankingListDataTable = {}
