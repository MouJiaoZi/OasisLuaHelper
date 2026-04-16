---@meta

---@class EPathMoveLoopMode
---@field None number @无
---@field LoopFromStart number @从头循环
---@field FinishTurnBack number @终点返回
EPathMoveLoopMode = {}


---@class EPathMoveDir
---@field Forward number @正向
---@field Reverse number @反向
EPathMoveDir = {}


---@class EPathMoveFindPathMode
---@field None number
---@field Dir number
---@field Location number
---@field Spline number
EPathMoveFindPathMode = {}


---@class FPathMoveSyncSetting
FPathMoveSyncSetting = {}


---@class FLostTombPathMove_LocationData
FLostTombPathMove_LocationData = {}


---@class FLostTombPathMoveUpdate : ULuaSingleDelegate
FLostTombPathMoveUpdate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLostTombPathMoveUpdate:Bind(Callback, Obj) end

---执行委托
function FLostTombPathMoveUpdate:Execute() end


---@class FLostTombPathMoveEnd : ULuaSingleDelegate
FLostTombPathMoveEnd = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLostTombPathMoveEnd:Bind(Callback, Obj) end

---执行委托
function FLostTombPathMoveEnd:Execute() end


---@class FLostTombPathSpeedChange : ULuaSingleDelegate
FLostTombPathSpeedChange = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FLostTombPathSpeedChange:Bind(Callback, Obj) end

---执行委托
function FLostTombPathSpeedChange:Execute() end


---@class ULostTomb_PathMove: UActorComponent
---@field OnMoveUpdate FLostTombPathMoveUpdate
---@field OnMoveEnd FLostTombPathMoveEnd
---@field OnSpeedChange FLostTombPathSpeedChange
---@field LoopMode EPathMoveLoopMode
---@field bRotateAlongPath boolean
---@field SyncLerpTime number
---@field UpdateNetMoveDistanceInterval number
---@field bUseServerTimeSmooth boolean
---@field MaxIgnoreRepDataCount number
---@field bConstSmoothNetUpdateDist boolean
---@field ConstSmoothNetUpdateDist number
---@field RepLocationData FLostTombPathMove_LocationData
---@field RepPathMoveSyncSetting FPathMoveSyncSetting
---@field RepSpeed number
local ULostTomb_PathMove = {}

---@param StartLocation FVector
---@param MoveDir FVector
---@param InSpeed number
function ULostTomb_PathMove:SetDirPath(StartLocation, MoveDir, InSpeed) end

---@param StartLocation FVector
---@param EndLocation FVector
---@param InSpeed number
---@param StartPos number
---@param StartDir EPathMoveDir
function ULostTomb_PathMove:SetLocationPath(StartLocation, EndLocation, InSpeed, StartPos, StartDir) end

---@param InSplineComponent USplineComponent
---@param InSpeed number
---@param StartPos number
---@param StartDir EPathMoveDir
function ULostTomb_PathMove:SetSplinePath(InSplineComponent, InSpeed, StartPos, StartDir) end

---@param InSpeed number
function ULostTomb_PathMove:SetSpeed(InSpeed) end

---@param Pos number
---@return FTransform
function ULostTomb_PathMove:GetPosTransform(Pos) end

function ULostTomb_PathMove:OnRep_SplineComponent() end

---@param LastData FLostTombPathMove_LocationData
function ULostTomb_PathMove:OnRep_RepLocationData(LastData) end

function ULostTomb_PathMove:OnRep_PathMoveSyncSetting() end

function ULostTomb_PathMove:OnRep_Speed() end
