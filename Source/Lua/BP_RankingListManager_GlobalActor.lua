---@meta

---UGC排行榜系统全局管理器
---@class RankingListManager:AUGCGamePartGlobalActor
local RankingListManager = {}

---生效范围：客户端
---排行榜数据变更回调
---@param RankID number @榜单ID
---@param RankingCycles number @榜单周期
RankingListManager.ShowRankDataChangeDelegate = nil

---生效范围：客户端
---玩家排名数据变更回调
---@param RankID number @榜单ID
---@param RankingCycles number @榜单周期
---@param UID number @玩家UID
RankingListManager.PlayerRankDataChangeDelegate = nil

---生效范围：客户端
---玩家信息数据变更回调
---@param RankID number @榜单ID
RankingListManager.ProfileDataChangeDelegate = nil

---生效范围：客户端&服务端
---领取奖励回调
---@param RankID number @榜单ID
---@param Result boolean @领奖是否成功
---@param UID number @玩家UID
RankingListManager.ClaimRankListAwardDelegate = nil

---玩家信息
---@class UGCRankListAwardState
---@field Lock number @未解锁
---@field CanSign number @可领取
---@field HasGot number @已领取
---@field NotAvailable number @不可领取
local UGCRankListAwardState = {}

---玩家信息
---@class RankListProfileData
---@field UID number @玩家UID
---@field PlayerName string @玩家名称
---@field PicUrl string @玩家头像URL
---@field IsAnonymous boolean @是否被封禁
local RankListProfileData = {}

---玩家排行榜数据
---@class PlayerRankData
---@field Rank number @玩家排名
---@field Score number @玩家分数
local PlayerRankData = {}

---排行榜数据
---@class RankListData
---@field UID number @玩家UID
---@field Score number @玩家分数
local RankListData = {}

---更新排行榜分数
---生效范围：服务端
---@param PlayerController BP_UGCPlayerController_C @玩家控制器
---@param UID number @玩家UID
---@param RankID number @排行榜ID
---@param Score number @更新分数
---@param IsIncremental boolean @是否增量更新
function RankingListManager:UpdateScore(PlayerController, UID, RankID, Score, IsIncremental) end

---获取玩家信息，使用前需要调用对应榜单的GetRankListData接口
---生效范围：客户端
---@param RankID number @排行榜ID
---@param UID number @玩家UID
---@return RankListProfileData
function RankingListManager:GetProfileData(RankID, UID) end

---领取排行榜奖励
---生效范围：客户端&服务端
---@param PlayerController BP_UGCPlayerController_C @玩家控制器
---@param RankID number @排行榜ID
function RankingListManager:ClaimRankListAward(PlayerController, RankID) end

---判断是否可以领取奖励
---生效范围：客户端&服务端
---@param PlayerController BP_UGCPlayerController_C @玩家控制器
---@param RankID number @排行榜ID
---@return UGCRankListAwardState
function RankingListManager:CanClaimRankListAward(PlayerController, RankID) end

---获取当前DS内玩家排行榜数据(调用后如果当前缓存数据的获取时间超过RequestInterval或者榜单跨越了结算时间, DS会向后台重新请求一次，刷新缓存数据，但当次调用的返回结果还是旧缓存数据)
---生效范围：客户端&服务端
---@param UID number @玩家UID
---@param RankID number @排行榜ID
---@param RankingCycles number @排行榜周期，0为当期，1为上期
---@return PlayerRankData @玩家排行榜数据
function RankingListManager:GetPlayerRankData(UID, RankID, RankingCycles) end

---获取排行榜数据(调用后如果当前缓存数据的获取时间超过RequestInterval或者榜单跨越了结算时间, DS会向后台重新请求一次，刷新缓存数据，但当次调用的返回结果还是旧缓存数据)
---生效范围：客户端&服务端
---@param RankID number @排行榜ID
---@param RankingCycles number @排行榜周期，0为当期，1为上期
---@return table<number, RankListData>
function RankingListManager:GetRankListData(RankID, RankingCycles) end

---获取全部排行榜数据
---生效范围：客户端&服务端
---@return table
function RankingListManager:GetShowRankData() end

---打开举报界面
---生效范围：客户端
---@param UID number @举报玩家UID
---@param PlayerName string @举报玩家姓名
---@param RankID number @排行榜ID
---@param ShowUID boolean @是否显示UID
function RankingListManager:OpenReportUI(UID, PlayerName, RankID, ShowUID) end