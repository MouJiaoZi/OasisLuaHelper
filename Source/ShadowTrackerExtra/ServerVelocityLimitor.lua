---@meta

---服务器速度上限控制 用于处罚和监控
---@class FServerVelocityLimitor
---@field bOpen boolean @是否开启策略
---@field InspectSpan number @监控周期
FServerVelocityLimitor = {}


---用于策略进行限制转发的Delegate
---@class ForceLimitServerMove : ULuaSingleDelegate
ForceLimitServerMove = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: string, Param2: number) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function ForceLimitServerMove:Bind(Callback, Obj) end

---执行委托
---@param Param1 string
---@param Param2 number
function ForceLimitServerMove:Execute(Param1, Param2) end
