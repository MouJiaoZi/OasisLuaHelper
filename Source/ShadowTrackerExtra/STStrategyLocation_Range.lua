---@meta

---坐标策略：范围内随机
---@class USTStrategyLocation_Range: USTStrategyLocation
---@field bUseNavmesh number
---@field Range number
---@field MaxTryTimes number
---@field bCheckPlayerSight number
---@field VerticalOffset number
---@field PlayerViewDistance number
---@field CollisionChannel ECollisionChannel
---@field MaxLocationTraceHeightZ number
---@field CustomAreas ULuaArrayHelper<FSpawnArea> @自定义屏蔽/包含的区域
local USTStrategyLocation_Range = {}

---Strategy must be activated outside.
---@param Owner ASTSpawnerBase
function USTStrategyLocation_Range:ActivateStrategy(Owner) end

---@param Requester AActor
---@param ReferenceCount number
---@param OutArr ULuaArrayHelper<FSpawnSpotInfo>
---@return boolean
function USTStrategyLocation_Range:GetSpawnLocation(Requester, ReferenceCount, OutArr) end

---@param NewArea FSpawnArea
---@param ForceAdd boolean
function USTStrategyLocation_Range:AddSpawnArea(NewArea, ForceAdd) end
