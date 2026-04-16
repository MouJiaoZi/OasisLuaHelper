---@meta

---将目标点投影在Navmesh上
---@class UBTTask_ProjectPointToNavigation: UBTTaskNode
---@field InPointBlackboardKey FBlackboardKeySelector
---@field OutPointBlackboardKey FBlackboardKeySelector
---@field Extent FVector
---@field bGetRandomLocation boolean
---@field InRandomRadius number
---@field RandomTimes number
local UBTTask_ProjectPointToNavigation = {}
