---@meta

---@class UUEMathUtilityMethods: UBlueprintFunctionLibrary
local UUEMathUtilityMethods = {}

---@param angleA number
---@param angleB number
---@return number
function UUEMathUtilityMethods:AngleDis(angleA, angleB) end

---@param startAngle number
---@param targetAngle number
---@param stepAngle number
---@param dir EAngleRotationDirectionType
---@return number
function UUEMathUtilityMethods:CalculateAngleToTargetAngle(startAngle, targetAngle, stepAngle, dir) end

---计算非轴对齐矩形内随机一点
---@param Center FVector
---@param WidthDir FVector
---@param HeightDir FVector
---@param HalfWidth number
---@param HalfHeight number
---@return FVector
function UUEMathUtilityMethods:GetRandomPointInOrientedRect(Center, WidthDir, HeightDir, HalfWidth, HalfHeight) end

---计算非轴对齐矩形顶点
---@param Center FVector
---@param WidthDir FVector
---@param HeightDir FVector
---@param HalfWidth number
---@param HalfHeight number
---@param LeftUp FVector
---@param LeftDown FVector
---@param RightUp FVector
---@param RightDown FVector
function UUEMathUtilityMethods:GetVertexOfOrientedRect(Center, WidthDir, HeightDir, HalfWidth, HalfHeight, LeftUp, LeftDown, RightUp, RightDown) end

---根据和求随机索引
---@param Values ULuaArrayHelper<number>
---@return number
function UUEMathUtilityMethods:GetRandomIndexBySum(Values) end

---线段和平面是否相交, 平面坐标系的Y向量为法向量
---@param PlaneTrans FTransform
---@param PlaneWidth number
---@param PlaneHeight number
---@param LineStart FVector
---@param LineEnd FVector
---@return boolean
function UUEMathUtilityMethods:IsPlaneIntersectWithLineSegment(PlaneTrans, PlaneWidth, PlaneHeight, LineStart, LineEnd) end

---从向量 A 朝向量 B 旋转一定角度 Theta
---@param DirA FVector
---@param DirB FVector
---@param Theta number
---@param ResDir FVector
---@param ResDone boolean
---@return boolean
function UUEMathUtilityMethods:RotateVectorByRadian_3D(DirA, DirB, Theta, ResDir, ResDone) end

---从向量 A 朝向量 B 旋转一定角度 Theta
---@param DirA FVector2D
---@param DirB FVector2D
---@param Theta number
---@param ResDir FVector2D
---@param ResDone boolean
---@return boolean
function UUEMathUtilityMethods:RotateVectorByRadian_2D(DirA, DirB, Theta, ResDir, ResDone) end

---求两条线段的交点
---@param A FVector2D
---@param B FVector2D
---@param C FVector2D
---@param D FVector2D
---@param t1 number
---@param t2 number
---@return boolean
function UUEMathUtilityMethods:FindTwoSegmentCrossPoint(A, B, C, D, t1, t2) end

---求点到 Box 的距离 SDF
---@param P FVector
---@param BoxTrans FTransform
---@param BoxExtend FVector
---@return number
function UUEMathUtilityMethods:SignedDist_Box(P, BoxTrans, BoxExtend) end
