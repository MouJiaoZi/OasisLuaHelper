---@meta

---@class EBasicMoveAntiStrategy
---@field Strategy_SpeedUp number
---@field Strategy_BadFall number
---@field Strategy_Jump number
---@field Strategy_TimeStamp number
---@field Strategy_Max number
EBasicMoveAntiStrategy = {}


---@class FBasicMoveAntiCheatConfig
---@field bOpenBasicMoveAntiCheat boolean
FBasicMoveAntiCheatConfig = {}


---通用基础反外挂组件 挂载在使用移动组件移动的物体的反外挂校验
---@class UBasicMoveAntiCheat: UActorComponent
---@field BasicMoveAntiCheatConfig FBasicMoveAntiCheatConfig @反外挂配置
---@field BasicStrategyList ULuaMapHelper<EBasicMoveAntiStrategy, UBasicMonitorBase> @反外挂策略配置列表
---@field BasicMonitorList ULuaMapHelper<EBasicMoveAntiStrategy, UBasicMonitorBase> @运行时缓存
---@field bEnablePunishSaved boolean @是否开启下车后处罚保留
local UBasicMoveAntiCheat = {}

---断线重连
function UBasicMoveAntiCheat:OnRecoverOnServer() end

---在Login时调用
function UBasicMoveAntiCheat:OnPreReconnectOnServer() end
