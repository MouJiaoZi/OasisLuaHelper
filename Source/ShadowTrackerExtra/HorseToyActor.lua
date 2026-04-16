---@meta

---@class FOnHorseDeltaVelocity : ULuaMulticastDelegate
FOnHorseDeltaVelocity = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, DeltaVel: number) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnHorseDeltaVelocity:Add(Callback, Obj) end

---触发 Lua 广播
---@param DeltaVel number
function FOnHorseDeltaVelocity:Broadcast(DeltaVel) end


---@class AHorseToyActor: AActor
---@field bIsInKeepCD boolean
---@field FinalJumpLocation FVector
---@field JumpTime number
---@field BaseSpeed number
---@field SpeedDecrement number
---@field MaxSpeed number
---@field StartPointTouchTol number
---@field SoundVelocityMultipl number
---@field SoundBumpMultipl number
---@field CurrentVelocity number
---@field CurrentPositionOnSpline number
---@field OnHorseDeltaVelocity FOnHorseDeltaVelocity
local AHorseToyActor = {}

---@param force number
function AHorseToyActor:OnTouchStartPoint(force) end
