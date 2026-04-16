---@meta

---调试系统接口库
---@class UGCDebugSystem
UGCDebugSystem = {}

---屏幕左上角逐行打印字符串
---生效范围：客户端
---@param InString string @要打印的字符串
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.PrintToScreen(InString, Color, Duration) end

---清除屏幕上持续时间未过的字符串
---生效范围：客户端
function UGCDebugSystem.FlushOnScreenDebugMessages() end

---绘制直线
---生效范围：客户端
---@param LineStart FVector @结构Vector={X=0,Y=0,Z=0}
---@param LineEnd FVector @结构Vector={X=0,Y=0,Z=0}
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugLine(LineStart, LineEnd, Color, Duration) end

---绘制点
---生效范围：客户端
---@param Position FVector @结构Vector={X=0,Y=0,Z=0}
---@param Size number @点的大小
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugPoint(Position, Size, Color, Duration) end

---绘制箭头
---生效范围：客户端
---@param LineStart FVector @结构Vector={X=0,Y=0,Z=0}
---@param LineEnd FVector @结构Vector={X=0,Y=0,Z=0}
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugArrow(LineStart, LineEnd, Color, Duration) end

---绘制圆
---生效范围：客户端
---@param Center FVector @结构Vector={X=0,Y=0,Z=0}
---@param Radius number @圆的半径
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
---@param YAxis FVector @椭圆半长轴方向向量，模长影响缩放; 缺省为{X=0,Y=1,Z=0}; 结构Vector={X=0,Y=0,Z=0}
---@param ZAxis FVector @椭圆半短轴方向向量，模长影响缩放; 缺省为{X=0,Y=0,Z=1}; 结构Vector={X=0,Y=0,Z=0}
---@param bDrawAxis boolean @缺省为0
function UGCDebugSystem.DrawDebugCircle(Center, Radius, Color, Duration, YAxis, ZAxis, bDrawAxis) end

---绘制坐标系
---生效范围：客户端
---@param AxisLoc FVector @结构Vector={X=0,Y=0,Z=0}
---@param AxisRot FRotator @结构Rot={Pitch=0,Yaw=0,Roll=0}
---@param Scale number @坐标轴长度; 缺省为100
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugCoordinateSystem(AxisLoc, AxisRot, Scale, Duration) end

---绘制盒子
---生效范围：客户端
---@param Center FVector @结构Vector={X=0,Y=0,Z=0}
---@param Extent FVector @表示盒子中心到各面的距离; 结构Vector={X=0,Y=0,Z=0}
---@param Rotation FRotator @结构Rot={Pitch=0,Yaw=0,Roll=0}
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugBox(Center, Extent, Rotation, Color, Duration) end

---绘制球体
---生效范围：客户端
---@param Center FVector @结构Vector={X=0,Y=0,Z=0}
---@param Radius number @球的半径
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugSphere(Center, Radius, Color, Duration) end

---绘制圆柱体
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param Radius number @底面半径
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugCylinder(Start, End, Radius, Color, Duration) end

---绘制胶囊
---生效范围：客户端
---@param Center FVector @结构Vector={X=0,Y=0,Z=0}
---@param HalfHeight number @胶囊半高
---@param Radius number @截面圆半径
---@param Rotation FRotator @结构Rot={Pitch=0,Yaw=0,Roll=0};
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugCapsule(Center, HalfHeight, Radius, Rotation, Color, Duration) end

---绘制文本
---生效范围：客户端
---@param TextLocation FVector @未绑定Actor时为世界坐标，绑定Actor时为相对Actor的坐标; 结构Vector={X=0,Y=0,Z=0}
---@param Text string @显示的文本
---@param TestBaseActor AActor @绑定在哪个Actor上
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugString(TextLocation, Text, TestBaseActor, Color, Duration) end

---清空场景中持续时间未过的调试文本（不包括UI）
---生效范围：客户端
function UGCDebugSystem.FlushDebugStrings() end

---清空场景中持续时间未过的调试图形
---生效范围：客户端
function UGCDebugSystem.FlushDebugLines() end

---绘制Actor名称
---生效范围：客户端
---@param Actor AActor @目标Actor
---@param Offset FVector @结构Vector={X=0,Y=0,Z=0}
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugActorName(Actor, Offset, Color, Duration) end

---绘制Actor运动轨迹
---生效范围：客户端
---@param Actor AActor @目标Actor
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，此时运动轨迹将持续保留
function UGCDebugSystem.DrawDebugActorMoveTrack(Actor, Color, Duration) end

---绘制Self到Target的连线和距离数值
---生效范围：客户端
---@param Self FVector @结构Vector={X=0,Y=0,Z=0}
---@param Target FVector @结构Vector={X=0,Y=0,Z=0}
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugDistance(Self, Target, Color, Duration) end

---绘制准心瞄准物体名称
---生效范围：客户端
---@param Length number @生效距离，缺省为10000
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugTargetAimedAt(Length, Duration) end

---绘制射线与第一处命中标记
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugLineTraceSingle(Start, End, Color, Duration) end

---绘制射线与全部命中标记
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugLineTraceMulti(Start, End, Color, Duration) end

---绘制沿射线运动的球体轨迹与第一处命中标记
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param Radius number @球体半径
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugSphereTraceSingle(Start, End, Radius, Color, Duration) end

---绘制沿射线运动的球体轨迹与全部命中标记
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param Radius number @球体半径
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugSphereTraceMulti(Start, End, Radius, Color, Duration) end

---绘制沿射线运动的方盒轨迹与第一处命中标记
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param HalfSize FVector @结构Vector={X=0,Y=0,Z=0}
---@param Orientation FRotator @结构Rot={Pitch=0,Yaw=0,Roll=0}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugBoxTraceSingle(Start, End, HalfSize, Orientation, Duration) end

---绘制沿射线运动的方盒轨迹与全部命中标记
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param HalfSize FVector @结构Vector={X=0,Y=0,Z=0}
---@param Orientation FRotator @结构Rot={Pitch=0,Yaw=0,Roll=0}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugBoxTraceMulti(Start, End, HalfSize, Orientation, Duration) end

---绘制沿射线运动的胶囊轨迹与第一处命中标记
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param Radius number @胶囊截面圆半径
---@param HalfSize FVector @结构Vector={X=0,Y=0,Z=0}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugCapsuleTraceSingle(Start, End, Radius, HalfSize, Duration) end

---绘制沿射线运动的胶囊轨迹与全部命中标记
---生效范围：客户端
---@param Start FVector @结构Vector={X=0,Y=0,Z=0}
---@param End FVector @结构Vector={X=0,Y=0,Z=0}
---@param Radius number @胶囊截面圆半径
---@param HalfSize FVector @结构Vector={X=0,Y=0,Z=0}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugCapsuleTraceMulti(Start, End, Radius, HalfSize, Duration) end

---绘制碰撞盒
---生效范围：客户端
---@param Actor AActor @目标Actor
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugActorCollision(Actor, Color, Duration) end

---绘制包围盒
---生效范围：客户端
---@param Actor AActor @目标Actor
---@param Color FLinearColor @缺省为红色; 结构Color={A=1,B=1,G=1,R=1}
---@param Duration number @缺省为0，即每帧调用一次，保持一帧时间
function UGCDebugSystem.DrawDebugActorBounds(Actor, Color, Duration) end