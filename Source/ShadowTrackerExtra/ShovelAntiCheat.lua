---@meta

---对玩家的滑铲状态进行监控
---@class FShovelAntiCheat
---@field DataSendInterval number @缓存数据的发送间隔 在滑铲结束时会强制进行发送 间隔不能太大，当前最大的缓存数量为31，超过的话会发送失败 目前的数据量应该为10=1.0/0.1
---@field DataSampleInterval number @数据的采样间隔
---@field SampleMoveVelocityTorelate number @在对每一次采样的速度进行判定时，允许的速度容差
---@field CheatLockTime number @处罚时不允许移动的时间
---@field MaxServerClientDeltaCount number @允许服务端滑铲次数与客户端上报滑铲次数之间的差值 防止屏蔽上报RPC的情况
FShovelAntiCheat = {}
