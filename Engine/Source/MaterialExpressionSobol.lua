---@meta

---@class UMaterialExpressionSobol: UMaterialExpression
---@field Cell FExpressionInput @2D integer cell in 256x256 grid. Uses cell (0,0) if not connected
---@field Index FExpressionInput
---@field Seed FExpressionInput
---@field ConstIndex number
---@field ConstSeed FVector2D
local UMaterialExpressionSobol = {}
