---@meta

---@class FOffsetSplineRouteSyncData
---@field SplineOffset FVector
FOffsetSplineRouteSyncData = {}


---@class FOnSplineOffsetUpdate : ULuaSingleDelegate
FOnSplineOffsetUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FOnSplineOffsetUpdate:Bind(Callback, Obj) end

---执行委托
function FOnSplineOffsetUpdate:Execute() end


---和splinemovement一样沿着轨迹运行，但是可以根据输入，上下左右调整相对于spline的位置
---@class UOffsetSplineMovementComponent: USplineMovementComponent
---@field ControlSpeed number
---@field Fly_InputTriggerThreshold number
---@field Fly_AcceUp number
---@field Fly_MaxUpSpeed number
---@field Fly_MaxUpOffset number
---@field Fly_AcceRight number
---@field Fly_MaxRightSpeed number
---@field Fly_MaxRightOffset number
---@field HorizontalSpeedModifier number
---@field SyncData FOffsetSplineRouteSyncData
---@field OnSplineOffsetUpdate FOnSplineOffsetUpdate
---@field SpeedRate number
---@field ClientTickInterval number
local UOffsetSplineMovementComponent = {}

---@param PlayerCha ASTExtraPlayerCharacter
function UOffsetSplineMovementComponent:OnAttachPawn(PlayerCha) end

function UOffsetSplineMovementComponent:OnRep_SyncData() end
