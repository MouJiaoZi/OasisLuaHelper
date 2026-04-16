---@meta

---监控玩家的时间流速
---@class FTimeMonitor
---@field bIsOpen boolean @策略开关
---@field TimeResetThreshold number @允许移动时间戳回转时服务器记录的时间差与回转间隔之间的误差 回转间隔默认为[4*60=240]s 详细可参考属性MinTimeBetweenTimeStampResets的说明
---@field ColdMovePunishMaxTime number @玩家上报时间戳进入锁定状态后，最大的处罚时间
---@field PunishTimeMove number
---@field PunishTimeClient number
---@field PunishTimeOverTotal number
---@field PunishTimeQuickReset number
FTimeMonitor = {}
