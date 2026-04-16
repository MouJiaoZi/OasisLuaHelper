---@meta

---@class FSmartLinkReachedSignature : ULuaMulticastDelegate
FSmartLinkReachedSignature = {}

---添加回调，Func 作为 Key 去重，同 Func 不同 Obj 会覆盖
---@param Callback fun(Obj: any, MovingActor: AActor, DestinationPoint: FVector) @回调函数
---@param Obj any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FSmartLinkReachedSignature:Add(Callback, Obj) end

---触发 Lua 广播
---@param MovingActor AActor
---@param DestinationPoint FVector
function FSmartLinkReachedSignature:Broadcast(MovingActor, DestinationPoint) end


---@class ANavLinkProxy: AActor, INavLinkHostInterface, INavRelevantInterface
---@field PointLinks ULuaArrayHelper<FNavigationLink> @Navigation links (point to point) added to navigation data
---@field SegmentLinks ULuaArrayHelper<FNavigationSegmentLink> @Navigation links (segment to segment) added to navigation data
---@field bSmartLinkIsRelevant boolean @Smart link: toggle relevancy
---@field OnSmartLinkReached FSmartLinkReachedSignature
local ANavLinkProxy = {}

---called when agent reaches smart link during path following, use ResumePathFollowing() to give control back
---@param Agent AActor
---@param Destination FVector
function ANavLinkProxy:ReceiveSmartLinkReached(Agent, Destination) end

---resume normal path following
---@param Agent AActor
function ANavLinkProxy:ResumePathFollowing(Agent) end

---check if smart link is enabled
---@return boolean
function ANavLinkProxy:IsSmartLinkEnabled() end

---change state of smart link
---@param bEnabled boolean
function ANavLinkProxy:SetSmartLinkEnabled(bEnabled) end

---check if any agent is moving through smart link right now
---@return boolean
function ANavLinkProxy:HasMovingAgents() end
