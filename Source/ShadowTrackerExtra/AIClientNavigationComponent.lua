---@meta

---@class UAIClientNavigationComponent: UActorComponent
---@field NavDataPathClient string
---@field bOpenNavlinkAbilityClient boolean
---@field NavLinkDataPathClient string
---@field AStarMaxSearchDistanceSqr number
local UAIClientNavigationComponent = {}

---@param StartPoint FVector
---@param EndPoint FVector
---@param PathPoints ULuaArrayHelper<FVector>
function UAIClientNavigationComponent:BPFindPathByDistance(StartPoint, EndPoint, PathPoints) end
