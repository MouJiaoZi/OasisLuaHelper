---@meta

---显示导航路线组件 1.显示玩家到指定点导航路径； 2.路径由多段组成，每段移动至终点后消失；
---@class USTDisplayNavPathComp: UActorComponent, IObjectPoolInterface
---@field bUseQueryFilter boolean
---@field FindPathFilterClass UNavigationQueryFilter
---@field MeshTemplate UStaticMesh
---@field NavStartZOffset number @寻路起点Z偏移
---@field LineWidthScale number @绘制线宽度
---@field LineThicknessScale number @绘制线厚度
---@field LineHeightOffset number @绘制线高度偏移
---@field StopDisplayRange number @停止绘制距离
---@field MaxDisplayTime number @最长绘制时间
---@field DesignedLength number @材质缩放匹配长度
---@field bUseStopDisplayRange boolean @是否使用停止绘制距离
---@field bAsyncCreateSplineMesh boolean @是否异步创建SplineMesh
---@field bFixNavPathHeight boolean @是否修正路径点高度
---@field FixTraceDeep number @是否修正路径点高度
---@field ProcessNumPerFrame number @每帧处理数量
---@field CurProcessIndex number @当前处理点下标
---@field bIsClearCacheSplineMesh boolean @当前处理点下标
---@field OwnerCharacter ASTExtraBaseCharacter
---@field OwnerController ASTExtraPlayerController
---@field CachedSplineMeshes ULuaArrayHelper<USplineMeshComponent>
---@field TempCachedSplineMeshes ULuaArrayHelper<USplineMeshComponent>
---@field PathPoints ULuaArrayHelper<FVector>
---@field CurDisplayElapsedTime number
local USTDisplayNavPathComp = {}

---触发显示
---@param pathEnd FVector
function USTDisplayNavPathComp:OnTriggerDisplayNavPath(pathEnd) end

---请求显示，主控端调用，RPC同步到DS执行
---@param pathEnd FVector
function USTDisplayNavPathComp:RPC_Server_RequireDisplayNavPath(pathEnd) end

---触发显示，由客户端传入开始位置
---@param pathStart FVector
---@param pathEnd FVector
function USTDisplayNavPathComp:OnTriggerDisplayNavPathWithPathStart(pathStart, pathEnd) end

---请求显示，主控端调用，RPC同步到DS执行，由客户端传入开始位置
---@param pathStart FVector
---@param pathEnd FVector
function USTDisplayNavPathComp:RPC_Server_RequireDisplayNavPathWithPathStart(pathStart, pathEnd) end

---开始显示，DS调用，RPC同步到主控端执行
---@param navPath ULuaArrayHelper<FVector>
function USTDisplayNavPathComp:RPC_Client_StartDisplayNavPath(navPath) end

---结束显示所有路径
---@param bInIsClearCacheSplineMesh boolean
function USTDisplayNavPathComp:ClearAndStopDisplayAllPath(bInIsClearCacheSplineMesh) end

---异步创建SplineMesh
function USTDisplayNavPathComp:AsyncCreateSplineMesh() end

---清空临时的SplineMesh
function USTDisplayNavPathComp:ClearTempCacheSplineMesh() end

---@return boolean
function USTDisplayNavPathComp:CheckDisplayNavPath() end
