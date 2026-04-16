---@meta

---@class FNavLinkSceneReachedSignature : ULuaMulticastDelegate
FNavLinkSceneReachedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, ThisComp: UNavLinkSceneComponent, MovingActor: AActor, DestinationPoint: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FNavLinkSceneReachedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param ThisComp UNavLinkSceneComponent
---@param MovingActor AActor
---@param DestinationPoint FVector
function FNavLinkSceneReachedSignature:Broadcast(ThisComp, MovingActor, DestinationPoint) end


---轻量化NavLink组件（继承自USceneComponent） 完整实现ANavLinkProxy的功能，同时支持PointLinks和SmartLink 通过子组件UNavLinkSceneProxyComponent提供编辑器可视化
---@class UNavLinkSceneComponent: USceneComponent, INavRelevantInterface, INavLinkHostInterface, INavLinkCustomInterface
---@field PointLinks ULuaArrayHelper<FNavigationLink> @简单链接列表，Left/Right支持在场景中拖动编辑
---@field bPointLinksProjectHeightIgnoreMyActor boolean @简单链接列表中的点贴地是否忽略自己所属的Actor 一般情况下建议不忽略，因为挂载的Actor可能就是需要链接的Actor
---@field bSmartLinkIsRelevant boolean @是否启用智能链接（Custom Link）；关闭时SmartLink不注册到导航系统，仅PointLinks生效
---@field SmartLinkRelativeStart FVector @智能链接起点（相对于组件位置）
---@field SmartLinkRelativeEnd FVector @智能链接终点（相对于组件位置）
---@field SmartLinkDirection ENavLinkDirection @智能链接方向
---@field EnabledAreaClass UNavArea @智能链接启用时使用的导航区域类
---@field DisabledAreaClass UNavArea @智能链接禁用时使用的导航区域类
---@field bLinkEnabled number @智能链接是否当前启用（可动态切换）
---@field bBroadcastSmartLinkReached boolean @是否广播智能链接到达事件（关闭时AI自动通过链接，不暂停路径跟随）
---@field bNotifyWhenEnabled number @链接切换为启用状态时，是否广播通知附近AI
---@field bNotifyWhenDisabled number @链接切换为禁用状态时，是否广播通知附近AI
---@field BroadcastRadius number @广播半径（0表示不广播）
---@field BroadcastInterval number @广播间隔（0表示单次广播，>0表示持续广播）
---@field BroadcastChannel ECollisionChannel @广播使用的碰撞通道
---@field bCreateBoxObstacle number @是否创建导航障碍物
---@field ObstacleAreaClass UNavArea @障碍物区域类
---@field ObstacleOffset FVector @障碍物偏移（相对于组件位置）
---@field ObstacleExtent FVector @障碍物范围
---@field OnSmartLinkReachedDelegate FNavLinkSceneReachedSignature @当AI到达智能链接时触发的委托
---@field NavLinkUserId number @智能链接的唯一ID
local UNavLinkSceneComponent = {}

---运行时控制SmartLink是否参与导航
---@param bRelevant boolean
function UNavLinkSceneComponent:SetSmartLinkRelevant(bRelevant) end

---动态启用/禁用智能链接（切换AreaClass，不重建NavMesh）
---@param bEnabled boolean
function UNavLinkSceneComponent:SetSmartLinkEnabled(bEnabled) end

---设置SmartLink启用时使用的区域类
---@param AreaClass UNavArea
function UNavLinkSceneComponent:SetSmartLinkEnabledArea(AreaClass) end

---设置SmartLink禁用时使用的区域类
---@param AreaClass UNavArea
function UNavLinkSceneComponent:SetSmartLinkDisabledArea(AreaClass) end

---设置广播参数
---@param Radius number
---@param TraceChannel ECollisionChannel
---@param Interval number
function UNavLinkSceneComponent:SetBroadcastData(Radius, TraceChannel, Interval) end

---检查是否有AI正在通过此链接移动
---@return boolean
function UNavLinkSceneComponent:HasMovingAgents() end

---添加导航障碍物
---@param AreaClass UNavArea
---@param BoxExtent FVector
---@param BoxOffset FVector
function UNavLinkSceneComponent:AddNavigationObstacle(AreaClass, BoxExtent, BoxOffset) end

---清除导航障碍物
function UNavLinkSceneComponent:ClearNavigationObstacle() end

---恢复AI的路径跟随（在自定义移动逻辑完成后调用）
---@param Agent AActor
function UNavLinkSceneComponent:ResumePathFollowing(Agent) end

---获取智能链接的世界空间起点
---@return FVector
function UNavLinkSceneComponent:GetSmartLinkStartPoint() end

---获取智能链接的世界空间终点
---@return FVector
function UNavLinkSceneComponent:GetSmartLinkEndPoint() end
