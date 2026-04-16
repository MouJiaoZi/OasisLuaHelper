---@meta

---名称：MiniMap与游戏逻辑中间层，游戏层派生该类去实现 作用：数据通过该层进行桥接，使MiniMap与游戏逻辑相独立 位置：仅作用于客户端，考虑挂在客户端Controller上 交互：与Lua通过事件交互更新数据，频繁变更的数据考虑到性能问题，不采用事件交互，C++层修改，Lua层直接获取并检测是否有变化 刷新：派生类中，小地图上每种要显示的图标提供一个刷新函数，在函数里填充所需要的逻辑层数据, 刷新函数暂时在Tick调用，@TODO：提供事件绑定机制
---@class UCommMiniMapBridge: UObject
---@field MiniMapItemTemplates ULuaMapHelper<number, FMiniMapItemTemplateDetail>
---@field MiniMapItemConfig ULuaArrayHelper<FMiniMapShownItemConfig>
---@field HasMapStandardPoint boolean
local UCommMiniMapBridge = {}

---@param UniqueID number
---@param InRealTimeInfo FMiniMapRealTimeInfo
function UCommMiniMapBridge:PostRefreshEvent(UniqueID, InRealTimeInfo) end

---@param UniqueID number
---@param EventInfo FCustomEventInfo
function UCommMiniMapBridge:PostUpdateEvent(UniqueID, EventInfo) end

---@param UniqueID number
---@param TemplateId number
---@param ItemType ECommMiniMapItemType
---@return boolean
function UCommMiniMapBridge:AddMiniMapItem(UniqueID, TemplateId, ItemType) end

---@param UniqueID number
---@return boolean
function UCommMiniMapBridge:RemoveMiniMapItem(UniqueID) end

---@param NewItem UCommMiniMapItemBase
---@param Location FVector
function UCommMiniMapBridge:AddOrUpdateExternalCreatedItem(NewItem, Location) end

---@param NeedRemovedItem UCommMiniMapItemBase
function UCommMiniMapBridge:RemoveExternalCreatedItem(NeedRemovedItem) end
