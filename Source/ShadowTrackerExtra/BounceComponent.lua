---@meta

---@class FOnBounceDelegate : ULuaSingleDelegate
FOnBounceDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnBounceDelegate:Bind(Callback, Obj) end

---执行委托
function FOnBounceDelegate:Execute() end


---@class UBounceComponent: UActorComponent
---@field OverlapComponentSelector FActorComponentSelector
---@field OnBounceDelegate FOnBounceDelegate
---@field BounceForce number
---@field MaxBounceForce number
---@field BounceZObstructionFactor number
---@field bCounteract boolean
---@field JumpDuration number
---@field BounceForceFactor number
local UBounceComponent = {}

---@param activatedComp UPrimitiveComponent
---@param otherActor AActor
---@param otherComp UPrimitiveComponent
---@param otherBodyIndex number
---@param bFromSweep boolean
---@param sweepResult FHitResult
function UBounceComponent:OnOverlapEnter(activatedComp, otherActor, otherComp, otherBodyIndex, bFromSweep, sweepResult) end

---@param PlayerPawn ASTExtraPlayerCharacter
function UBounceComponent:BounceCharacter(PlayerPawn) end

---@param PlayerPawn ASTExtraPlayerCharacter
---@return FVector
function UBounceComponent:CalculateLaunchVelocity(PlayerPawn) end
