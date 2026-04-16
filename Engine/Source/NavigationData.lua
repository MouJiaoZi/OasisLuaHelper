---@meta

---Supported options for runtime navigation data generation
---@class ERuntimeGenerationType
---@field Static number
---@field DynamicModifiersOnly number
---@field Dynamic number
---@field LegacyGeneration number
ERuntimeGenerationType = {}


---@class FSupportedAreaData
---@field AreaClassName string
---@field AreaID number
FSupportedAreaData = {}


---@class FGetBuildTileSortSeedLoctionDelegate : ULuaSingleDelegate
FGetBuildTileSortSeedLoctionDelegate = {}

---绑定回调函数
---@param Callback fun(Obj: any) @回调函数
---@param Obj? any @可选的绑定对象，作为回调第一个参数传入
---@return number @回调引用
function FGetBuildTileSortSeedLoctionDelegate:Bind(Callback, Obj) end

---执行委托
function FGetBuildTileSortSeedLoctionDelegate:Execute() end


---Represents abstract Navigation Data (sub-classed as NavMesh, NavGraph, etc) Used as a common interface for all navigation types handled by NavigationSystem
---@class ANavigationData: AActor
---@field NavDataConfig FNavDataConfig
---@field bEnableDrawing number @if set to true then this navigation data will be drawing itself when requested as part of "show navigation"
---@field bForceRebuildOnLoad number @By default navigation will skip the first update after being successfully loaded setting bForceRebuildOnLoad to false can override this behavior
---@field bCanBeMainNavData number @If set, navigation data can act as default one in navigation system's queries
---@field bCanSpawnOnRebuild number @If set, navigation data will be spawned in persistent level during rebuild if actor doesn't exist
---@field bRebuildAtRuntime_DEPRECATED number @If true, the NavMesh can be dynamically rebuilt at runtime.
---@field RuntimeGeneration ERuntimeGenerationType @Navigation data runtime generation options
---@field ObservedPathsTickInterval number @all observed paths will be processed every ObservedPathsTickInterval seconds
---@field AgentType number @AgentType for quick match
---@field BuildTileSortSeedLocationDelegate FGetBuildTileSortSeedLoctionDelegate
---@field DataVersion number @Navigation data versioning.
---@field SupportedAreas ULuaArrayHelper<FSupportedAreaData> @serialized area class - ID mapping
local ANavigationData = {}
