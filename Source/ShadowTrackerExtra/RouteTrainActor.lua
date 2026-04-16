---@meta

---@class ETrainHeadingDir
---@field XPositive number
---@field XNegative number
---@field YPositive number
---@field YNegative number
ETrainHeadingDir = {}


---车厢
---@class FRailCar
---@field Name string
---@field FrontOffset number
---@field BackOffset number
---@field CenterPivot FVector
---@field RailCarRot FRotator
---@field PrevWorldTM FTransform
---@field WorldTM FTransform
---@field BentOffset number
FRailCar = {}


---火车实现
---@class ARouteTrainActor: ASimulateRouteActor
---@field bLoop boolean @是否是循环路线的火车
---@field RailCarTag string @车厢Tag
---@field RailCarFrontContactTag string @前后连接点Tag
---@field RailCarBackContactTag string
---@field HeadingDir ETrainHeadingDir @车厢相对车头的方向
---@field RailCars ULuaArrayHelper<FRailCar> @车厢数组
---@field bForwardMove boolean @是否是正向前进
---@field bArriveEndToStop boolean @到达终点是否停车
---@field bNeedForceUpdateChild boolean @是否需要强制更新子Child Transform 默认是打开的
local ARouteTrainActor = {}

---根据SpeedCurve上的 Value 计算火车各个车厢的位置
---@param CurveValue number
---@param DeltaTime number
function ARouteTrainActor:CalcRailCarPosition(CurveValue, DeltaTime) end
