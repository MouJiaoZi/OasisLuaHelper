---@meta

---徽章专用接口库
---@class UGCAchievementSystem
UGCAchievementSystem = {}

---累积徽章进度
---计数为覆盖累计，单场内多次调用不会累加计数，需自行计算累计总数单次调用
---详细使用流程参考wiki (https://developer.gp.qq.com/wiki/#/lvzhou_huizhang.html)
---生效范围：服务器
---@param PlayerKey number @玩家PlayerKey
---@param AchievementID number @徽章ID
---@param Count number @徽章计数
function UGCAchievementSystem.AddAchievementProgress(PlayerKey, AchievementID, Count) end