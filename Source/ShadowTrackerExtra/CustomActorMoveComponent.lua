---@meta

---@class ECustomActorForwardDir
---@field X number
---@field Y number
---@field Z number
ECustomActorForwardDir = {}


---@class FCustomActorLerpMoveInfo
---@field ActorStartLookToForward boolean
---@field UseAcceleration boolean
---@field IsStartMove boolean
---@field ActorForwardDir ECustomActorForwardDir
---@field ActorLookForwardIgnorePitchAndRoll boolean
---@field CustomCurveIndex number
---@field LerpTime number
---@field CurrentMoveTime number
---@field AccelerationTime number
---@field MoveSpeed number
---@field Acceleration number
---@field StartPos FVector
---@field EndPos FVector
---@field StartRotator FRotator
---@field bAutoRotate boolean
---@field MoveStartTime number
FCustomActorLerpMoveInfo = {}


---@class FCustomActorMoveEvent : ULuaMulticastDelegate
FCustomActorMoveEvent = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, bIsMove: boolean) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FCustomActorMoveEvent:Add(Callback, Obj) end

---触发 Lua 广播
---@param bIsMove boolean
function FCustomActorMoveEvent:Broadcast(bIsMove) end


---一个给ActivityBaseActor移动功能的组件，用于移动所挂载的ActivityBaseActor
---@class UCustomActorMoveComponent: UActorComponent
---@field ClientActiveBeCustom boolean
---@field ClientStopMoveToDestin boolean
---@field ActorStartLookToForward boolean
---@field ActorForwardDir ECustomActorForwardDir
---@field ActorLookForwardIgnorePitchAndRoll boolean
---@field MoveSpeed number
---@field Acceleration number
---@field UseAcceleration boolean
---@field UseNewAcceleration boolean
---@field RepTime number
---@field PosCustomCurveList ULuaArrayHelper<UCurveVector>
---@field PosCustomCurvePlayRate ULuaArrayHelper<number>
---@field bCurveMoveBaseonParentRelative boolean
---@field bClientDelayOneFrameUpdatePosition boolean
---@field ClientNeedJumpIntervalTime number
---@field ClientTimeScaleRange FVector2D
---@field TimeScaleLerpRange FVector2D
---@field TimeScaleUseLerp boolean
---@field LerpMoveInfo FCustomActorLerpMoveInfo
---@field ActorMoveEvent FCustomActorMoveEvent @移动状态改变事件委托 @param bIsMove 是否正在移动
---@field bUseAutoRotate boolean
---@field bOnlyYawRotate boolean
---@field AutoRotateInterpSpeed number
---@field UseGlideTimeReplaceSpeed boolean
---@field GlideTime number
---@field CurrentMoveTime number
local UCustomActorMoveComponent = {}

---@param LerpTime number
function UCustomActorMoveComponent:OnUpdateAvatarPosWithoutAcceleration(LerpTime) end

---生效范围：S
---开始移动
function UCustomActorMoveComponent:StartMove() end

function UCustomActorMoveComponent:StartMoveClient() end

---生效范围：S
---结束移动
function UCustomActorMoveComponent:StopMove() end

---生效范围：S
---设置移动速度
---@param InSpeed number @速度
function UCustomActorMoveComponent:SetMoveSpeed(InSpeed) end

---生效范围：S
---设置固定的滑行时间, 而不是使用起始点到终点位置除以速度得到这个数值
---@param GlideTime number @滑行时间
function UCustomActorMoveComponent:SetGlideTime(GlideTime) end

---生效范围：S
---设置移动的起始点和终点
---@param InStart FVector @起点
---@param InEnd FVector @终点
function UCustomActorMoveComponent:SetPosition(InStart, InEnd) end

---@param StartTime number
function UCustomActorMoveComponent:SetMoveStartTime(StartTime) end

---@param InSplineComp USplineComponent
function UCustomActorMoveComponent:SetSplineComponent(InSplineComp) end

---@param InPos FVector
function UCustomActorMoveComponent:SetActorPosition(InPos) end

---@param InRot FRotator
function UCustomActorMoveComponent:SetActorRotator(InRot) end

function UCustomActorMoveComponent:LookForward() end

function UCustomActorMoveComponent:OnRep_CurrentMoveTime() end

function UCustomActorMoveComponent:OnRep_LerpMoveInfo() end

function UCustomActorMoveComponent:DoOnRep_LerpMoveInfo() end
