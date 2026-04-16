---@meta

---通用移动组件的反外挂组件，非当前角色用的组件 主要针对使用通用的角色移动组件来移动的情况
---@class UCharaMoveAntiCheat: UActorComponent
---@field SrvVelocityLimitor FServerVelocityLimitor @服务器移动速度限制，用于处罚和监控
---@field JumpControl FJumpControl @高跳策略
---@field SrvMoveInspector FMovePackageStrategy @移动包监控策略
---@field TimeInspector FMoveTimeLimit @时间相关监控
---@field PassWallCheck FPassWallCheck @穿墙策略
local UCharaMoveAntiCheat = {}

---断线重连
function UCharaMoveAntiCheat:OnRecoverOnServer() end

---在Login时调用
function UCharaMoveAntiCheat:OnPreReconnectOnServer() end
