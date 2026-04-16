---@meta

---@class FInTroubleTeleportConfig
---@field SrcCheckRadius number
---@field DstCheckRadius number
---@field TryFindDstLocNum number
---@field OnlyTeleportToLand boolean
FInTroubleTeleportConfig = {}


---@class UBTService_ClearTrouble: UBTService
---@field bOpenAIClearTrouble boolean
---@field PathFindTestRadius number
---@field UnreachablePointsToBeInTrouble number
---@field TestPathFilterClass UNavigationQueryFilter
---@field TeleportCfg FInTroubleTeleportConfig
---@field bShowDebugPoint boolean
local UBTService_ClearTrouble = {}
