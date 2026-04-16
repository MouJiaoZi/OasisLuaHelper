---@meta

---@class EAttracttedTargetType
---@field ActorTarget number @飞向目标Actor
---@field LocationTarget number @飞向目标位置
EAttracttedTargetType = {}


---@class EMoveCurveType
---@field Screw number @位移_旋转
---@field QuadraticJump number @位移_弹跳
---@field MoveDirectly number @位移_直飞
EMoveCurveType = {}


---@class FOnReachTargetLocationDelegate : ULuaMulticastDelegate
FOnReachTargetLocationDelegate = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, SelfActor: AActor, TargetLocation: FVector, TargetActor: AActor) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnReachTargetLocationDelegate:Add(Callback, Obj) end

---触发 Lua 广播
---@param SelfActor AActor
---@param TargetLocation FVector
---@param TargetActor AActor
function FOnReachTargetLocationDelegate:Broadcast(SelfActor, TargetLocation, TargetActor) end


---@class UAcrobaticsMovementComponent: UMovementComponent
---@field bRotationFollowsVelocity number
---@field bFacingToTargetAtEnd number
---@field OffsetLocation FVector
---@field TargetLocation FVector
---@field MoveScale FVector
---@field TargetType EAttracttedTargetType
---@field MoveCurveType EMoveCurveType
---@field Duration number
---@field RiseScale number
---@field MaxHeight number
---@field MinHeight number
---@field OnReachTargetLocation FOnReachTargetLocationDelegate
---@field ActiveOnSpawn boolean
---@field IsReached boolean
---@field DuringTime number
---@field QuadraticHeight number
---@field InitLocation FVector
---@field CurveLocation FVector
local UAcrobaticsMovementComponent = {}

---@param NewVelocity FVector
function UAcrobaticsMovementComponent:SetVelocityInLocalSpace(NewVelocity) end

function UAcrobaticsMovementComponent:Reset() end
