---@meta

---Class containing definition of a navigation area
---@class UNavArea: UObject
---@field DefaultCost number @travel cost multiplier for path distance
---@field FixedAreaEnteringCost number @entering cost
---@field DrawColor FColor @area color in navigation view
---@field SupportedAgents FNavAgentSelector @restrict area only to specified agents
local UNavArea = {}
