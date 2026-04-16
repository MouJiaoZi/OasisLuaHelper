---@meta

---Types of Collision Shapes that are used by Trace *
---@class ECollisionShape
---@field Line number
---@field Box number
---@field Sphere number
---@field Capsule number
ECollisionShape = {}


---This is Trace/Sweep Delegate that can be used if you'd like to get notified whenever available Otherwise, you'll have to query manually using your TraceHandle
---@class FTraceDelegate : ULuaSingleDelegate
FTraceDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FTraceHandle, Param2: FTraceDatum) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FTraceDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FTraceHandle
---@param Param2 FTraceDatum
function FTraceDelegate:Execute(Param1, Param2) end


---This is Overlap Delegate that can be used if you'd like to get notified whenever available Otherwise, you'll have to query manually using your TraceHandle
---@class FOverlapDelegate : ULuaSingleDelegate
FOverlapDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FTraceHandle, Param2: FOverlapDatum) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOverlapDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FTraceHandle
---@param Param2 FOverlapDatum
function FOverlapDelegate:Execute(Param1, Param2) end
