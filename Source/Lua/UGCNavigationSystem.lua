---@meta

---寻路导航系统接口库
---@class UGCNavigationSystem
UGCNavigationSystem = {}

---同步生成全地图寻路图, 会阻塞服务器运行
---生效范围：服务器
---@param WorldContext UObject @当前世界上下文
---@param AgentName FName @作用Agent的寻路图名称一般为"Mannequin"
function UGCNavigationSystem.BuildNavmesh(WorldContext, AgentName) end

---异步生成全地图寻路图
---生效范围：服务器
---@param WorldContext UObject @当前世界上下文
---@param AgentName FName @作用Agent的寻路图名称一般为"Mannequin"
function UGCNavigationSystem.AsyncBuildNavmesh(WorldContext, AgentName) end

---添加寻路图动态影响区域，标记后可只针对该区域增量更新寻路
---生效范围：服务器
---@param WorldContext UObject @当前世界上下文
---@param AgentName FName @作用Agent的寻路图名称一般为"Mannequin"
---@param InBounds FBox @区域大小
---@return bool @操作结果
function UGCNavigationSystem.AddDynamicNavAffect(WorldContext, AgentName, InBounds) end

---区域异步增量生成寻路图，和AddDynamicNavAffect配合使用
---生效范围：服务器
---@param WorldContext UObject @当前世界上下文
---@param AgentName FName @作用Agent的寻路图名称一般为"Mannequin"
---@return bool @操作结果
function UGCNavigationSystem.AsyncIncrementalBuild(WorldContext, AgentName) end

---投影点到寻路图上的位置
---生效范围：服务器
---@param WorldContext UObject @当前世界上下文
---@param Point FVector @要投影的点
---@param QueryExtent FVector @投影查询范围
---@return bool, FVector @操作结果, @投影位置
function UGCNavigationSystem.ProjectPointToNavigation(WorldContext, Point, QueryExtent) end

---范围获取随机可寻路到达点位
---生效范围：服务器
---@param WorldContext UObject @当前世界上下文
---@param Origin FVector @查找原点
---@param Radius float @查询范围
---@return bool, FVector @操作结果， @可达位置
function UGCNavigationSystem.GetRandomReachablePointInRadius(WorldContext, Origin, Radius) end

---寻路图是否构建
---生效范围：服务器
---@param WorldContext UObject @当前世界上下文
---@return bool @查询结果
function UGCNavigationSystem.IsNavigationBeingBuilt(WorldContext) end

---获取寻路图生成结束Delegate
---生效范围：服务器
---@param WorldContext UObject @当前世界上下文
---@return Delegate @寻路图生成结束Delegate
function UGCNavigationSystem.GetNavigationGenerationFinishedDelegate(WorldContext) end