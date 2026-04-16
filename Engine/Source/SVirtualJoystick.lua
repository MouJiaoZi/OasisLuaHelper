---@meta

---@class EJoystickOperatingMode
---@field JSNormal number
---@field JSEightDirection number
---@field JSEasyGoStraight number
EJoystickOperatingMode = {}


---@class EJoystickIsInside
---@field EJII_LeftAndVisualSize number
---@field EJII_VisualSize number
---@field EJII_DynamicSize number
EJoystickIsInside = {}


---@class FOnJoystickTouchDelegate : ULuaMulticastDelegate
FOnJoystickTouchDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FVector2D, Param2: number, Param3: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnJoystickTouchDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FVector2D
---@param Param2 number
---@param Param3 boolean
function FOnJoystickTouchDelegate:Broadcast(Param1, Param2, Param3) end


---@class FOnJoystickTouchAlwaysSendDelegate : ULuaMulticastDelegate
FOnJoystickTouchAlwaysSendDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FVector2D, Param2: number, Param3: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnJoystickTouchAlwaysSendDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FVector2D
---@param Param2 number
---@param Param3 boolean
function FOnJoystickTouchAlwaysSendDelegate:Broadcast(Param1, Param2, Param3) end


---@class FOnJoystickActiveDelegate : ULuaSingleDelegate
FOnJoystickActiveDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FVector2D, Param2: FVector2D) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnJoystickActiveDelegate:Bind(Callback, Obj) end

---执行委托
---@param Param1 FVector2D
---@param Param2 FVector2D
function FOnJoystickActiveDelegate:Execute(Param1, Param2) end


---@class FOnJoystickHandleByLogic : ULuaSingleDelegate
FOnJoystickHandleByLogic = {}

---绑定回调函数
---@param Callback fun(Obj: any, Param1: FVector2D) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnJoystickHandleByLogic:Bind(Callback, Obj) end

---执行委托
---@param Param1 FVector2D
function FOnJoystickHandleByLogic:Execute(Param1) end


---@class FOnJoystickTouchEventDelegate : ULuaMulticastDelegate
FOnJoystickTouchEventDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, Param1: FGeometry, Param2: FVector2D, Param3: number, Param4: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnJoystickTouchEventDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param Param1 FGeometry
---@param Param2 FVector2D
---@param Param3 number
---@param Param4 boolean
function FOnJoystickTouchEventDelegate:Broadcast(Param1, Param2, Param3, Param4) end
