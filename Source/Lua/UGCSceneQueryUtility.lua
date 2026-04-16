---@meta

---环境检测类型枚举
---@class ESceneQueryType
---@field Teleport number
---@field TraceTeleport number
---@field PlayerPawn number
---@field PlayerHand number
---@field Trigger number
---@field Bullet number
---@field PlayerApplyDamage number
---@field BotApplyDamage number
---@field STEMesh number
---@field PropMesh number
---@field Footstep number
---@field TestHeight number
---@field PickUpVisible number
---@field WheelCollision number
---@field VaultMesh number
---@field AutoAim number
---@field Projectile number
---@field SpreadingBlockerOverlap number
ESceneQueryType = {}


---环境查询工具库
---@class UGCSceneQueryUtility
UGCSceneQueryUtility = {}

---使用射线执行一次环境查询（单个目标）
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @射线起点
---@param End FVector @射线终点
---@param QueryType ESceneQueryType @环境查询类型
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param IgnoreSelf boolean @是否忽略自身（默认值：true）
---@return boolean, FHitResult @查询结果，是否找到
function UGCSceneQueryUtility.QueryByLineSingle(WorldContextObject, Start, End, QueryType, ActorsToIgnore, IgnoreSelf) end

---使用射线执行一次环境查询（多个目标）
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @射线起点
---@param End FVector @射线终点
---@param QueryType ESceneQueryType @环境查询类型
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param IgnoreSelf boolean @是否忽略自身（默认值：true）
---@return boolean, FHitResult[] @查询结果数组，是否找到
function UGCSceneQueryUtility.QueryByLineMulti(WorldContextObject, Start, End, QueryType, ActorsToIgnore, IgnoreSelf) end

---使用球体执行一次环境查询（单个目标）
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @射线起点
---@param End FVector @射线终点
---@param QueryType ESceneQueryType @环境查询类型
---@param Radius number @球体半径（默认值：100）
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param IgnoreSelf boolean @是否忽略自身（默认值：true）
---@return boolean, FHitResult @查询结果数组，是否找到
function UGCSceneQueryUtility.QueryBySphereSingle(WorldContextObject, Start, End, QueryType, Radius, ActorsToIgnore, IgnoreSelf) end

---使用球体执行一次环境查询（多个目标）
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @射线起点
---@param End FVector @射线终点
---@param QueryType ESceneQueryType @环境查询类型
---@param Radius number @球体半径（默认值：100）
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param IgnoreSelf boolean @是否忽略自身（默认值：true）
---@return boolean, FHitResult[] @查询结果数组，是否找到
function UGCSceneQueryUtility.QueryBySphereMulti(WorldContextObject, Start, End, QueryType, Radius, ActorsToIgnore, IgnoreSelf) end

---使用盒子执行一次环境查询（单个目标）
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @射线起点
---@param End FVector @射线终点
---@param QueryType ESceneQueryType @环境查询类型
---@param HalfSize FVector @各轴到盒子中心的距离（默认值：X = 25, Y = 25, Z = 25）
---@param Orientation FRotator @盒子朝向（默认值：Pitch = 0, Yaw = 0, Roll = 0）
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param IgnoreSelf boolean @是否忽略自身（默认值：true）
---@return boolean, FHitResult @查询结果数组，是否找到
function UGCSceneQueryUtility.QueryByBoxSingle(WorldContextObject, Start, End, QueryType, HalfSize, Orientation, ActorsToIgnore, IgnoreSelf) end

---使用盒子执行一次环境查询（多个目标）
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @射线起点
---@param End FVector @射线终点
---@param QueryType ESceneQueryType @环境查询类型
---@param HalfSize FVector @各轴到盒子中心的距离（默认值：X = 25, Y = 25, Z = 25）
---@param Orientation FRotator @盒子朝向（默认值：Pitch = 0, Yaw = 0, Roll = 0）
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param IgnoreSelf boolean @是否忽略自身（默认值：true）
---@return boolean, FHitResult[] @查询结果数组，是否找到
function UGCSceneQueryUtility.QueryByBoxMulti(WorldContextObject, Start, End, QueryType, HalfSize, Orientation, ActorsToIgnore, IgnoreSelf) end

---使用胶囊执行一次环境查询（单个目标）
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @胶囊起点
---@param End FVector @胶囊终点
---@param QueryType ESceneQueryType @环境查询类型
---@param Radius number @胶囊半径（默认值：100）
---@param HalfHeight number @胶囊高度（默认值：50）
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param IgnoreSelf boolean @是否忽略自身（默认值：true）
---@return boolean, FHitResult @查询结果数组，是否找到
function UGCSceneQueryUtility.QueryByCapsuleSingle(WorldContextObject, Start, End, QueryType, Radius, HalfHeight, ActorsToIgnore, IgnoreSelf) end

---使用胶囊执行一次环境查询（多个目标）
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @胶囊起点
---@param End FVector @胶囊终点
---@param QueryType ESceneQueryType @环境查询类型
---@param Radius number @胶囊半径（默认值：100）
---@param HalfHeight number @胶囊高度（默认值：50）
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param IgnoreSelf boolean @是否忽略自身（默认值：true）
---@return boolean, FHitResult[] @查询结果数组，是否找到
function UGCSceneQueryUtility.QueryByCapsuleMulti(WorldContextObject, Start, End, QueryType, Radius, HalfHeight, ActorsToIgnore, IgnoreSelf) end

---使用球体检测重叠的Actor
---@param WorldContextObject UObject @世界上下文对象
---@param Position FVector @球体中心位置
---@param QueryType ESceneQueryType @环境查询类型
---@param Radius number @球体半径（默认值：100）
---@param ActorsToIgnore AActor[] @忽略的 Actor 列表（默认值：空）
---@param ActorClassFilter UClass @Actor类型过滤器（默认值：nil）
---@param OutActors AActor[] @输出的Actor数组（如果为nil则创建新数组）
---@return boolean, AActor[] @是否找到重叠的Actor，重叠的Actor数组
function UGCSceneQueryUtility.QueryOverlapActorsBySphere(WorldContextObject, Position, QueryType, Radius, ActorsToIgnore, ActorClassFilter, OutActors) end

---返回所有跟Box沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @射线检测起点
---@param End FVector @射线检测终点
---@param HalfSize FVector @Box边的半长尺寸
---@param Orientation FRotator @Box的朝向
---@param ObjectTypes EObjectTypeQuery[] @要检测的对象类型数组
---@param bTraceComplex boolean @true为复杂碰撞检测，false为简单碰撞检测
---@param ActorsToIgnore AActor[] @需要忽略的Actor列表
---@param DrawDebugType EDrawDebugTrace @绘制调试类型
---@param OutHits FHitResult[] @存储所有碰撞结果
---@param bIgnoreSelf boolean @是否忽略自身
---@param TraceColor FLinearColor @未命中时的调试线颜色
---@param TraceHitColor FLinearColor @命中时的调试线颜色
---@param DrawTime number @绘制时间
---@return boolean, FHitResult[] @是否检测到碰撞，碰撞结果数组
function UGCSceneQueryUtility.QueryByBoxMultiForObjects(WorldContextObject, Start, End, HalfSize, Orientation, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---在指定位置和半径的球体范围内检测所有重叠的Actor对象
---@param WorldContextObject UObject @世界上下文对象
---@param Finder AActor @检测发起者，不被检测
---@param Origin FVector @球体中心位置
---@param Radius number @球体半径
---@param Channel ECollisionChannel @碰撞通道，默认为ECollisionChannel.ECC_WorldDynamic
---@return FHitResult[] @碰撞结果数组
function UGCSceneQueryUtility.QueryOverlapActorsBySphereWithFinder(WorldContextObject, Finder, Origin, Radius, Channel) end

---检测从起点到终点之间所有阻挡物体的碰撞信息
---@param WorldContextObject UObject @世界上下文对象
---@param Start FVector @射线检测起点
---@param End FVector @射线检测终点
---@param OutHits FHitResult[] @存储所有碰撞结果
---@param IgnoreActors AActor[] @需要忽略的Actor列表
---@param TraceChannels ECollisionChannel[] @需要检测的碰撞通道数组
---@return bool, FHitResult[] @是否检测到碰撞，碰撞结果数组
function UGCSceneQueryUtility.QueryBlocksByChannel(WorldContextObject, Start, End, OutHits, IgnoreActors, TraceChannels) end

---返回所有跟球体沿射线移动扫过区域碰撞物体的碰撞信息，只查询指定对象类型
---@param WorldContextObject UObject @世界上下文
---@param Start FVector @射线检测起点
---@param End FVector @射线检测终点
---@param Radius number @扫描球体的半径
---@param ObjectTypes EObjectTypeQuery[] @对象类型列表
---@param bTraceComplex boolean @true为复杂碰撞检测，false为简单碰撞检测
---@param ActorsToIgnore AActor[] @要忽略的Actor列表
---@param DrawDebugType EDrawDebugTrace @调试模式
---@param OutHits FHitResult[] @碰撞结果列表，按从起点到终点的检测顺序排序。如果存在阻挡性碰撞，它将是列表中的最后一个碰撞结果
---@param bIgnoreSelf boolean @是否忽略自身
---@param TraceColor FLinearColor @未命中时的调试线颜色
---@param TraceHitColor FLinearColor @命中时的调试线颜色
---@param DrawTime number @调试线的持续时间
---@return boolean @如果发生碰撞返回true，否则返回false
function UGCSceneQueryUtility.QueryBySphereMultiForObjects(WorldContextObject, Start, End, Radius, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---返回所有跟射线碰撞的物体的碰撞信息，只查询指定对象类型
---@param WorldContextObject UObject @world上下文对象
---@param Start FVector @射线检测起点
---@param End FVector @射线检测终点
---@param ObjectTypes EObjectTypeQuery[] @对象类型列表
---@param bTraceComplex boolean @true为复杂碰撞检测，false为简单碰撞检测
---@param ActorsToIgnore AActor[] @需要忽略的Actor列表
---@param DrawDebugType EDrawDebugTrace @调试模式
---@param OutHits FHitResult[] @输出的HitResult列表
---@param bIgnoreSelf boolean @是否忽略自身
---@param TraceColor FLinearColor @未命中时的调试线颜色
---@param TraceHitColor FLinearColor @命中时的调试线颜色
---@param DrawTime number @调试线的持续时间
---@return boolean @true为检测到碰撞，false为未检测到碰撞
function UGCSceneQueryUtility.QueryByLineMultiForObjects(WorldContextObject, Start, End, ObjectTypes, bTraceComplex, ActorsToIgnore, DrawDebugType, OutHits, bIgnoreSelf, TraceColor, TraceHitColor, DrawTime) end

---返回指定通道的射线碰撞的物体的碰撞信息
---@param OutHit FHitResult @输出的HitResult
---@param ContextObject UObject @world上下文对象
---@param Start FVector @射线检测起点
---@param End FVector @射线检测终点
---@param IgnoreActors AActor[] @需要忽略的Actor列表
---@param TraceChannel ECollisionChannel @碰撞通道
---@return boolean @true为检测到碰撞，false为未检测到碰撞
function UGCSceneQueryUtility.QueryByLineWithChannel(OutHit, ContextObject, Start, End, IgnoreActors, TraceChannel) end

---获取一个目标位置附近能容纳胶囊体的坐标，以目标位置为中心，八方向向外迭代寻找位置
---@param WorldContextObject UObject @World上下文
---@param SourceLocation FVector @目标位置
---@param CapsuleRotation FRotator @胶囊体的旋转
---@param CapsuleRadius float @胶囊体半径
---@param CapsuleHalfHeight float @胶囊体半高
---@param IgnoreActors AActor[] @需要忽略的Actor列表
---@param DetectObjectTypes EObjectTypeQuery[] @检测的对象类型列表
---@param Iterations int @检测迭代次数
---@param bNearestLocation bool @是否返回最近的位置
---@return FVector @找到的坐标
function UGCSceneQueryUtility.FindPositionToHoldCapsule(WorldContextObject, SourceLocation, CapsuleRotation, CapsuleRadius, CapsuleHalfHeight, IgnoreActors, DetectObjectTypes, Iterations, bNearestLocation) end