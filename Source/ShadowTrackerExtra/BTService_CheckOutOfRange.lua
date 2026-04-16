---@meta

---检测自己(自定义位置)与参考位置的距离是否超过阈值
---@class UBTService_CheckOutOfRange: UBTService
---@field InReferenceBlackboardKey FBlackboardKeySelector
---@field InCheckRange number
---@field OutRangeBlackboardKey FBlackboardKeySelector
---@field bCustomTestLocation boolean
---@field InCustomTestLocationBlackboardKey FBlackboardKeySelector
local UBTService_CheckOutOfRange = {}
