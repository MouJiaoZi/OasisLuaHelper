---@meta

---@class ENavLinkDirection
---@field BothWays number
---@field LeftToRight number
---@field RightToLeft number
ENavLinkDirection = {}


---@class FNavigationLinkBase
---@field LeftProjectHeight number @if greater than 0 nav system will attempt to project navlink's start point on geometry below
---@field MaxFallDownLength number @if greater than 0 nav system will attempt to project navlink's end point on geometry below
---@field Direction ENavLinkDirection
---@field SnapRadius number
---@field SnapHeight number
---@field SupportedAgents FNavAgentSelector @restrict area only to specified agents
---@field bUseSnapHeight number @this is an editor-only property to put descriptions in navlinks setup, to be able to identify it easier
---@field bSnapToCheapestArea number @If set, link will try to snap to cheapest area in given radius
---@field bCustomFlag0 number @custom flag, check DescribeCustomFlags for details
---@field bCustomFlag1 number @custom flag, check DescribeCustomFlags for details
---@field bCustomFlag2 number @custom flag, check DescribeCustomFlags for details
---@field bCustomFlag3 number @custom flag, check DescribeCustomFlags for details
---@field bCustomFlag4 number @custom flag, check DescribeCustomFlags for details
---@field bCustomFlag5 number @custom flag, check DescribeCustomFlags for details
---@field bCustomFlag6 number @custom flag, check DescribeCustomFlags for details
---@field bCustomFlag7 number @custom flag, check DescribeCustomFlags for details
---@field AreaClass UNavArea @Area type of this link (empty = default)
FNavigationLinkBase = {}


---@class FNavigationLink
---@field Left FVector
---@field Right FVector
FNavigationLink = {}


---@class FNavigationSegmentLink
---@field LeftStart FVector
---@field LeftEnd FVector
---@field RightStart FVector
---@field RightEnd FVector
FNavigationSegmentLink = {}


---Class containing definition of a navigation area
---@class UNavLinkDefinition: UObject
---@field Links ULuaArrayHelper<FNavigationLink>
---@field SegmentLinks ULuaArrayHelper<FNavigationSegmentLink>
local UNavLinkDefinition = {}
