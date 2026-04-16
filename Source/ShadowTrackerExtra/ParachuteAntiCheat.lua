---@meta

---跳伞反外挂组件
---@class FParachuteAntiCheat
---@field SpeedCheckInterval number @进行速度检查的服务器时间间隔
---@field bUseConvertedTime boolean @是否使用DS的时间进行时间戳转换后的策略
---@field FreeFallMaxHSpeed number @自由下落阶段最大的水平速度
---@field FreeFallMaxZSpeed number @自由下落阶段最大的竖直速度
---@field OpenedMaxHSpeed number @开伞阶段最大的水平速度
---@field OpenedMaxZSpeed number @开伞阶段最大的竖直速度
---@field PunishTimeConfig number @处罚的时长 由于跳伞不能定住玩家，在处罚时间内始终由服务器主导运动
FParachuteAntiCheat = {}
