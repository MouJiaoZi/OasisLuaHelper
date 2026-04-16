---@meta

---@class FNavigationFilterArea
---@field AreaClass UNavArea @navigation area class
---@field TravelCostOverride number @override for travel cost
---@field EnteringCostOverride number @override for entering cost
---@field bIsExcluded number @mark as excluded
---@field bOverrideTravelCost number
---@field bOverrideEnteringCost number
FNavigationFilterArea = {}


---@class FNavigationFilterFlags
FNavigationFilterFlags = {}


---Class containing definition of a navigation query filter
---@class UNavigationQueryFilter: UObject
---@field Areas ULuaArrayHelper<FNavigationFilterArea> @list of overrides for navigation areas
---@field IncludeFlags FNavigationFilterFlags @required flags of navigation nodes
---@field ExcludeFlags FNavigationFilterFlags @forbidden flags of navigation nodes
local UNavigationQueryFilter = {}
