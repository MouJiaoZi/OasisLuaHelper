---@meta

---@class FOrderToTeammateArgs
---@field SrcArgBlackboardKey FBlackboardKeySelector
---@field DstArgBlackboardKey FBlackboardKeySelector
FOrderToTeammateArgs = {}


---@class UBTTask_OrderToTeammate: UBTTaskNode
---@field InOrderBlackboardKey FBlackboardKeySelector
---@field InOrderValue string
---@field InOrderArgs ULuaArrayHelper<FOrderToTeammateArgs>
local UBTTask_OrderToTeammate = {}
