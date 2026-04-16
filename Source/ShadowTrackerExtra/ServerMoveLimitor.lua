---@meta

---服务器移动监控 其他策略触发这个策略的处罚，暂时不给予延迟堆包的容错，强制以服务器移动为准
---@class FServerMoveLimitor
---@field InspectSpan number @监控周期
---@field BigVelocityWarnThres number @速度过快的日志输出阈值
---@field BigVelocityLogCnt number @速度过快的日志输出的次数限制
---@field LogCntPositionJump number @上报和输出位置跳变的次数
---@field TimeMoveRecSpan number @进行移动记录的时间间隔
FServerMoveLimitor = {}
