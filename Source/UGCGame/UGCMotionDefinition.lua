---@meta

---@class EUGCMotionCompType
---@field Linear number @线性运动
---@field Rotation number @圆周运动
---@field Pendulum number @单摆运动
---@field Scale number @缩放运动
---@field Spline number @路点运动
---@field NonuniformLinear number @变速线性运动
---@field NonuniformRotation number @变速圆周运动
EUGCMotionCompType = {}


---@class FUGCMotionSplinePointData
---@field PointTransform FTransform
---@field PathType EUGCMobileMotionSplinePathType
---@field SpendTime number
---@field MoveToNextRequiredAction FUGCMobileSplineMotionAction
---@field ArrivedBroadcastEvent FUGCMobileSplineMotionEvent
FUGCMotionSplinePointData = {}


---@class FUGCMotionConfigData
---@field IndexName string
---@field StartEventAction FUGCMobileMotionAction
---@field PauseEventAction FUGCMobileMotionAction
---@field Delay number
---@field Type EUGCMotionCompType
---@field bAutoStart boolean
---@field bCycling boolean
---@field bCyclingBack boolean
---@field CyclingPeriod number
---@field CyclingPause number
---@field CyclingBackPause number
---@field bBackWhenPause boolean
---@field Duration number
---@field Space EUGCMobileMotionCompSpace
---@field Velocity FVector
---@field Angular FVector
---@field AccelerateTime number
---@field Scale FVector
---@field Acceleration FVector
---@field PendulumAxis FVector
---@field PendulumCycle number
---@field PendulumAngle number
---@field SplinePointData ULuaArrayHelper<FUGCMotionSplinePointData>
---@field ResetEventAction FUGCMobileMotionAction
---@field bResetTransformOnResetEvent boolean
FUGCMotionConfigData = {}
