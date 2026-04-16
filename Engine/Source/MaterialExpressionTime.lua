---@meta

---@class UMaterialExpressionTime: UMaterialExpression
---@field bIgnorePause number @This time continues advancing regardless of whether the game is paused.
---@field bOverride_Period number @Enables or disables the Period value.
---@field Period number @Time will loop around once it gets to Period.
local UMaterialExpressionTime = {}
