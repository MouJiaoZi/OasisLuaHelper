---@meta

---客户端信息收集用蓝图组件 方便客户端热更来进行逻辑修改
---@class USecurityCollectorComponent: UActorComponent
local USecurityCollectorComponent = {}

---@param InA number
---@param InB number
---@param InC number
---@param InD number
---@param IoE number
---@param IoF number
---@return boolean
function USecurityCollectorComponent:TransformInputInt(InA, InB, InC, InD, IoE, IoF) end

---@param RealTime number
---@param Monotonic number
---@param MonotonicRaw number
---@param BootTime number
---@param OutCustomTimeVersion number
---@param OutCustomTime number
function USecurityCollectorComponent:CalcClientCustomTime(RealTime, Monotonic, MonotonicRaw, BootTime, OutCustomTimeVersion, OutCustomTime) end
