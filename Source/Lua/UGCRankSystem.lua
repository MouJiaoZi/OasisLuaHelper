---@meta

---段位专用接口库
---@class UGCRankSystem
UGCRankSystem = {}

---查询段位分
---调用 UGCRankSystem.AddRankProgress 后，会获取到新段位分
---例：开局 2000 积分，中途调用 UGCRankSystem.AddRankProgress 增加 100 积分，再调用 UGCRankSystem.GetUGCRank 则得到 2100 积分
---详细使用流程参考 wiki (https://developer.gp.qq.com/wiki/#/lvzhou_duanwei.html)
---生效范围：服务器
---@param PlayerKey number @玩家 PlayerKey
---@return number @段位分
function UGCRankSystem.GetUGCRank(PlayerKey) end

---修改段位分
---生效范围：服务器
---@param PlayerKey number @玩家 PlayerKey
---@param Count number @段位分变化值
function UGCRankSystem.AddRankProgress(PlayerKey, Count) end

---查询当前玩法段位赛 ID
---生效范围：服务器
---@return number @游戏赛季 ID
function UGCRankSystem.GetUGCGameSeasonId() end