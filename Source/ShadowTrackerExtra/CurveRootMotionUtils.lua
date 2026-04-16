---@meta

---@class FRootMotionMoveId
---@field MoveId number
FRootMotionMoveId = {}


---@class FOnCurveRootMotionStart : ULuaSingleDelegate
FOnCurveRootMotionStart = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FRootMotionMoveId, Param2: boolean) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCurveRootMotionStart:Bind(Callback, Obj) end

---执行委托
---@param Param1 FRootMotionMoveId
---@param Param2 boolean
function FOnCurveRootMotionStart:Execute(Param1, Param2) end


---@class FOnCurveRootMotionEnd : ULuaSingleDelegate
FOnCurveRootMotionEnd = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FRootMotionMoveId) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnCurveRootMotionEnd:Bind(Callback, Obj) end

---执行委托
---@param Param1 FRootMotionMoveId
function FOnCurveRootMotionEnd:Execute(Param1) end


---@class FRootMotionSimulateMovementStep : ULuaSingleDelegate
FRootMotionSimulateMovementStep = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FSimulateMovementParams) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FRootMotionSimulateMovementStep:Bind(Callback, Obj) end

---执行委托
---@param Param1 FSimulateMovementParams
function FRootMotionSimulateMovementStep:Execute(Param1) end
