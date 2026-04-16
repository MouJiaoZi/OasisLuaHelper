---@meta

---数学工具接口库
---@class UGCMathUtility
UGCMathUtility = {}

---返回A的正弦值(sin)，结果为弧度制
---@param A number @A
---@return number @sin(A)
function UGCMathUtility.Sin(A) end

---返回A的反正弦值(arcsin)，结果为弧度制
---@param A number @A
---@return number @arcsin(A)
function UGCMathUtility.Asin(A) end

---返回A的余弦值(cos)，结果为弧度制
---@param A number @A
---@return number @cos(A)
function UGCMathUtility.Cos(A) end

---返回A的反余弦值(arccos)，结果为弧度制
---@param A number @A
---@return number @arccos(A)
function UGCMathUtility.Acos(A) end

---返回A的正切值(tan)，结果为弧度制
---@param A number @A
---@return number @tan(A)
function UGCMathUtility.Tan(A) end

---返回A的反正切值(arctan)，结果为弧度制
---@param A number @A
---@return number @arctan(A)
function UGCMathUtility.Atan(A) end

---返回A的正弦值(sin)，结果为角度制
---@param A number @A
---@return number @sin(A)
function UGCMathUtility.DegSin(A) end

---返回A的反正弦值(arcsin)，结果为角度制
---@param A number @A
---@return number @arcsin(A)
function UGCMathUtility.DegAsin(A) end

---返回A的余弦值(cos)，结果为角度制
---@param A number @A
---@return number @cos(A)
function UGCMathUtility.DegCos(A) end

---返回A的反余弦值(arccos)，结果为角度制
---@param A number @A
---@return number @arccos(A)
function UGCMathUtility.DegAcos(A) end

---返回A的正切值(tan)，结果为角度制
---@param A number @A
---@return number @tan(A)
function UGCMathUtility.DegTan(A) end

---返回A的反正切值(arctan)，结果为角度制
---@param A number @A
---@return number @arctan(A)
function UGCMathUtility.DegAtan(A) end

---返回A/B的反正切值(atan2)，结果为角度制
---@param A number @A
---@param B number @B
---@return number @arctan(A/B)
function UGCMathUtility.DegAtan2(A, B) end

---返回一个介于0和1之间的随机浮点数
---@return number @随机浮点数
function UGCMathUtility.RandomFloat() end

---生成一个介于Min和Max之间的随机数
---@param InMin number @最小值
---@param InMax number @最大值
---@return number @随机数
function UGCMathUtility.RandomFloatInRange(InMin, InMax) end

---根据Alpha在A和B之间线性插值（Alpha=0时返回A，Alpha=1时返回B））
---@param A number @A
---@param B number @B
---@param Alpha number @Alpha
---@return number @线性插值
function UGCMathUtility.Lerp(A, B, Alpha) end

---【废弃】请使用 UGCMathUtility.Clamp
---返回限制在A和B之间的值（包含A和B）
---@param InValue number @值
---@param InMin number @最小值
---@param InMax number @最大值
---@return number @限制后的值
function UGCMathUtility.FClamp(InValue, InMin, InMax) end

---将数值从一个输入范围映射到另一个输出范围（数值会被限制在输入范围内）。（例如：将0.5从0→1范围映射到0→50范围会得到25）
---@param InValue number @值
---@param InMinIn number @输入范围最小值
---@param InMaxIn number @输入范围最大值
---@param InMinOut number @输出范围最小值
---@param InMaxOut number @输出范围最大值
---@return number @映射后的值
function UGCMathUtility.MapRangeClamped(InValue, InMinIn, InMaxIn, InMinOut, InMaxOut) end

---返回A是否近似等于B（|A - B| < 误差容限）
---@param A number @A
---@param B number @B
---@param Tolerance number @误差容限
---@return boolean @是否近似等于
function UGCMathUtility.NearlyEqualFloat(A, B, Tolerance) end

---如果A不等于B则返回true
---@param A number @A
---@param B number @B
---@return boolean @是否不等于
function UGCMathUtility.NotEqualFloat(A, B) end

---返回当前计算机的本地日期和时间
---@return FDateTime @当前计算机的本地日期和时间
function UGCMathUtility.Now() end

---返回当前计算机的本地日期
---@return FDateTime @当前计算机的本地日期
function UGCMathUtility.Today() end

---返回当前计算机的UTC日期和时间
---@return FDateTime @当前计算机的UTC日期和时间
function UGCMathUtility.UtcNow() end

---返回A的年分量值
---@param A FDateTime @A
---@return number @年分量值
function UGCMathUtility.GetYear(A) end

---返回A的月分量值
---@param A FDateTime @A
---@return number @月分量值
function UGCMathUtility.GetMonth(A) end

---返回给定年份和月份的天数
---@param Year number @年份
---@param Month number @月份
---@return number @天数
function UGCMathUtility.DaysInMonth(Year, Month) end

---向量加法
---@param A FVector @A
---@param B FVector @B
---@return FVector
function UGCMathUtility.AddVector(A, B) end

---返回二维向量A和二维向量B的和（A + B）
---@param A FVector2D @A
---@param B FVector2D @B
---@return FVector2D
function UGCMathUtility.AddVector2D(A, B) end

---向量减法
---@param A FVector @A
---@param B FVector @B
---@return FVector
function UGCMathUtility.SubtractVector(A, B) end

---返回二维向量A和二维向量B的差（A - B）
---@param A FVector2D @A
---@param B FVector2D @B
---@return FVector2D
function UGCMathUtility.SubtractVector2D(A, B) end

---将向量A按B缩放
---@param A FVector @A
---@param B number @B
---@return FVector
function UGCMathUtility.MultiplyVector(A, B) end

---将二维向量A按B缩放
---@param A FVector2D @A
---@param B number @B
---@return FVector2D
function UGCMathUtility.MultiplyVector2D(A, B) end

---返回向量的长度
---@param A FVector @A
---@return number
function UGCMathUtility.VSize(A) end

---返回二维向量的长度
---@param A FVector2D @A
---@return number
function UGCMathUtility.VSize2D(A) end

---返回向量的长度的平方
---@param A FVector @A
---@return number
function UGCMathUtility.VSizeSquared(A) end

---返回二维向量的长度的平方
---@param A FVector2D @A
---@return number
function UGCMathUtility.VSizeSquared2D(A) end

---判断向量A是否在允许误差范围内等于向量B
---@param A FVector @A
---@param B FVector @B
---@param Tolerance number @允许误差，默认为1.e-4f
---@return boolean
function UGCMathUtility.EqualVector(A, B, Tolerance) end

---判断向量A是否在允许误差范围内不等于向量B
---@param A FVector @A
---@param B FVector @B
---@param Tolerance number @允许误差，默认为1.e-4f
---@return boolean
function UGCMathUtility.NotEqualVector(A, B, Tolerance) end

---返回两个向量的点积
---@param A FVector @A
---@param B FVector @B
---@return number
function UGCMathUtility.DotVector(A, B) end

---返回两个向量的叉积
---@param A FVector @A
---@param B FVector @B
---@return FVector
function UGCMathUtility.CrossVector(A, B) end

---返回两个二维向量的点积
---@param A FVector2D @A
---@param B FVector2D @B
---@return number
function UGCMathUtility.DotVector2D(A, B) end

---返回两个二维向量的叉积
---@param A FVector2D @A
---@param B FVector2D @B
---@return number
function UGCMathUtility.CrossVector2D(A, B) end

---返回向量A经过 Rotator B 旋转后的结果
---@param A FVector @A
---@param B FRotator @B
---@return FVector @Vector
function UGCMathUtility.RotateVector(A, B) end

---返回向量A绕Axis轴旋转AngleDeg角度后的结果
---@param A FVector @A
---@param AngleDeg number @AngleDeg
---@param Axis FVector @Axis
---@return FVector @Vector
function UGCMathUtility.RotateAngleAxis(A, AngleDeg, Axis) end

---返回向量A的单位法向量
---@param A FVector @A
---@return FVector @Vector
function UGCMathUtility.Normal(A) end

---返回二维向量A的单位法向量
---@param A FVector2D @A
---@return FVector2D @Vector
function UGCMathUtility.Normal2D(A) end

---根据Alpha值在向量A和向量B之间线性插值（Alpha=0时返回100%A，Alpha=1时返回100%B）
---@param A FVector @A
---@param B FVector @B
---@param Alpha number @Alpha
---@return FVector @Vector
function UGCMathUtility.VLerp(A, B, Alpha) end

---返回一个长度为1的随机向量
---@return FVector @Vector
function UGCMathUtility.RandomUnitVector() end

---返回指定边界框内的随机点
---@param Origin FVector @Origin
---@param BoxExtent FVector @BoxExtent
---@return FVector @Point
function UGCMathUtility.RandomPointInBoundingBox(Origin, BoxExtent) end

---将向量V投影到目标向量Target上并返回投影向量，如果Target长度接近零，则返回零向量
---@param V FVector @V
---@param Target FVector @Target
---@return FVector @Vector
function UGCMathUtility.ProjectVectorOnToVector(V, Target) end

---根据当前值到目标值的插值进行平滑过渡，实现流畅的过度效果
---@param Current number @当前值
---@param Target number @目标值
---@param DeltaTime number @平滑时间
---@param InterpSpeed number @插值速度
---@return number @新的插值位置
function UGCMathUtility.FInterpTo(Current, Target, DeltaTime, InterpSpeed) end

---以恒定速率向目标值变换
---@param Current number @当前值
---@param Target number @目标值
---@param DeltaTime number @平滑时间
---@param InterpSpeed number @插值速度
---@return number @Location
function UGCMathUtility.FInterpConstantTo(Current, Target, DeltaTime, InterpSpeed) end

---根据向量表示的当前位置与目标位置的距离平滑地接近目标位置，实现流畅的追踪效果
---@param Current FVector @当前位置
---@param Target FVector @目标位置
---@param DeltaTime number @平滑时间
---@param InterpSpeed number @插值速度
---@return FVector @新的插值位置
function UGCMathUtility.VInterpTo(Current, Target, DeltaTime, InterpSpeed) end

---以恒定速率向向量表示的目标位置移动
---@param Current FVector @当前位置
---@param Target FVector @目标位置
---@param DeltaTime number @平滑时间
---@param InterpSpeed number @插值速度
---@return FVector @Location
function UGCMathUtility.VInterpConstantTo(Current, Target, DeltaTime, InterpSpeed) end

---根据二维向量表示的当前位置与目标位置的距离平滑地接近目标位置，实现流畅的追踪效果
---@param Current FVector2D @当前位置
---@param Target FVector2D @目标位置
---@param DeltaTime number @平滑时间
---@param InterpSpeed number @插值速度
---@return FVector2D @新的插值位置
function UGCMathUtility.Vector2DInterpTo(Current, Target, DeltaTime, InterpSpeed) end

---以恒定速率向二维向量表示的目标位置移动
---@param Current FVector2D @当前位置
---@param Target FVector2D @目标位置
---@param DeltaTime number @平滑时间
---@param InterpSpeed number @插值速度
---@return FVector2D @Location
function UGCMathUtility.Vector2DInterpConstantTo(Current, Target, DeltaTime, InterpSpeed) end

---根据当前旋转角度平滑过渡到目标旋转角度，实现流畅的旋转效果
---@param Current FRotator @当前旋转角度
---@param Target FRotator @目标旋转角度
---@param DeltaTime number @平滑时间
---@param InterpSpeed number @插值速度
---@return FRotator @新的插值旋转角度
function UGCMathUtility.RInterpTo(Current, Target, DeltaTime, InterpSpeed) end

---以恒定速率向目标旋转角度旋转
---@param Current FRotator @当前旋转角度
---@param Target FRotator @目标旋转角度
---@param DeltaTime number @平滑时间
---@param InterpSpeed number @插值速度
---@return FRotator @Location
function UGCMathUtility.RInterpConstantTo(Current, Target, DeltaTime, InterpSpeed) end

---查找线段上距离给定点最近的点
---@param Point FVector @需要计算最近点的目标点
---@param SegmentStart FVector @线段起点
---@param SegmentEnd FVector @线段终点
---@return FVector @线段上距离给定点最近的点
function UGCMathUtility.FindClosestPointOnSegment(Point, SegmentStart, SegmentEnd) end

---找到无限长直线上距离给定点最近的点
---@param Point FVector @需要计算最近点的目标点
---@param LineOrigin FVector @直线上的参考点
---@param LineDirection FVector @直线上的方向向量(无需归一化)
---@return FVector @Point
function UGCMathUtility.FindClosestPointOnLine(Point, LineOrigin, LineDirection) end

---计算点到线段的最短距离
---@param Point FVector @需要计算最近点的目标点
---@param SegmentStart FVector @线段起点
---@param SegmentEnd FVector @线段终点
---@return number @点到线段的最短距离
function UGCMathUtility.GetPointDistanceToSegment(Point, SegmentStart, SegmentEnd) end

---计算点到无限长直线的最短距离
---@param Point FVector @需要计算距离的目标
---@param LineOrigin FVector @直线上的参考点
---@param LineDirection FVector @直线上的方向向量(无需归一化)
---@return number @点到直线上的最短距离
function UGCMathUtility.GetPointDistanceToLine(Point, LineOrigin, LineDirection) end

---将向量投影到由法向量定义的平面上
---@param V FVector @需要投影的向量
---@param PlaneNormal FVector @法向量
---@return FVector @投影后的向量
function UGCMathUtility.ProjectVectorOnToPlane(V, PlaneNormal) end

---向量取反
---@param V FVector @需要取反的向量
---@return FVector @取反后的向量
function UGCMathUtility.NegateVector(V) end

---将向量长度限制在最小值和最大值之间
---@param V FVector @需要限制长度的向量
---@param Min number @最小长度
---@param Max number @最大长度
---@return FVector @限制长度后的向量
function UGCMathUtility.ClampVectorSize(V, Min, Max) end

---找出向量中(X, Y或Z)的最小分量
---@param V FVector @需要计算最小分量的向量
---@return number @最小分量
function UGCMathUtility.GetMinElement(V) end

---找出向量中(X, Y或Z)的最大分量
---@param V FVector @需要计算最大分量的向量
---@return number @最大分量
function UGCMathUtility.GetMaxElement(V) end

---计算从一个位置指向另一个位置的单位方向向量
---@param From FVector @起点
---@param To FVector @终点
---@return FVector @单位方向向量
function UGCMathUtility.GetDirectionUnitVector(From, To) end

---如果A和B相等则返回true (A == B)
---@param A string @A
---@param B string @B
---@return boolean @true or false
function UGCMathUtility.EqualName(A, B) end

---如果A和B不相等则返回true (A ~= B)
---@param A string @A
---@param B string @B
---@return boolean @true or false
function UGCMathUtility.NotEqualName(A, B) end

---通过最小点和最大点创建一个FBox，并将IsValid设为true
---@param Min FVector @最小点
---@param Max FVector @最大点
---@return FBox @FBox
function UGCMathUtility.MakeBox(Min, Max) end

---通过最小点和最大点创建一个FBox2D，并将IsValid设为true
---@param Min FVector2D @最小点
---@param Max FVector2D @最大点
---@return FBox2D @FBox2D
function UGCMathUtility.MakeBox2D(Min, Max) end

---创建一个向量 {X, Y, Z}
---@param X number @X
---@param Y number @Y
---@param Z number @Z
---@return FVector @向量
function UGCMathUtility.MakeVector(X, Y, Z) end

---将向量分解为X、Y和Z分量
---@param V FVector @向量
---@return number, number, number @X,Y,Z
function UGCMathUtility.BreakVector(V) end

---创建一个二维向量 {X, Y}
---@param X number @X
---@param Y number @Y
---@return FVector2D @向量
function UGCMathUtility.MakeVector2D(X, Y) end

---将二维向量分解为X和Y分量
---@param V FVector2D @向量
---@return number, number @X,Y
function UGCMathUtility.BreakVector2D(V) end

---按给定旋转角度旋转世界前向向量
---@param InRot FRotator @旋转角度
---@return FVector @矩阵
function UGCMathUtility.GetForwardVector(InRot) end

---按给定旋转角度旋转世界右向量
---@param InRot FRotator @旋转角度
---@return FVector @矩阵
function UGCMathUtility.GetRightVector(InRot) end

---按给定旋转角度旋转世界上向量
---@param InRot FRotator @旋转角度
---@return FVector @矩阵
function UGCMathUtility.GetUpVector(InRot) end

---将向量分解为Yaw(偏航角)和Pitch(俯仰角)旋转值(角度制，不限制范围)
---@param V FVector @向量
---@return number, number @Yaw,Pitch
function UGCMathUtility.GetYawPitchFromVector(V) end

---使用以度数为单位提供的旋转值创建旋转器{Roll, Pitch, Yaw}
---@param Roll number @Roll
---@param Pitch number @Pitch
---@param Yaw number @Yaw
---@return FRotator @矩阵
function UGCMathUtility.MakeRotator(Roll, Pitch, Yaw) end

---查找一个物体在起始位置指向目标位置所需的旋转角度
---@param Start FVector @起始位置
---@param Target FVector @目标位置
---@return FRotator @矩阵
function UGCMathUtility.FindLookAtRotation(Start, Target) end

---仅使用X轴构建Rotator。Y和Z轴未指定但将保持正交归一。X轴无需归一化
---@param XAxis FVector @X轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromX(XAxis) end

---仅使用Y轴构建Rotator。X和Z轴未指定但将保持正交归一。Y轴无需归一化
---@param YAxis FVector @Y轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromY(YAxis) end

---仅使用Z轴构建Rotator。X和Y轴未指定但将保持正交归一。Z轴无需归一化
---@param ZAxis FVector @Z轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromZ(ZAxis) end

---使用给定的X和Y轴构建矩阵。X轴保持不变，Y轴会微调以确保正交性。Z轴将被计算得出。输入向量无需归一化
---@param XAxis FVector @X轴
---@param YAxis FVector @Y轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromXY(XAxis, YAxis) end

---使用给定的X和Z轴构建矩阵。X轴保持不变，Z轴会微调以确保正交性。Y轴将被计算得出。输入向量无需归一化
---@param XAxis FVector @X轴
---@param ZAxis FVector @Z轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromXZ(XAxis, ZAxis) end

---使用给定的Y和X轴构建矩阵。Y轴保持不变，X轴会微调以确保正交性。Z轴将被计算得出。输入向量无需归一化
---@param YAxis FVector @Y轴
---@param XAxis FVector @X轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromYX(YAxis, XAxis) end

---使用给定的Y和Z轴构建矩阵。Y轴保持不变，Z轴会微调以确保正交性。X轴将被计算得出。输入向量无需归一化
---@param YAxis FVector @Y轴
---@param ZAxis FVector @Z轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromYZ(YAxis, ZAxis) end

---使用给定的Z和X轴构建矩阵。Z轴保持不变，X轴会微调以确保正交性。Y轴将被计算得出。输入向量无需归一化
---@param ZAxis FVector @Z轴
---@param XAxis FVector @X轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromZX(ZAxis, XAxis) end

---使用给定的Z和Y轴构建矩阵。Z轴保持不变，Y轴会微调以确保正交性。X轴将被计算得出。输入向量无需归一化
---@param ZAxis FVector @Z轴
---@param YAxis FVector @Y轴
---@return FRotator @矩阵
function UGCMathUtility.MakeRotFromZY(ZAxis, YAxis) end

---将Rotator分解为{Roll, Pitch, Yaw}角度值(单位:度)
---@param Rotator FRotator @Rotator
---@return number, number, number @Roll,Pitch,Yaw
function UGCMathUtility.BreakRotator(Rotator) end

---根据位置、旋转和缩放创建Transform
---@param Location FVector @位置
---@param Rotation FRotator @旋转
---@param Scale FVector @缩放
---@return FTransform @transformFVecto
function UGCMathUtility.MakeTransform(Location, Rotation, Scale) end

---将transform分解为{Location, Rotation, Scale}值
---@param Transform FTransform @Transform
---@return FVector, FRotator, FVector @Location,Rotation,Scale
function UGCMathUtility.BreakTransform(Transform) end

---将向量转换为LinearColor
---@param Vector FVector @向量
---@return FLinearColor @LinearColor
function UGCMathUtility.Conv_VectorToLinearColor(Vector) end

---将Color转换为LinearColor
---@param Color FColor @Color
---@return FLinearColor @LinearColor
function UGCMathUtility.Conv_ColorToLinearColor(Color) end

---将LinearColor转换为Color
---@param LinearColor FLinearColor @LinearColor
---@return FColor @Color
function UGCMathUtility.Conv_LinearColorToColor(LinearColor) end

---将向量转换为二维向量
---@param Vector FVector @向量
---@return FVector2D @二维向量
function UGCMathUtility.Conv_VectorToVector2D(Vector) end

---将二维向量转换为向量
---@param Vector2D FVector2D @二维向量
---@return FVector @向量
function UGCMathUtility.Conv_Vector2DToVector(Vector2D) end

---根据HSV分量创建颜色
---@param H number @色相
---@param S number @饱和度
---@param V number @明度
---@param A number @透明度
---@return FLinearColor @Color
function UGCMathUtility.HSVToRGB(H, S, V, A) end

---将颜色分解为单独的HSV分量（以及透明度）
---@param Color FLinearColor @Color
---@return number, number, number, number @H,S,V,A
function UGCMathUtility.RGBToHSV(Color) end

---将HSV线性颜色转换为RGB颜色（其中H在R分量，S在G分量，V在B分量）
---@param HSV FLinearColor @HSV
---@return FLinearColor @RGB
function UGCMathUtility.Conv_HSVToRGB(HSV) end

---将RGB线性颜色转换为HSV（其中H存储在R分量，S存储在G分量，V存储在B分量）
---@param RGB FLinearColor @RGB
---@return FLinearColor @HSV
function UGCMathUtility.Conv_RGBToHSV(RGB) end

---将十六进制颜色字符串转换为RGB
---@param HexString string @十六进制颜色字符串
---@param bSRGB boolean @是否使用sRGB颜色空间
---@return FLinearColor @RGB
function UGCMathUtility.HexToRGB(HexString, bSRGB) end

---将RGB颜色转换为十六进制字符串
---@param RGB FLinearColor @RGB
---@param bSRGB boolean @是否使用sRGB颜色空间
---@return string @十六进制颜色字符串
function UGCMathUtility.RGBToHex(RGB, bSRGB) end

---创建一个使X轴朝向指定方向向量的Rotator
---@param XAxis FVector @X轴
---@return FRotator @Rotator
function UGCMathUtility.Conv_VectorToRotator(XAxis) end

---获取旋转后的X轴方向向量
---@param Rotator FRotator @Rotator
---@return FVector @X轴
function UGCMathUtility.Conv_RotatorToVector(Rotator) end

---使用指定的变换矩阵转换位置坐标
---例如：若T是某物体的变换矩阵，此操作会将局部坐标系的位置转换到世界坐标系
---@param T FTransform @变换矩阵
---@param Location FVector @局部坐标系下的位置
---@return FVector @世界坐标系下的位置
function UGCMathUtility.TransformLocation(T, Location) end

---使用指定的变换矩阵转换方向向量 - 不会改变向量长度
---例如：若T是某物体的变换矩阵，此操作会将局部坐标系的方向向量转换到世界坐标系
---@param T FTransform @变换矩阵
---@param Direction FVector @局部坐标系下的方向向量
---@return FVector @世界坐标系下的方向向量
function UGCMathUtility.TransformDirection(T, Direction) end

---使用指定的变换矩阵转换Rotator
---例如：若T是某物体的变换矩阵，此操作会将局部坐标系的旋转转换到世界坐标系
---@param T FTransform @变换矩阵
---@param Rotation FRotator @局部坐标系下的旋转
---@return FRotator @世界坐标系下的旋转
function UGCMathUtility.TransformRotation(T, Rotation) end

---随机返回 true 或 false，概率各占 50%
---@return boolean @true或false
function UGCMathUtility.RandomBool() end

---根据指定权重获取随机概率结果。权重范围为 0.0 - 1.0
---例如：权重 = 0.6，返回值将有 60% 的概率为 True
---@param Weight number @权重
---@return boolean @true或false
function UGCMathUtility.RandomBoolWithWeight(Weight) end

---返回一个随机数，范围在0到Max - 1之间，每个数出现的概率相同
---@param Max number @最大值
---@return number @随机数
function UGCMathUtility.RandomInteger(Max) end

---返回限制在A和B之间的值(包含A和B)
---@param Value number @值
---@param Min number @最小值
---@param Max number @最大值
---@return number @限制后的值
function UGCMathUtility.Clamp(Value, Min, Max) end

---返回Min和Max之间的随机整数(包含Min和Max)
---@param Min number @最小值
---@param Max number @最大值
---@return number @随机整数
function UGCMathUtility.RandomIntegerInRange(Min, Max) end

---判断给定点是否在盒子内（包括在盒子边界上的点）
---@param Point FVector @要测试的点
---@param BoxOrigin FVector @盒子的原点
---@param BoxExtent FVector @盒子在各个轴上的范围（从原点出发的距离）
---@return boolean @如果点在盒子内则返回true；否则返回false
function UGCMathUtility.IsPointInBox(Point, BoxOrigin, BoxExtent) end

---判断给定点是否在具有特定变换的盒子内（包含边界点)
---@param Point FVector @要测试的点
---@param BoxWorldTransform FTransform @盒子从组件空间到世界空间的变换
---@param BoxExtent FVector @盒子在组件空间中的范围（各轴距原点的距离）
---@return boolean @如果点在盒子内则返回true；否则返回false
function UGCMathUtility.IsPointInBoxWithTransform(Point, BoxWorldTransform, BoxExtent) end

---检查Rotator A 和 B 是否在指定误差范围内相等 (A == B)
---@param A FRotator @旋转量A
---@param B FRotator @旋转量B
---@param ErrorTolerance number @误差范围
---@return boolean @如果旋转量A和B在误差范围内相等则返回true；否则返回false
function UGCMathUtility.EqualRotator(A, B, ErrorTolerance) end

---检查Rotator A 和 B 是否在指定误差范围内不相等 (A != B)
---@param A FRotator @旋转量A
---@param B FRotator @旋转量B
---@param ErrorTolerance number @误差范围
---@return boolean @如果旋转量A和B在误差范围内不相等则返回true；否则返回false
function UGCMathUtility.NotEqualRotator(A, B, ErrorTolerance) end

---组合两个旋转，返回先应用A再应用B的结果旋转
---@param A FRotator @旋转量A
---@param B FRotator @旋转量B
---@return FRotator @先应用A再应用B的结果旋转
function UGCMathUtility.ComposeRotators(A, B) end

---获取该旋转对应的前向、右向和上向三个基准方向向量
---@param Rotator FRotator @旋转量
---@return FVector, FVector, FVector @前向向量,右向向量,上向向量
function UGCMathUtility.GetAxes(Rotator) end

---标准化Rotator
---@param A FRotator @旋转量
---@return FRotator @标准化后的旋转量
function UGCMathUtility.NormalRotator(A) end

---生成一个随机旋转角度，可选择是否包含绕Z轴的随机旋转
---@param bRoll boolean @是否包含绕Z轴的随机旋转
---@return FRotator @随机旋转量
function UGCMathUtility.RandomRotator(bRoll) end

---基于Alpha值在A和B之间线性插值（Alpha=0时返回100%A，Alpha=1时返回100%B）
---@param A FRotator @起始旋转量
---@param B FRotator @目标旋转量
---@param Alpha number @插值比例（0-1）
---@param bShortestPath boolean @是否采用最短路径插值
---@return FRotator @线性插值后的值
function UGCMathUtility.RLerp(A, B, Alpha, bShortestPath) end