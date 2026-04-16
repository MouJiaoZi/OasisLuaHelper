---@meta

---@class FSelectTouchPointCach
---@field FingerIndex number
---@field TouchLoc FVector2D
---@field TouchTime number
FSelectTouchPointCach = {}


---@class FOnTouchSelectActorDelegate : ULuaMulticastDelegate
FOnTouchSelectActorDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelectActor: AActor, TouchLoc: FVector2D) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnTouchSelectActorDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelectActor AActor
---@param TouchLoc FVector2D
function FOnTouchSelectActorDelegate:Broadcast(SelectActor, TouchLoc) end


---@class USTExtraTouchComponent: UActorComponent
---@field TouchMoveDistanceAllow number
---@field TouchEndGapAllow number
---@field TraceSelectCD number
---@field TraceRange number
---@field CollisionChannel ECollisionChannel
---@field SelectTargetClass AActor
---@field OnTouchSelectActorEvent FOnTouchSelectActorDelegate
local USTExtraTouchComponent = {}

function USTExtraTouchComponent:BindTouchDelegate() end

---@param MyGeometry FGeometry
---@param TouchLoc FVector2D
---@return FVector2D
function USTExtraTouchComponent:ModifyTouchLoc(MyGeometry, TouchLoc) end

---@param MyGeometry FGeometry
---@param TouchLoc FVector2D
---@param FingerIndex number
---@param bIsStart boolean
function USTExtraTouchComponent:OnJoystickTouchEvent(MyGeometry, TouchLoc, FingerIndex, bIsStart) end
