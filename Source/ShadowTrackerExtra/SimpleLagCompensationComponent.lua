---@meta

---怪物用反外挂组件 怪物没有命中骨骼校验和历史位置回溯，不能使用人物的反外挂组件
---@class USimpleLagCompensationComponent: ULagCompensationComponentBase
---@field bUsePhysVelocity boolean @是否使用从模拟物理组件取到的速度
local USimpleLagCompensationComponent = {}
