---@meta

---监控玩家的相对移动速度
---@class FRelSpeedInspector
---@field CheckInterval number @检查速度的间隔
---@field MaxSpeed number @允许达到的最大速度 由于动态地板旋转时会产生计算偏差，需要保留一定的容错
---@field PunishTimeSeconds number @单次处罚时间
FRelSpeedInspector = {}
